<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="订单名" prop="orderName">
        <el-input
          v-model="queryParams.orderName"
          placeholder="请输入订单名"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="订单编号" prop="orderNo">
        <el-input
          v-model="queryParams.orderNo"
          placeholder="请输入订单编号"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="支付订单号" prop="payOrderNo">
        <el-input
          v-model="queryParams.payOrderNo"
          placeholder="请输入支付订单号"
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
      <el-form-item label="订单总金额" prop="orderTotalMoney">
        <el-input
          v-model="queryParams.orderTotalMoney"
          placeholder="请输入订单总金额"
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
      <el-form-item label="优惠金" prop="preMoney">
        <el-input
          v-model="queryParams.preMoney"
          placeholder="请输入优惠金"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="商品应付金额" prop="payProductMoney">
        <el-input
          v-model="queryParams.payProductMoney"
          placeholder="请输入商品应付金额"
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
      <el-form-item label="收货人" prop="buyerName">
        <el-input
          v-model="queryParams.buyerName"
          placeholder="请输入收货人"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="联系电话" prop="buyerPhone">
        <el-input
          v-model="queryParams.buyerPhone"
          placeholder="请输入联系电话"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="收货地址" prop="buyerAddress">
        <el-input
          v-model="queryParams.buyerAddress"
          placeholder="请输入收货地址"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="状态" prop="status">
        <el-select v-model="queryParams.status" placeholder="请选择状态" clearable size="small">
          <el-option label="请选择字典生成" value="" />
        </el-select>
      </el-form-item>
      <el-form-item label="活动状态" prop="acStatus">
        <el-select v-model="queryParams.acStatus" placeholder="请选择活动状态" clearable size="small">
          <el-option label="请选择字典生成" value="" />
        </el-select>
      </el-form-item>
      <el-form-item label="支付状态：0:未支付，1：已支付" prop="payStatus">
        <el-select v-model="queryParams.payStatus" placeholder="请选择支付状态：0:未支付，1：已支付" clearable size="small">
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
          v-hasPermi="['mall:order:add']"
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
          v-hasPermi="['mall:order:edit']"
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
          v-hasPermi="['mall:order:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['mall:order:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="orderList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="订单Id" align="center" prop="orderId" />
      <el-table-column label="订单名" align="center" prop="orderName" />
      <el-table-column label="订单编号" align="center" prop="orderNo" />
      <el-table-column label="支付订单号" align="center" prop="payOrderNo" />
      <el-table-column label="客户" align="center" prop="customerId" />
      <el-table-column label="订单总金额" align="center" prop="orderTotalMoney" />
      <el-table-column label="购物金" align="center" prop="shopMoney" />
      <el-table-column label="优惠金" align="center" prop="preMoney" />
      <el-table-column label="商品应付金额" align="center" prop="payProductMoney" />
      <el-table-column label="优惠券金" align="center" prop="couponMoney" />
      <el-table-column label="实付金额" align="center" prop="payMoney" />
      <el-table-column label="收货人" align="center" prop="buyerName" />
      <el-table-column label="联系电话" align="center" prop="buyerPhone" />
      <el-table-column label="收货地址" align="center" prop="buyerAddress" />
      <el-table-column label="状态" align="center" prop="status" />
      <el-table-column label="活动状态" align="center" prop="acStatus" />
      <el-table-column label="支付状态：0:未支付，1：已支付" align="center" prop="payStatus" />
      <el-table-column label="邮费" align="center" prop="postagePrice" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['mall:order:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['mall:order:remove']"
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

    <!-- 添加或修改商品订单对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="订单名" prop="orderName">
          <el-input v-model="form.orderName" placeholder="请输入订单名" />
        </el-form-item>
        <el-form-item label="订单编号" prop="orderNo">
          <el-input v-model="form.orderNo" placeholder="请输入订单编号" />
        </el-form-item>
        <el-form-item label="支付订单号" prop="payOrderNo">
          <el-input v-model="form.payOrderNo" placeholder="请输入支付订单号" />
        </el-form-item>
        <el-form-item label="客户" prop="customerId">
          <el-input v-model="form.customerId" placeholder="请输入客户" />
        </el-form-item>
        <el-form-item label="订单总金额" prop="orderTotalMoney">
          <el-input v-model="form.orderTotalMoney" placeholder="请输入订单总金额" />
        </el-form-item>
        <el-form-item label="购物金" prop="shopMoney">
          <el-input v-model="form.shopMoney" placeholder="请输入购物金" />
        </el-form-item>
        <el-form-item label="优惠金" prop="preMoney">
          <el-input v-model="form.preMoney" placeholder="请输入优惠金" />
        </el-form-item>
        <el-form-item label="商品应付金额" prop="payProductMoney">
          <el-input v-model="form.payProductMoney" placeholder="请输入商品应付金额" />
        </el-form-item>
        <el-form-item label="优惠券金" prop="couponMoney">
          <el-input v-model="form.couponMoney" placeholder="请输入优惠券金" />
        </el-form-item>
        <el-form-item label="实付金额" prop="payMoney">
          <el-input v-model="form.payMoney" placeholder="请输入实付金额" />
        </el-form-item>
        <el-form-item label="收货人" prop="buyerName">
          <el-input v-model="form.buyerName" placeholder="请输入收货人" />
        </el-form-item>
        <el-form-item label="联系电话" prop="buyerPhone">
          <el-input v-model="form.buyerPhone" placeholder="请输入联系电话" />
        </el-form-item>
        <el-form-item label="收货地址" prop="buyerAddress">
          <el-input v-model="form.buyerAddress" placeholder="请输入收货地址" />
        </el-form-item>
        <el-form-item label="状态">
          <el-radio-group v-model="form.status">
            <el-radio label="1">请选择字典生成</el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item label="活动状态">
          <el-radio-group v-model="form.acStatus">
            <el-radio label="1">请选择字典生成</el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item label="支付状态：0:未支付，1：已支付">
          <el-radio-group v-model="form.payStatus">
            <el-radio label="1">请选择字典生成</el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item label="邮费" prop="postagePrice">
          <el-input v-model="form.postagePrice" placeholder="请输入邮费" />
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
import { listOrder, getOrder, delOrder, addOrder, updateOrder, exportOrder } from "@/api/mall/order";

export default {
  name: "Order",
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
      // 商品订单表格数据
      orderList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        orderName: null,
        orderNo: null,
        payOrderNo: null,
        customerId: null,
        orderTotalMoney: null,
        shopMoney: null,
        preMoney: null,
        payProductMoney: null,
        couponMoney: null,
        payMoney: null,
        buyerName: null,
        buyerPhone: null,
        buyerAddress: null,
        status: null,
        acStatus: null,
        payStatus: null,
        postagePrice: null,
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
    /** 查询商品订单列表 */
    getList() {
      this.loading = true;
      listOrder(this.queryParams).then(response => {
        this.orderList = response.rows;
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
        orderId: null,
        orderName: null,
        orderNo: null,
        payOrderNo: null,
        customerId: null,
        orderTotalMoney: null,
        shopMoney: null,
        preMoney: null,
        payProductMoney: null,
        couponMoney: null,
        payMoney: null,
        buyerName: null,
        buyerPhone: null,
        buyerAddress: null,
        status: "0",
        acStatus: "0",
        payStatus: "0",
        postagePrice: null,
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
      this.ids = selection.map(item => item.orderId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加商品订单";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const orderId = row.orderId || this.ids
      getOrder(orderId).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改商品订单";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.orderId != null) {
            updateOrder(this.form).then(response => {
              this.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addOrder(this.form).then(response => {
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
      const orderIds = row.orderId || this.ids;
      this.$confirm('是否确认删除商品订单编号为"' + orderIds + '"的数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
          return delOrder(orderIds);
        }).then(() => {
          this.getList();
          this.msgSuccess("删除成功");
        })
    },
    /** 导出按钮操作 */
    handleExport() {
      const queryParams = this.queryParams;
      this.$confirm('是否确认导出所有商品订单数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
          return exportOrder(queryParams);
        }).then(response => {
          this.download(response.msg);
        })
    }
  }
};
</script>
