<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="商品名" prop="productName">
        <el-input
          v-model="queryParams.productName"
          placeholder="请输入商品名"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="商品首图" prop="firstImg">
        <el-input
          v-model="queryParams.firstImg"
          placeholder="请输入商品首图"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="品牌" prop="brandId">
        <el-input
          v-model="queryParams.brandId"
          placeholder="请输入品牌"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="标签" prop="labelId">
        <el-input
          v-model="queryParams.labelId"
          placeholder="请输入标签"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="邮费模板" prop="templateId">
        <el-input
          v-model="queryParams.templateId"
          placeholder="请输入邮费模板"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="一级品类" prop="firstCategoryId">
        <el-input
          v-model="queryParams.firstCategoryId"
          placeholder="请输入一级品类"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="二级品类" prop="secondCategoryId">
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
      </el-form-item>
      <el-form-item label="供应商" prop="supplierId">
        <el-input
          v-model="queryParams.supplierId"
          placeholder="请输入供应商"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="真实销量" prop="saleNum">
        <el-input
          v-model="queryParams.saleNum"
          placeholder="请输入真实销量"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="虚拟销量" prop="virtualNum">
        <el-input
          v-model="queryParams.virtualNum"
          placeholder="请输入虚拟销量"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="视频链接" prop="productVideo">
        <el-input
          v-model="queryParams.productVideo"
          placeholder="请输入视频链接"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="库存" prop="totalNum">
        <el-input
          v-model="queryParams.totalNum"
          placeholder="请输入库存"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="商品价格" prop="salePrice">
        <el-input
          v-model="queryParams.salePrice"
          placeholder="请输入商品价格"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="划线价" prop="linePrice">
        <el-input
          v-model="queryParams.linePrice"
          placeholder="请输入划线价"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="发货地" prop="origin">
        <el-input
          v-model="queryParams.origin"
          placeholder="请输入发货地"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="邮费类型 0:包邮，1：自费" prop="postage">
        <el-input
          v-model="queryParams.postage"
          placeholder="请输入邮费类型 0:包邮，1：自费"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="状态 0上架 1下架" prop="status">
        <el-select v-model="queryParams.status" placeholder="请选择状态 0上架 1下架" clearable size="small">
          <el-option label="请选择字典生成" value="" />
        </el-select>
      </el-form-item>
      <el-form-item label="审核状态 0审核中 1通过 2不通过" prop="auditStatus">
        <el-select v-model="queryParams.auditStatus" placeholder="请选择审核状态 0审核中 1通过 2不通过" clearable size="small">
          <el-option label="请选择字典生成" value="" />
        </el-select>
      </el-form-item>
      <el-form-item label="发票  0：可开，1：不可开" prop="invoiceStatus">
        <el-select v-model="queryParams.invoiceStatus" placeholder="请选择发票  0：可开，1：不可开" clearable size="small">
          <el-option label="请选择字典生成" value="" />
        </el-select>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
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

    <el-table v-loading="loading" :data="productList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="商品Id" align="center" prop="productId" />
      <el-table-column label="商品名" align="center" prop="productName" />
      <el-table-column label="商品首图" align="center" prop="firstImg" />
      <el-table-column label="品牌" align="center" prop="brandId" />
      <el-table-column label="标签" align="center" prop="labelId" />
      <el-table-column label="邮费模板" align="center" prop="templateId" />
      <el-table-column label="一级品类" align="center" prop="firstCategoryId" />
      <el-table-column label="二级品类" align="center" prop="secondCategoryId" />
      <el-table-column label="三级品类" align="center" prop="thirdCategoryId" />
      <el-table-column label="供应商" align="center" prop="supplierId" />
      <el-table-column label="真实销量" align="center" prop="saleNum" />
      <el-table-column label="虚拟销量" align="center" prop="virtualNum" />
      <el-table-column label="视频链接" align="center" prop="productVideo" />
      <el-table-column label="库存" align="center" prop="totalNum" />
      <el-table-column label="商品价格" align="center" prop="salePrice" />
      <el-table-column label="划线价" align="center" prop="linePrice" />
      <el-table-column label="发货地" align="center" prop="origin" />
      <el-table-column label="邮费类型 0:包邮，1：自费" align="center" prop="postage" />
      <el-table-column label="状态 0上架 1下架" align="center" prop="status" />
      <el-table-column label="审核状态 0审核中 1通过 2不通过" align="center" prop="auditStatus" />
      <el-table-column label="发票  0：可开，1：不可开" align="center" prop="invoiceStatus" />
      <el-table-column label="详情" align="center" prop="details" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
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
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改商品对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="商品名" prop="productName">
          <el-input v-model="form.productName" placeholder="请输入商品名" />
        </el-form-item>
        <el-form-item label="商品首图" prop="firstImg">
          <el-input v-model="form.firstImg" placeholder="请输入商品首图" />
        </el-form-item>
        <el-form-item label="品牌" prop="brandId">
          <el-input v-model="form.brandId" placeholder="请输入品牌" />
        </el-form-item>
        <el-form-item label="标签" prop="labelId">
          <el-input v-model="form.labelId" placeholder="请输入标签" />
        </el-form-item>
        <el-form-item label="邮费模板" prop="templateId">
          <el-input v-model="form.templateId" placeholder="请输入邮费模板" />
        </el-form-item>
        <el-form-item label="一级品类" prop="firstCategoryId">
          <el-input v-model="form.firstCategoryId" placeholder="请输入一级品类" />
        </el-form-item>
        <el-form-item label="二级品类" prop="secondCategoryId">
          <el-input v-model="form.secondCategoryId" placeholder="请输入二级品类" />
        </el-form-item>
        <el-form-item label="三级品类" prop="thirdCategoryId">
          <el-input v-model="form.thirdCategoryId" placeholder="请输入三级品类" />
        </el-form-item>
        <el-form-item label="供应商" prop="supplierId">
          <el-input v-model="form.supplierId" placeholder="请输入供应商" />
        </el-form-item>
        <el-form-item label="真实销量" prop="saleNum">
          <el-input v-model="form.saleNum" placeholder="请输入真实销量" />
        </el-form-item>
        <el-form-item label="虚拟销量" prop="virtualNum">
          <el-input v-model="form.virtualNum" placeholder="请输入虚拟销量" />
        </el-form-item>
        <el-form-item label="视频链接" prop="productVideo">
          <el-input v-model="form.productVideo" placeholder="请输入视频链接" />
        </el-form-item>
        <el-form-item label="库存" prop="totalNum">
          <el-input v-model="form.totalNum" placeholder="请输入库存" />
        </el-form-item>
        <el-form-item label="商品价格" prop="salePrice">
          <el-input v-model="form.salePrice" placeholder="请输入商品价格" />
        </el-form-item>
        <el-form-item label="划线价" prop="linePrice">
          <el-input v-model="form.linePrice" placeholder="请输入划线价" />
        </el-form-item>
        <el-form-item label="发货地" prop="origin">
          <el-input v-model="form.origin" placeholder="请输入发货地" />
        </el-form-item>
        <el-form-item label="邮费类型 0:包邮，1：自费" prop="postage">
          <el-input v-model="form.postage" placeholder="请输入邮费类型 0:包邮，1：自费" />
        </el-form-item>
        <el-form-item label="状态 0上架 1下架">
          <el-radio-group v-model="form.status">
            <el-radio label="1">请选择字典生成</el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item label="审核状态 0审核中 1通过 2不通过">
          <el-radio-group v-model="form.auditStatus">
            <el-radio label="1">请选择字典生成</el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item label="发票  0：可开，1：不可开">
          <el-radio-group v-model="form.invoiceStatus">
            <el-radio label="1">请选择字典生成</el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item label="详情" prop="details">
          <el-input v-model="form.details" type="textarea" placeholder="请输入内容" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listProduct, getProduct, delProduct, addProduct, updateProduct, exportProduct } from "@/api/mall/product";

export default {
  name: "Product",
  components: {
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
          { required: true, message: "三级品类不能为空", trigger: "blur" }
        ],
        postage: [
          { required: true, message: "邮费类型 0:包邮，1：自费不能为空", trigger: "blur" }
        ],
        auditStatus: [
          { required: true, message: "审核状态 0审核中 1通过 2不通过不能为空", trigger: "blur" }
        ],
      }
    };
  },
  created() {
    this.getList();
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
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
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
        this.open = true;
        this.title = "修改商品";
      });
    },
    /** 提交按钮 */
    submitForm() {
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
    }
  }
};
</script>
