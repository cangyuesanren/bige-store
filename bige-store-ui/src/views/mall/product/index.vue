<template>
  <div class="app-container">
    <el-form :model="queryParams" v-if="!open" ref="queryForm" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="商品名" prop="productName">
        <el-input
          v-model="queryParams.productName"
          placeholder="请输入商品名"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="品牌" prop="brandName">
        <el-input
          v-model="queryParams.brandName"
          placeholder="请输入品牌"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="标签" prop="labelName">
        <el-input
          v-model="queryParams.labelName"
          placeholder="请输入标签"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="商品品类" prop="firstCategoryId">
        <!--<el-input
          v-model="queryParams.firstCategoryId"
          placeholder="请输入一级品类"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />-->
        <el-cascader
          v-model="categoryValue.queryValue"
          :options="categoryTree"
          :props="{label:'categoryName',value:'categoryId'}"
          @change="handleQuerySort"
          placeholder="请选择品类信息"
          filterable
        ></el-cascader>
      </el-form-item>
      <!--<el-form-item label="二级品类" prop="secondCategoryId">
        <el-input
          v-model="queryParams.secondCategoryId"
          placeholder="请输入二级品类"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="三级品类" prop="thirdCategoryId">
        <el-input
          v-model="queryParams.thirdCategoryId"
          placeholder="请输入三级品类"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>-->
      <!--<el-form-item label="供应商" prop="supplierId">
        <el-input
          v-model="queryParams.supplierId"
          placeholder="请输入供应商"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>-->



      <el-form-item label="邮费类型" prop="postage">

        <el-select v-model="queryParams.postage" placeholder="请选择邮费类型" clearable size="small">
          <el-option label="包邮" value="0" />
          <el-option label="自费" value="1" />
        </el-select>
      </el-form-item>
      <el-form-item label="状态" prop="status">
        <el-select v-model="queryParams.status" placeholder="请选择状态" clearable size="small">
          <el-option label="上架" value="1" />
          <el-option label="下架" value="0" />
        </el-select>
      </el-form-item>
      <el-form-item label="审核状态" prop="auditStatus">
        <el-select v-model="queryParams.auditStatus" placeholder="请选择审核状态" clearable size="small">
          <el-option label="审核中" value="0" />
          <el-option label="通过" value="1" />
          <el-option label="不通过" value="2" />
        </el-select>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row v-if="!open" :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['mall:product:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['mall:product:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['mall:product:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['mall:product:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" v-if="!open" :data="productList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <!--<el-table-column label="商品Id" align="center" prop="productId" />-->
      <el-table-column label="序号" align="center" prop="productId" >
        <template slot-scope="scope">
          {{ scope.$index + 1 +(queryParams.pageNum-1)*queryParams.pageSize}}
        </template>
      </el-table-column>
      <el-table-column label="商品名" align="center" prop="productName" />
      <el-table-column label="商品首图" align="center" prop="firstImg" >
        <template slot-scope="scope">
          <el-image :src="scope.row.firstImg"></el-image>
        </template>
      </el-table-column>
      <el-table-column label="品牌" align="center" prop="brandId" >
        <template slot-scope="scope">
          {{brandNames[scope.row.brandId]}}
        </template>
      </el-table-column>
      <el-table-column label="标签" align="center" prop="labelId" >
        <template slot-scope="scope">
          {{labelNames[scope.row.labelId]}}
        </template>
      </el-table-column>
      <!--<el-table-column label="邮费模板" align="center" prop="templateId" />-->
      <el-table-column label="商品品类" align="center" prop="firstCategoryId" >
        <template slot-scope="scope">
          {{categoryNames[scope.row.firstCategoryId]}}/
          {{categoryNames[scope.row.secondCategoryId]}}/
          {{categoryNames[scope.row.thirdCategoryId]}}
        </template>
      </el-table-column>
      <!--<el-table-column label="二级品类" align="center" prop="secondCategoryId" />
      <el-table-column label="三级品类" align="center" prop="thirdCategoryId" />-->
      <!--<el-table-column label="供应商" align="center" prop="supplierId" />-->
      <el-table-column label="真实销量" align="center" prop="saleNum" />
      <el-table-column label="虚拟销量" align="center" prop="virtualNum" />
      <!--<el-table-column label="视频链接" align="center" prop="productVideo" />-->
      <el-table-column label="库存" align="center" prop="totalNum" />
      <el-table-column label="商品价格" align="center" prop="salePrice" />
      <el-table-column label="划线价" align="center" prop="linePrice" />
      <!--<el-table-column label="发货地" align="center" prop="origin" />-->
      <el-table-column label="邮费类型" align="center" prop="postage" >
        <template slot-scope="scope">
          {{scope.row.postage==1?"自费":"包邮"}}
        </template>
      </el-table-column>
      <el-table-column label="状态" align="center" prop="status" >
        <template slot-scope="scope">
          {{scope.row.postage==1?"上架":"下架"}}
        </template>
      </el-table-column>
      <el-table-column label="审核状态" align="center" prop="auditStatus" >
        <template slot-scope="scope">
          {{scope.row.auditStatus==0?"审核中":scope.row.auditStatus==1?"通过":"不通过"}}
        </template>
      </el-table-column>
      <el-table-column label="发票" align="center" prop="invoiceStatus" >
        <template slot-scope="scope">
          {{scope.row.postage==1?"不可开":"可开"}}
        </template>
      </el-table-column>
      <!--<el-table-column label="详情" align="center" prop="details" />-->
      <el-table-column label="操作" align="center" width="200" fixed="right" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['mall:product:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['mall:product:remove']"
          >删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-if="!open"
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改商品对话框 -->
    <div class="productDetai"  v-if="open" >
      <div  class="add-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
      <h3>{{title}}</h3>
      <h4>1.基础信息</h4>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="商品名" prop="productName">
          <el-input v-model="form.productName" placeholder="请输入商品名" />
        </el-form-item>
        <el-form-item label="商品图" class="product-img-list" prop="productImgs" >
          <img-upload-drag class="product-img" v-model="item.productImg" v-for="(item,inddex) in form.productImgs" :key="inddex"></img-upload-drag>
        </el-form-item>
        <!--<el-form-item label="视频链接" prop="productVideo">
          <el-input v-model="form.productVideo" placeholder="请输入视频链接" />
        </el-form-item>-->
        <!--<el-form-item label="邮费模板" prop="templateId">
          <el-input v-model="form.templateId" placeholder="请输入邮费模板" />
        </el-form-item>-->
        <h4>2.规格信息</h4>
        <el-form-item label="商品品类" prop="thirdCategoryId">
          <!--<el-input v-model="form.firstCategoryId" placeholder="请输入一级品类" />-->
          <el-cascader
            v-model="categoryValue.formValue"
            :options="categoryTree"
            :props="{label:'categoryName',value:'categoryId'}"
            @change="handleSort"
            placeholder="请选择品类信息"
            filterable
          ></el-cascader>
        </el-form-item>
       <!-- <el-form-item label="二级品类" prop="secondCategoryId">
          <el-input v-model="form.secondCategoryId" placeholder="请输入二级品类" />
        </el-form-item>
        <el-form-item label="三级品类" prop="thirdCategoryId">
          <el-input v-model="form.thirdCategoryId" placeholder="请输入三级品类" />
        </el-form-item>-->
        <el-form-item label="虚拟销量" prop="virtualNum">
          <el-input v-model="form.virtualNum" type="number" placeholder="请输入虚拟销量" />
        </el-form-item>
        <el-form-item label="商品规格" prop="productStandards">
          <div style="color: red;" v-if="!standardsAttr.length">请添加商品规格</div>
          <div v-for="(item1,index) in standardsAttr" :key="index"  >
            <div >
              <el-row :gutter="20">
                {{item1.standardName}}
                <i class="el-icon-circle-close" @click="delStandard(index)"></i>
              </el-row>
              <el-row  :gutter="20" v-if="item1.standardAct">
                <el-col :span="2" class="standard-value" v-for="(item2,index2) in item1.standardValue" :key="index2">
                  <el-input v-if="index2==item1.standardValue.length-1" @blur="standardValueBlue(item1,item2,index2)" v-model="item2.value"></el-input>
                  <el-tag v-else :key="index2" closable @close="delStandardValue(item1,index2)">
                    {{item2.value}}
                  </el-tag>
                </el-col>

              </el-row>
              <el-row  :gutter="20" v-else>
                <el-col :span="2" class="standard-value" v-for="(item2,index2) in item1.standardValue" :key="index2">
                  <el-tag  :key="index2" closable @close="delStandardValue(item1,index2)">
                    {{item2.value}}
                  </el-tag>
                </el-col>
                <el-col :span="2">
                  <el-button @click="addStandardValue(item1)">新增</el-button>
                </el-col>
              </el-row>
            </div>
          </div>
        </el-form-item>
        <div v-if="standardNew.newstatus">
          <el-row :gutter="20" >
            <el-col :span="6"><el-form-item label="规格名" ><el-input v-model="standardNew.key"></el-input> </el-form-item> </el-col>
            <el-col :span="6"><el-form-item label="规格值" ><el-input v-model="standardNew.value"></el-input> </el-form-item> </el-col>
          </el-row>
          <el-row :gutter="20" >
            <el-col :span="4" style="margin-left: 25px;margin-bottom: 15px"><el-button @click="standardsCommit">确认</el-button></el-col>
            <el-col :span="4"><el-button @click="standardsCancel">取消</el-button></el-col>
          </el-row>
        </div>
        <el-form-item label="" v-if="standardsAttr.length<3" prop="productStandards">
          <!--<el-input v-model="form.virtualNum" type="number" placeholder="请输入虚拟销量" />-->
          <el-button @click="addStandard">添加新规格</el-button>
        </el-form-item>
        <!--<el-form-item label="供应商" prop="supplierId">
          <el-input v-model="form.supplierId" placeholder="请输入供应商" />
        </el-form-item>-->
        <!--<el-form-item label="真实销量" prop="saleNum">
          <el-input v-model="form.saleNum" placeholder="请输入真实销量" />
        </el-form-item>-->
        <el-form-item label="商品属性" v-if="standardsAttr.length" prop="productGoods">
          <!--<el-input v-model="form.productVideo" placeholder="请输入视频链接" />-->
          <el-table v-loading="loading"  :data="goodsTable" >
            <el-table-column :label="item.title" align="center" :prop="keys"
              v-for="(item,keys) in standardsTitle" :key="keys"
            >
              <template slot-scope="scope">
                {{scope.row[keys]}}
              </template>
            </el-table-column>
            <el-table-column :label="item.title" align="center" :prop="keys"
                v-for="(item,keys) in goodsTitle" :key="keys" width="100"

            >
              <template slot-scope="scope">
                <template v-if="item.title=='ID'||item.title=='图片'" >
                  <el-input disabled v-if="item.title=='ID'" v-model="scope.row[keys]"></el-input>
                  <img-upload v-else v-model="scope.row[keys]" class="sku_upload"></img-upload>
                </template>
                <template slot-scope="scope" v-else>
                  <el-input v-model="scope.row[keys]"></el-input>
                </template>
              </template>

            </el-table-column>

            <el-table-column label="操作" align="center">
              <template slot-scope="scope" >
                删除
              </template>
            </el-table-column>
          </el-table>

        </el-form-item>
        <h4>3.其他信息>></h4>
        <el-form-item label="发货地" prop="origin">
          <el-input v-model="form.origin" placeholder="请输入发货地" />
        </el-form-item>
        <el-form-item label="邮费类型" prop="postage">
          <el-radio-group v-model="form.postage">
            <el-radio label="0">包邮</el-radio>
            <el-radio label="1">自费</el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item label="商品品牌" prop="brandId">
          <el-select v-model="form.brandId" placeholder="请选择品牌" clearable size="small">
            <el-option :label="item.brandName" :value="item.brandId" v-for="(item,index) of brandList" :key="index" />
          </el-select>
        </el-form-item>
        <el-form-item label="商品标签" prop="labelId">
          <el-select v-model="form.labelId" placeholder="请选择标签" clearable size="small">
            <el-option :label="item.labelName" :value="item.labelId" v-for="(item,index) of LabelList" :key="index" />
          </el-select>
        </el-form-item>


        <el-form-item label="可开发票">
          <el-radio-group v-model="form.invoiceStatus">
            <el-radio label="0">可开</el-radio>
            <el-radio label="1">不可开</el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item label="商品详情" prop="productDetails">
          <!--<el-input v-model="form.details" type="textarea" placeholder="请输入内容" />-->
          <Editor
            v-model="form.productDetails"
            style="width: 800px; min-height: 450px"
          />
        </el-form-item>
      </el-form>
      <div  class="add-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </div>
  </div>
</template>

<script>
import { listProduct, getProduct, delProduct, addProduct, updateProduct, exportProduct } from "@/api/mall/product";
import { listLabel, } from "@/api/mall/label";
import { listBrand, } from "@/api/mall/brand";
import { listTreeCategory, } from "@/api/mall/category";

import Editor from "@/components/Editor";
import imgUpload from "@/components/upload/imgUpload";
import imgUploadDrag from "@/components/upload/imgUploadDrag";

const goodsTitle = {
  goodsId: {
    title: "ID",
  },
  goodsImg: {
    title: "图片",
  },
  salePrice: {
    title: "销售价",
  },
  costPrice: {
    title: "成本价",
  },
  linePrice: {
    title: "划线价",
  },
  totalNum: {
    title: "库存量",
  },
  weight: {
    title: "重量(KG）",
  },
  volume: {
    title: "体积(m³)",
  },

};
export default {
  name: "Product",
  components: {
    imgUploadDrag, imgUpload, Editor
  },
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 商品表格数据
      productList: [],
      labelList: [],        //商品标签
      labelNames: {},       //商品标签名
      brandList: [],        //商品品牌
      brandNames: {},       //商品品牌名
      categoryTree: [],     //树形品类表
      categoryNames: {},     //品类名

      categoryValue:{       //选中品类
        queryValue: [],
        formValue: [],
      },
      standardsAttr: [],                                          //规格属性
      standardNew: {key:null,value:null,newstatus: false},        //添加新规格

      standardsTitle: {},             //商品属性规格名表头
      goodsTitle: goodsTitle,         //商品属性表头
      goodsTable: [],                 //商品属性表
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        productName: null,
        firstImg: null,
        brandId: null,
        labelId: null,
        templateId: null,
        firstCategoryId: null,
        secondCategoryId: null,
        thirdCategoryId: null,
        supplierId: null,
        saleNum: null,
        virtualNum: null,
        productVideo: null,
        totalNum: null,
        salePrice: null,
        linePrice: null,
        origin: null,
        postage: null,
        status: null,
        auditStatus: null,
        invoiceStatus: null,
        details: null
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        firstCategoryId: [
          { required: true, message: "一级品类不能为空", trigger: "blur" }
        ],
        secondCategoryId: [
          { required: true, message: "二级品类不能为空", trigger: "blur" }
        ],
        thirdCategoryId: [
          { required: true, message: "商品品类不能为空", trigger: "blur" }
        ],
        postage: [
          { required: true, message: "邮费类型不能为空", trigger: "blur" }
        ],

      }
    };
  },
  created() {
    this.getList();
    this.getLabelList();
    this.getBrandList();
    this.getCategoryTree();
  },
  methods: {
    /** 查询商品列表 */
    getList() {
      this.loading = true;
      listProduct(this.queryParams).then(response => {
        this.productList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },

    getLabelList(){         //获取商品标签表
      listLabel().then(response => {
        this.LabelList = response.rows;
        for (let item of this.LabelList){
          this.$set(this.labelNames, item.labelId, item.labelName)
        }
      })
    },

    getBrandList(){         //获取商品品牌表
      listBrand().then(response => {
        this.brandList = response.rows;
        for (let item of this.brandList){
          this.$set(this.brandNames, item.brandId, item.brandName)
        }
      })
    },

    getCategoryTree(){      //获取商品树形品类
      listTreeCategory().then(response => {
        this.categoryTree = response.data
        for (let item of this.categoryTree){
          this.$set(this.categoryNames,item.categoryId,item.categoryName)
          for (let item2 of item.children){
            this.$set(this.categoryNames,item2.categoryId,item2.categoryName)
            for (let item3 of item2.children){
              this.$set(this.categoryNames,item3.categoryId,item3.categoryName)
              item3.children = null;
            }
          }
        }
      })
    },

    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        productId: null,
        productName: null,
        productImgs: [
          {
            productImg: "",
          },
          {
            productImg: "",
          },
          {
            productImg: "",
          },
          {
            productImg: "",
          },

        ],
        productStandards: [],
        productGoods: [],
        firstImg: null,
        brandId: null,
        labelId: null,
        templateId: null,
        firstCategoryId: null,
        secondCategoryId: null,
        thirdCategoryId: null,
        supplierId: null,
        saleNum: null,
        virtualNum: null,
        productVideo: null,
        totalNum: null,
        salePrice: null,
        linePrice: null,
        origin: null,
        postage: null,
        status: "0",
        auditStatus: "0",
        invoiceStatus: "0",
        createTime: null,
        createBy: null,
        updateTime: null,
        details: null
      };
      this.categoryValue.queryValue = [];
      this.categoryValue.formValue = [];
      this.standardsAttr= [];
      this.goodsTable = [];
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.queryParams.firstCategoryId = null;
      this.queryParams.secondCategoryId = null;
      this.queryParams.thirdCategoryId = null;
      this.categoryValue.queryValue = [];
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.productId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加商品";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const productId = row.productId || this.ids
      getProduct(productId).then(response => {
        this.form = response.data;

        let standardsAttr = [];
        for (let i = this.form.productImgs.length; i < 4; i++){
          let imgObj ={productImg: ""}
          this.form.productImgs.push(imgObj);
        }
        for (let item of this.form.productStandards){
          let standard = {
            standardName: item.standardName,
            standardValue: JSON.parse(item.standardValue),
          };
          standardsAttr.push(standard);
        }
        this.standardsAttr = standardsAttr;
        this.goodsTable = [];
        for (let item of this.form.productGoods){
          let goods = {}
          goods = Object.assign(goods,item);
          goods.standardJson = JSON.parse(goods.standardJson);
        }
        this.categoryValue.formValue = [this.form.firstCategoryId,this.form.secondCategoryId,this.form.thirdCategoryId];
        this.open = true;
        this.title = "修改商品";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.form.productStandards = [];
      this.form.productGoods = [];
      for (let item of this.standardsAttr){
        let standards = {
          standardName: item.standardName,
          standardValue: JSON.stringify(item.standardValue)
        };
        this.form.productStandards.push(standards);
      }
      for (let item of this.goodsTable){
        let goodsObj = {};
        goodsObj = Object.assign(goodsObj,item);
        goodsObj.standardJson = JSON.stringify(goodsObj.standardJson);
        this.form.productGoods.push(goodsObj);
      }
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.productId != null) {
            updateProduct(this.form).then(response => {
              this.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addProduct(this.form).then(response => {
              this.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const productIds = row.productId || this.ids;
      this.$confirm('是否确认删除商品编号为"' + productIds + '"的数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
          return delProduct(productIds);
        }).then(() => {
          this.getList();
          this.msgSuccess("删除成功");
        })
    },
    /** 导出按钮操作 */
    handleExport() {
      const queryParams = this.queryParams;
      this.$confirm('是否确认导出所有商品数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
          return exportProduct(queryParams);
        }).then(response => {
          this.download(response.msg);
        })
    },
    handleSort(values){       //  选中品类
      this.form.firstCategoryId = values[0]
      this.form.secondCategoryId = values[1]
      this.form.thirdCategoryId = values[2]
    },
    handleQuerySort(values){
      this.queryParams.firstCategoryId = values[0]
      this.queryParams.secondCategoryId = values[1]
      this.queryParams.thirdCategoryId = values[2]
    },
    addStandard(){

      this.standardNew.key = null;
      this.standardNew.value = null;
      this.standardNew.newstatus = true;
    },
    standardsCommit(){      //确认添加新规格
      this.standardNew.newstatus = false;
      if(!this.standardNew.key || !this.standardNew.value){
        this.msgError("请输入值");
        return;
      }
      let standard = {
        standardName: this.standardNew.key,
        standardValue: [{value: this.standardNew.value}],
        standardAct: false,
      };
      this.standardNew.key = null;
      this.standardNew.value = null;
      this.standardsAttr.push(standard);

    },
    standardsCancel(){      //取消添加新规格
      this.standardNew.newstatus = false;
    },
    addStandardValue(option){       //
      let newValue = {
        value: null,
      }
      option.standardValue.push(newValue);
      //option.standardAct = true
      this.$set(option,"standardAct",true)
    },
    standardValueBlue(option,opValue,index){      //规格值确认
      option.standardAct = false
      if(!opValue.value){
        option.standardValue.splice(index,1);
      }
      console.log(option.standardAct);
      console.log("option.standardAct");
    },
    delStandard(index){        //删除规格值
      this.standardsAttr.splice(index,1);
    },
    delStandardValue(option,index){         //删除规格值
      option.standardValue.splice(index,1)
    },
    setGoodsArr(){
      let list = []
      this.standardsAttr.forEach((item,index) => {
        let keys = "key" + index;
        let ob = {title:item.standardName}
        this.$set(this.standardsTitle,keys,ob);
        list = this.descartes(list,item.standardValue,keys,item.standardName);
      })
      //判断是否生成新的商品规格表
      let skuRefresh = true;

      if(this.form.productStandards.length){
        let standardsAttr = JSON.stringify(this.standardsAttr);
        let productStandards = [];
        for (let item of this.form.productStandards){
          let standard = {
            standardName: item.standardName,
            standardValue: JSON.parse(item.standardValue)
          }
          console.log(3)
          productStandards.push(standard);
        }
        let productStandardsJson = JSON.stringify(productStandards);
        skuRefresh = (standardsAttr != productStandardsJson);
      }
      if(skuRefresh){
        for (let item of list){
          for (let title in this.goodsTitle){
            this.$set(item,title,"");
          }
        }
        let list2 = [];
        list2 = list2.concat(this.form.productGoods)
        for (let item1 of this.form.productGoods){
          let standardJson = JSON.parse(item1.standardJson);
          standardJson.forEach((item2,index)=> {
            this.$set(item1,"key"+index,item2.value)
          })
          let itemGoods = {};
          itemGoods = Object.assign(itemGoods,item1);
          itemGoods.standardJson = standardJson;
          list.forEach((item2,index) => {
            let item2StandardJson = JSON.stringify(item2.standardJson);
            if (item2StandardJson == item1.standardJson){
              list.splice(index,1,itemGoods);
            }
          })
          //item1.standardJson = standardJson;
        }
      }else {
        list = [];
        for (let item1 of this.form.productGoods){
          let standardJson = JSON.parse(item1.standardJson);
          standardJson.forEach((item2,index)=> {
            this.$set(item1,"key"+index,item2.value)
          })
          let goodsItem = {}
          goodsItem = Object.assign(goodsItem,item1);
          goodsItem.standardJson = standardJson;
          list.push(goodsItem);
        }
      }
      this.goodsTable = list;

    },
    //规格表设置
    descartes(list1,list2,keys,key){
      let list3 = [];
      if (list1.length==0){
        for (let item1 of list2){
          this.standardsTitle
          let oc = {};
          let standardJson = [{key:key,value:item1.value}];
          oc['standardJson'] = standardJson
          oc[keys] = item1.value
          list3.push(oc)
        }
      }else {
        for (let item1 of list1){
          let item1StandardJson = item1.standardJson
          for(let item2 of list2){
            let oc = {};
            let standardJson = [{key: key,value: item2.value}];
            oc[keys] = item2.value;
            oc = Object.assign(oc,item1);
            standardJson = item1StandardJson.concat(standardJson);
            oc.standardJson = standardJson;
            list3.push(oc);
          }
        }
      }
      return list3;
    },
  },
  watch: {
    standardsAttr:{
      handler(val,OldVal){
        this.setGoodsArr()
      },
      deep: true,
    }
  },
};
</script>
<style lang="scss">
  .productDetai{
    width: 900px;
    margin: auto;
    margin-bottom: 15px;
    .add-footer{
      text-align: right;

    }
    .el-form{

      .product-img-list{
        .el-form-item__content{
          display: flex;
          .product-img{
            margin: 0 8px;
          }
        }
      }
      .el-cascader{
        width: 100%;
      }
      .el-select{
        width: 100%;
      }
    }
  }
</style>
