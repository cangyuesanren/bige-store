<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="订单子单编号" prop="orderItemNo">
        <el-input
          v-model="queryParams.orderItemNo"
          placeholder="请输入订单子单编号"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="订单ID" prop="orderId">
        <el-input
          v-model="queryParams.orderId"
          placeholder="请输入订单ID"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="支付单号" prop="payOrderNo">
        <el-input
          v-model="queryParams.payOrderNo"
          placeholder="请输入支付单号"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="客户" prop="customerId">
        <el-input
          v-model="queryParams.customerId"
          placeholder="请输入客户"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="商品" prop="productId">
        <el-input
          v-model="queryParams.productId"
          placeholder="请输入商品"
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
      <el-form-item label="商品名称" prop="productName">
        <el-input
          v-model="queryParams.productName"
          placeholder="请输入商品名称"
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
      <el-form-item label="成本价" prop="costPrice">
        <el-input
          v-model="queryParams.costPrice"
          placeholder="请输入成本价"
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
      <el-form-item label="购买数量" prop="buyNum">
        <el-input
          v-model="queryParams.buyNum"
          placeholder="请输入购买数量"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="订单总结" prop="orderTotalMoney">
        <el-input
          v-model="queryParams.orderTotalMoney"
          placeholder="请输入订单总结"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="优惠金额" prop="preMoney">
        <el-input
          v-model="queryParams.preMoney"
          placeholder="请输入优惠金额"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="商品总价" prop="payProductMoney">
        <el-input
          v-model="queryParams.payProductMoney"
          placeholder="请输入商品总价"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="优惠券金" prop="couponMoney">
        <el-input
          v-model="queryParams.couponMoney"
          placeholder="请输入优惠券金"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="实付金额" prop="payMoney">
        <el-input
          v-model="queryParams.payMoney"
          placeholder="请输入实付金额"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="购物金" prop="shopMoney">
        <el-input
          v-model="queryParams.shopMoney"
          placeholder="请输入购物金"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="规格编码" prop="skuCode">
        <el-input
          v-model="queryParams.skuCode"
          placeholder="请输入规格编码"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="评论状态" prop="commentStatus">
        <el-select v-model="queryParams.commentStatus" placeholder="请选择评论状态" clearable size="small">
          <el-option label="请选择字典生成" value="" />
        </el-select>
      </el-form-item>
      <el-form-item label="状态" prop="status">
        <el-select v-model="queryParams.status" placeholder="请选择状态" clearable size="small">
          <el-option label="请选择字典生成" value="" />
        </el-select>
      </el-form-item>
      <el-form-item label="发货方式 ( 0普通快递 1无需物流）" prop="deliveryType">
        <el-select v-model="queryParams.deliveryType" placeholder="请选择发货方式 ( 0普通快递 1无需物流）" clearable size="small">
          <el-option label="请选择字典生成" value="" />
        </el-select>
      </el-form-item>
      <el-form-item label="邮费" prop="postagePrice">
        <el-input
          v-model="queryParams.postagePrice"
          placeholder="请输入邮费"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="发票类型" prop="invoiceType">
        <el-select v-model="queryParams.invoiceType" placeholder="请选择发票类型" clearable size="small">
          <el-option label="请选择字典生成" value="" />
        </el-select>
      </el-form-item>
      <el-form-item label="开票状态" prop="invoiceStatus">
        <el-select v-model="queryParams.invoiceStatus" placeholder="请选择开票状态" clearable size="small">
          <el-option label="请选择字典生成" value="" />
        </el-select>
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
      <el-form-item label="供应商" prop="supplierId">
        <el-input
          v-model="queryParams.supplierId"
          placeholder="请输入供应商"
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
          v-hasPermi="['mall:item:add']"
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
          v-hasPermi="['mall:item:edit']"
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
          v-hasPermi="['mall:item:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['mall:item:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="itemList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="订单子单ID" align="center" prop="orderItemId" />
      <el-table-column label="订单子单编号" align="center" prop="orderItemNo" />
      <el-table-column label="订单ID" align="center" prop="orderId" />
      <el-table-column label="支付单号" align="center" prop="payOrderNo" />
      <el-table-column label="客户" align="center" prop="customerId" />
      <el-table-column label="商品" align="center" prop="productId" />
      <el-table-column label="规格Id" align="center" prop="goodsId" />
      <el-table-column label="一级品类" align="center" prop="firstCategoryId" />
      <el-table-column label="二级品类" align="center" prop="secondCategoryId" />
      <el-table-column label="三级品类" align="center" prop="thirdCategoryId" />
      <el-table-column label="商品名称" align="center" prop="productName" />
      <el-table-column label="商品图" align="center" prop="productImg" />
      <el-table-column label="成本价" align="center" prop="costPrice" />
      <el-table-column label="售价" align="center" prop="salePrice" />
      <el-table-column label="购买数量" align="center" prop="buyNum" />
      <el-table-column label="订单总结" align="center" prop="orderTotalMoney" />
      <el-table-column label="优惠金额" align="center" prop="preMoney" />
      <el-table-column label="商品总价" align="center" prop="payProductMoney" />
      <el-table-column label="优惠券金" align="center" prop="couponMoney" />
      <el-table-column label="实付金额" align="center" prop="payMoney" />
      <el-table-column label="购物金" align="center" prop="shopMoney" />
      <el-table-column label="商品规格" align="center" prop="goodsAttr" />
      <el-table-column label="规格编码" align="center" prop="skuCode" />
      <el-table-column label="评论状态" align="center" prop="commentStatus" />
      <el-table-column label="状态" align="center" prop="status" />
      <el-table-column label="发货方式 ( 0普通快递 1无需物流）" align="center" prop="deliveryType" />
      <el-table-column label="邮费" align="center" prop="postagePrice" />
      <el-table-column label="发票类型" align="center" prop="invoiceType" />
      <el-table-column label="开票状态" align="center" prop="invoiceStatus" />
      <el-table-column label="买家留言" align="center" prop="buyerMsg" />
      <el-table-column label="供应商" align="center" prop="supplierId" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['mall:item:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['mall:item:remove']"
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

    <!-- 添加或修改订单子单对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="订单子单编号" prop="orderItemNo">
          <el-input v-model="form.orderItemNo" placeholder="请输入订单子单编号" />
        </el-form-item>
        <el-form-item label="订单ID" prop="orderId">
          <el-input v-model="form.orderId" placeholder="请输入订单ID" />
        </el-form-item>
        <el-form-item label="支付单号" prop="payOrderNo">
          <el-input v-model="form.payOrderNo" placeholder="请输入支付单号" />
        </el-form-item>
        <el-form-item label="客户" prop="customerId">
          <el-input v-model="form.customerId" placeholder="请输入客户" />
        </el-form-item>
        <el-form-item label="商品" prop="productId">
          <el-input v-model="form.productId" placeholder="请输入商品" />
        </el-form-item>
        <el-form-item label="规格Id" prop="goodsId">
          <el-input v-model="form.goodsId" placeholder="请输入规格Id" />
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
        <el-form-item label="商品名称" prop="productName">
          <el-input v-model="form.productName" placeholder="请输入商品名称" />
        </el-form-item>
        <el-form-item label="商品图" prop="productImg">
          <el-input v-model="form.productImg" placeholder="请输入商品图" />
        </el-form-item>
        <el-form-item label="成本价" prop="costPrice">
          <el-input v-model="form.costPrice" placeholder="请输入成本价" />
        </el-form-item>
        <el-form-item label="售价" prop="salePrice">
          <el-input v-model="form.salePrice" placeholder="请输入售价" />
        </el-form-item>
        <el-form-item label="购买数量" prop="buyNum">
          <el-input v-model="form.buyNum" placeholder="请输入购买数量" />
        </el-form-item>
        <el-form-item label="订单总结" prop="orderTotalMoney">
          <el-input v-model="form.orderTotalMoney" placeholder="请输入订单总结" />
        </el-form-item>
        <el-form-item label="优惠金额" prop="preMoney">
          <el-input v-model="form.preMoney" placeholder="请输入优惠金额" />
        </el-form-item>
        <el-form-item label="商品总价" prop="payProductMoney">
          <el-input v-model="form.payProductMoney" placeholder="请输入商品总价" />
        </el-form-item>
        <el-form-item label="优惠券金" prop="couponMoney">
          <el-input v-model="form.couponMoney" placeholder="请输入优惠券金" />
        </el-form-item>
        <el-form-item label="实付金额" prop="payMoney">
          <el-input v-model="form.payMoney" placeholder="请输入实付金额" />
        </el-form-item>
        <el-form-item label="购物金" prop="shopMoney">
          <el-input v-model="form.shopMoney" placeholder="请输入购物金" />
        </el-form-item>
        <el-form-item label="商品规格" prop="goodsAttr">
          <el-input v-model="form.goodsAttr" type="textarea" placeholder="请输入内容" />
        </el-form-item>
        <el-form-item label="规格编码" prop="skuCode">
          <el-input v-model="form.skuCode" placeholder="请输入规格编码" />
        </el-form-item>
        <el-form-item label="评论状态">
          <el-radio-group v-model="form.commentStatus">
            <el-radio label="1">请选择字典生成</el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item label="状态">
          <el-radio-group v-model="form.status">
            <el-radio label="1">请选择字典生成</el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item label="发货方式 ( 0普通快递 1无需物流）" prop="deliveryType">
          <el-select v-model="form.deliveryType" placeholder="请选择发货方式 ( 0普通快递 1无需物流）">
            <el-option label="请选择字典生成" value="" />
          </el-select>
        </el-form-item>
        <el-form-item label="邮费" prop="postagePrice">
          <el-input v-model="form.postagePrice" placeholder="请输入邮费" />
        </el-form-item>
        <el-form-item label="发票类型" prop="invoiceType">
          <el-select v-model="form.invoiceType" placeholder="请选择发票类型">
            <el-option label="请选择字典生成" value="" />
          </el-select>
        </el-form-item>
        <el-form-item label="开票状态">
          <el-radio-group v-model="form.invoiceStatus">
            <el-radio label="1">请选择字典生成</el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item label="买家留言" prop="buyerMsg">
          <el-input v-model="form.buyerMsg" placeholder="请输入买家留言" />
        </el-form-item>
        <el-form-item label="供应商" prop="supplierId">
          <el-input v-model="form.supplierId" placeholder="请输入供应商" />
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
import { listItem, getItem, delItem, addItem, updateItem, exportItem } from "@/api/mall/item";

export default {
  name: "Item",
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
      // 订单子单表格数据
      itemList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        orderItemNo: null,
        orderId: null,
        payOrderNo: null,
        customerId: null,
        productId: null,
        goodsId: null,
        firstCategoryId: null,
        secondCategoryId: null,
        thirdCategoryId: null,
        productName: null,
        productImg: null,
        costPrice: null,
        salePrice: null,
        buyNum: null,
        orderTotalMoney: null,
        preMoney: null,
        payProductMoney: null,
        couponMoney: null,
        payMoney: null,
        shopMoney: null,
        goodsAttr: null,
        skuCode: null,
        commentStatus: null,
        status: null,
        deliveryType: null,
        postagePrice: null,
        invoiceType: null,
        invoiceStatus: null,
        buyerMsg: null,
        supplierId: null,
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
    /** 查询订单子单列表 */
    getList() {
      this.loading = true;
      listItem(this.queryParams).then(response => {
        this.itemList = response.rows;
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
        orderItemId: null,
        orderItemNo: null,
        orderId: null,
        payOrderNo: null,
        customerId: null,
        productId: null,
        goodsId: null,
        firstCategoryId: null,
        secondCategoryId: null,
        thirdCategoryId: null,
        productName: null,
        productImg: null,
        costPrice: null,
        salePrice: null,
        buyNum: null,
        orderTotalMoney: null,
        preMoney: null,
        payProductMoney: null,
        couponMoney: null,
        payMoney: null,
        shopMoney: null,
        goodsAttr: null,
        skuCode: null,
        commentStatus: "0",
        status: "0",
        deliveryType: null,
        postagePrice: null,
        invoiceType: null,
        invoiceStatus: "0",
        buyerMsg: null,
        supplierId: null,
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
      this.ids = selection.map(item => item.orderItemId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加订单子单";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const orderItemId = row.orderItemId || this.ids
      getItem(orderItemId).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改订单子单";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.orderItemId != null) {
            updateItem(this.form).then(response => {
              this.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addItem(this.form).then(response => {
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
      const orderItemIds = row.orderItemId || this.ids;
      this.$confirm('是否确认删除订单子单编号为"' + orderItemIds + '"的数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
          return delItem(orderItemIds);
        }).then(() => {
          this.getList();
          this.msgSuccess("删除成功");
        })
    },
    /** 导出按钮操作 */
    handleExport() {
      const queryParams = this.queryParams;
      this.$confirm('是否确认导出所有订单子单数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
          return exportItem(queryParams);
        }).then(response => {
          this.download(response.msg);
        })
    }
  }
};
</script>
