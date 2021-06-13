<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="商品Id" prop="productId">
        <el-input
          v-model="queryParams.productId"
          placeholder="请输入商品Id"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="商品规格名" prop="goodsName">
        <el-input
          v-model="queryParams.goodsName"
          placeholder="请输入商品规格名"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="规格图" prop="goodsImg">
        <el-input
          v-model="queryParams.goodsImg"
          placeholder="请输入规格图"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="销售价" prop="salePrice">
        <el-input
          v-model="queryParams.salePrice"
          placeholder="请输入销售价"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="成本价" prop="costPrice">
        <el-input
          v-model="queryParams.costPrice"
          placeholder="请输入成本价"
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
      <el-form-item label="规格销量" prop="saleNum">
        <el-input
          v-model="queryParams.saleNum"
          placeholder="请输入规格销量"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="总库存" prop="totalNum">
        <el-input
          v-model="queryParams.totalNum"
          placeholder="请输入总库存"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="库存锁定" prop="stockLocked">
        <el-input
          v-model="queryParams.stockLocked"
          placeholder="请输入库存锁定"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="重量" prop="weight">
        <el-input
          v-model="queryParams.weight"
          placeholder="请输入重量"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="体积" prop="volum">
        <el-input
          v-model="queryParams.volum"
          placeholder="请输入体积"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
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
          v-hasPermi="['mall:goods:add']"
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
          v-hasPermi="['mall:goods:edit']"
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
          v-hasPermi="['mall:goods:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['mall:goods:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="goodsList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="skuId" align="center" prop="goodsId" />
      <el-table-column label="商品Id" align="center" prop="productId" />
      <el-table-column label="商品规格名" align="center" prop="goodsName" />
      <el-table-column label="规格图" align="center" prop="goodsImg" />
      <el-table-column label="销售价" align="center" prop="salePrice" />
      <el-table-column label="成本价" align="center" prop="costPrice" />
      <el-table-column label="划线价" align="center" prop="linePrice" />
      <el-table-column label="规格销量" align="center" prop="saleNum" />
      <el-table-column label="总库存" align="center" prop="totalNum" />
      <el-table-column label="库存锁定" align="center" prop="stockLocked" />
      <el-table-column label="重量" align="center" prop="weight" />
      <el-table-column label="体积" align="center" prop="volum" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['mall:goods:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['mall:goods:remove']"
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

    <!-- 添加或修改商品sku对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="商品Id" prop="productId">
          <el-input v-model="form.productId" placeholder="请输入商品Id" />
        </el-form-item>
        <el-form-item label="商品规格名" prop="goodsName">
          <el-input v-model="form.goodsName" placeholder="请输入商品规格名" />
        </el-form-item>
        <el-form-item label="规格图" prop="goodsImg">
          <el-input v-model="form.goodsImg" placeholder="请输入规格图" />
        </el-form-item>
        <el-form-item label="销售价" prop="salePrice">
          <el-input v-model="form.salePrice" placeholder="请输入销售价" />
        </el-form-item>
        <el-form-item label="成本价" prop="costPrice">
          <el-input v-model="form.costPrice" placeholder="请输入成本价" />
        </el-form-item>
        <el-form-item label="划线价" prop="linePrice">
          <el-input v-model="form.linePrice" placeholder="请输入划线价" />
        </el-form-item>
        <el-form-item label="规格销量" prop="saleNum">
          <el-input v-model="form.saleNum" placeholder="请输入规格销量" />
        </el-form-item>
        <el-form-item label="总库存" prop="totalNum">
          <el-input v-model="form.totalNum" placeholder="请输入总库存" />
        </el-form-item>
        <el-form-item label="库存锁定" prop="stockLocked">
          <el-input v-model="form.stockLocked" placeholder="请输入库存锁定" />
        </el-form-item>
        <el-form-item label="重量" prop="weight">
          <el-input v-model="form.weight" placeholder="请输入重量" />
        </el-form-item>
        <el-form-item label="体积" prop="volum">
          <el-input v-model="form.volum" placeholder="请输入体积" />
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
import { listGoods, getGoods, delGoods, addGoods, updateGoods, exportGoods } from "@/api/mall/goods";

export default {
  name: "Goods",
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
      // 商品sku表格数据
      goodsList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        productId: null,
        goodsName: null,
        goodsImg: null,
        salePrice: null,
        costPrice: null,
        linePrice: null,
        saleNum: null,
        totalNum: null,
        stockLocked: null,
        weight: null,
        volum: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        productId: [
          { required: true, message: "商品Id不能为空", trigger: "blur" }
        ],
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询商品sku列表 */
    getList() {
      this.loading = true;
      listGoods(this.queryParams).then(response => {
        this.goodsList = response.rows;
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
        goodsId: null,
        productId: null,
        goodsName: null,
        goodsImg: null,
        salePrice: null,
        costPrice: null,
        linePrice: null,
        saleNum: null,
        totalNum: null,
        stockLocked: null,
        weight: null,
        volum: null,
        createTime: null,
        createBy: null,
        updateTime: null
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
      this.ids = selection.map(item => item.goodsId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加商品sku";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const goodsId = row.goodsId || this.ids
      getGoods(goodsId).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改商品sku";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.goodsId != null) {
            updateGoods(this.form).then(response => {
              this.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addGoods(this.form).then(response => {
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
      const goodsIds = row.goodsId || this.ids;
      this.$confirm('是否确认删除商品sku编号为"' + goodsIds + '"的数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
          return delGoods(goodsIds);
        }).then(() => {
          this.getList();
          this.msgSuccess("删除成功");
        })
    },
    /** 导出按钮操作 */
    handleExport() {
      const queryParams = this.queryParams;
      this.$confirm('是否确认导出所有商品sku数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
          return exportGoods(queryParams);
        }).then(response => {
          this.download(response.msg);
        })
    }
  }
};
</script>
