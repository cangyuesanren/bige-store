<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="客户" prop="customerId">
        <el-input
          v-model="queryParams.customerId"
          placeholder="请输入客户"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="规格Id" prop="goodsId">
        <el-input
          v-model="queryParams.goodsId"
          placeholder="请输入规格Id"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="商品Id" prop="productId">
        <el-input
          v-model="queryParams.productId"
          placeholder="请输入商品Id"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="售价" prop="salePrice">
        <el-input
          v-model="queryParams.salePrice"
          placeholder="请输入售价"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="商品名" prop="productName">
        <el-input
          v-model="queryParams.productName"
          placeholder="请输入商品名"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="数量" prop="number">
        <el-input
          v-model="queryParams.number"
          placeholder="请输入数量"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="商品图" prop="productImg">
        <el-input
          v-model="queryParams.productImg"
          placeholder="请输入商品图"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="买家留言" prop="buyerMsg">
        <el-input
          v-model="queryParams.buyerMsg"
          placeholder="请输入买家留言"
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
          v-hasPermi="['mall:cart:add']"
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
          v-hasPermi="['mall:cart:edit']"
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
          v-hasPermi="['mall:cart:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['mall:cart:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="cartList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="购物车ID" align="center" prop="cartId" />
      <el-table-column label="客户" align="center" prop="customerId" />
      <el-table-column label="规格Id" align="center" prop="goodsId" />
      <el-table-column label="商品Id" align="center" prop="productId" />
      <el-table-column label="售价" align="center" prop="salePrice" />
      <el-table-column label="规格Json" align="center" prop="standardJson" />
      <el-table-column label="商品名" align="center" prop="productName" />
      <el-table-column label="数量" align="center" prop="number" />
      <el-table-column label="商品图" align="center" prop="productImg" />
      <el-table-column label="买家留言" align="center" prop="buyerMsg" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['mall:cart:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['mall:cart:remove']"
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

    <!-- 添加或修改购物车对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="客户" prop="customerId">
          <el-input v-model="form.customerId" placeholder="请输入客户" />
        </el-form-item>
        <el-form-item label="规格Id" prop="goodsId">
          <el-input v-model="form.goodsId" placeholder="请输入规格Id" />
        </el-form-item>
        <el-form-item label="商品Id" prop="productId">
          <el-input v-model="form.productId" placeholder="请输入商品Id" />
        </el-form-item>
        <el-form-item label="售价" prop="salePrice">
          <el-input v-model="form.salePrice" placeholder="请输入售价" />
        </el-form-item>
        <el-form-item label="规格Json" prop="standardJson">
          <el-input v-model="form.standardJson" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="商品名" prop="productName">
          <el-input v-model="form.productName" placeholder="请输入商品名" />
        </el-form-item>
        <el-form-item label="数量" prop="number">
          <el-input v-model="form.number" placeholder="请输入数量" />
        </el-form-item>
        <el-form-item label="商品图" prop="productImg">
          <el-input v-model="form.productImg" placeholder="请输入商品图" />
        </el-form-item>
        <el-form-item label="买家留言" prop="buyerMsg">
          <el-input v-model="form.buyerMsg" placeholder="请输入买家留言" />
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
import { listCart, getCart, delCart, addCart, updateCart, exportCart } from "@/api/mall/cart";

export default {
  name: "Cart",
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
      // 购物车表格数据
      cartList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        customerId: null,
        goodsId: null,
        productId: null,
        salePrice: null,
        standardJson: null,
        productName: null,
        number: null,
        productImg: null,
        buyerMsg: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询购物车列表 */
    getList() {
      this.loading = true;
      listCart(this.queryParams).then(response => {
        this.cartList = response.rows;
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
        cartId: null,
        customerId: null,
        goodsId: null,
        productId: null,
        salePrice: null,
        standardJson: null,
        productName: null,
        number: null,
        productImg: null,
        buyerMsg: null,
        createTime: null,
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
      this.ids = selection.map(item => item.cartId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加购物车";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const cartId = row.cartId || this.ids
      getCart(cartId).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改购物车";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.cartId != null) {
            updateCart(this.form).then(response => {
              this.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addCart(this.form).then(response => {
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
      const cartIds = row.cartId || this.ids;
      this.$confirm('是否确认删除购物车编号为"' + cartIds + '"的数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
          return delCart(cartIds);
        }).then(() => {
          this.getList();
          this.msgSuccess("删除成功");
        })
    },
    /** 导出按钮操作 */
    handleExport() {
      const queryParams = this.queryParams;
      this.$confirm('是否确认导出所有购物车数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
          return exportCart(queryParams);
        }).then(response => {
          this.download(response.msg);
        })
    }
  }
};
</script>
