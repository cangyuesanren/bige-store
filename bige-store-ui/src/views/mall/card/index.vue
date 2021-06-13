<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="批次号" prop="batchNo">
        <el-input
          v-model="queryParams.batchNo"
          placeholder="请输入批次号"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="兑换码" prop="shopNo">
        <el-input
          v-model="queryParams.shopNo"
          placeholder="请输入兑换码"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="面值" prop="shopValue">
        <el-input
          v-model="queryParams.shopValue"
          placeholder="请输入面值"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="卡背景图" prop="cardImg">
        <el-input
          v-model="queryParams.cardImg"
          placeholder="请输入卡背景图"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="开始兑换时间" prop="startExchangeTime">
        <el-date-picker clearable size="small"
          v-model="queryParams.startExchangeTime"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="选择开始兑换时间">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="结束兑换时间" prop="endExchangeTime">
        <el-date-picker clearable size="small"
          v-model="queryParams.endExchangeTime"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="选择结束兑换时间">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="开始使用时间" prop="startUseTime">
        <el-date-picker clearable size="small"
          v-model="queryParams.startUseTime"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="选择开始使用时间">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="结束使用时间" prop="endUseTime">
        <el-date-picker clearable size="small"
          v-model="queryParams.endUseTime"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="选择结束使用时间">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="状态 1：未开始， 2：待兑换 3：已过期" prop="status">
        <el-select v-model="queryParams.status" placeholder="请选择状态 1：未开始， 2：待兑换 3：已过期" clearable size="small">
          <el-option label="请选择字典生成" value="" />
        </el-select>
      </el-form-item>
      <el-form-item label="发放数量" prop="totalNum">
        <el-input
          v-model="queryParams.totalNum"
          placeholder="请输入发放数量"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="剩余数量" prop="shopNum">
        <el-input
          v-model="queryParams.shopNum"
          placeholder="请输入剩余数量"
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
          v-hasPermi="['mall:card:add']"
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
          v-hasPermi="['mall:card:edit']"
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
          v-hasPermi="['mall:card:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['mall:card:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="cardList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="购物卡Id" align="center" prop="shopId" />
      <el-table-column label="批次号" align="center" prop="batchNo" />
      <el-table-column label="兑换码" align="center" prop="shopNo" />
      <el-table-column label="面值" align="center" prop="shopValue" />
      <el-table-column label="卡背景图" align="center" prop="cardImg" />
      <el-table-column label="开始兑换时间" align="center" prop="startExchangeTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.startExchangeTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="结束兑换时间" align="center" prop="endExchangeTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.endExchangeTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="开始使用时间" align="center" prop="startUseTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.startUseTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="结束使用时间" align="center" prop="endUseTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.endUseTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="状态 1：未开始， 2：待兑换 3：已过期" align="center" prop="status" />
      <el-table-column label="发放数量" align="center" prop="totalNum" />
      <el-table-column label="剩余数量" align="center" prop="shopNum" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['mall:card:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['mall:card:remove']"
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

    <!-- 添加或修改购物卡对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="批次号" prop="batchNo">
          <el-input v-model="form.batchNo" placeholder="请输入批次号" />
        </el-form-item>
        <el-form-item label="兑换码" prop="shopNo">
          <el-input v-model="form.shopNo" placeholder="请输入兑换码" />
        </el-form-item>
        <el-form-item label="面值" prop="shopValue">
          <el-input v-model="form.shopValue" placeholder="请输入面值" />
        </el-form-item>
        <el-form-item label="卡背景图" prop="cardImg">
          <el-input v-model="form.cardImg" placeholder="请输入卡背景图" />
        </el-form-item>
        <el-form-item label="开始兑换时间" prop="startExchangeTime">
          <el-date-picker clearable size="small"
            v-model="form.startExchangeTime"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="选择开始兑换时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="结束兑换时间" prop="endExchangeTime">
          <el-date-picker clearable size="small"
            v-model="form.endExchangeTime"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="选择结束兑换时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="开始使用时间" prop="startUseTime">
          <el-date-picker clearable size="small"
            v-model="form.startUseTime"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="选择开始使用时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="结束使用时间" prop="endUseTime">
          <el-date-picker clearable size="small"
            v-model="form.endUseTime"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="选择结束使用时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="状态 1：未开始， 2：待兑换 3：已过期">
          <el-radio-group v-model="form.status">
            <el-radio label="1">请选择字典生成</el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item label="发放数量" prop="totalNum">
          <el-input v-model="form.totalNum" placeholder="请输入发放数量" />
        </el-form-item>
        <el-form-item label="剩余数量" prop="shopNum">
          <el-input v-model="form.shopNum" placeholder="请输入剩余数量" />
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
import { listCard, getCard, delCard, addCard, updateCard, exportCard } from "@/api/mall/card";

export default {
  name: "Card",
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
      // 购物卡表格数据
      cardList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        batchNo: null,
        shopNo: null,
        shopValue: null,
        cardImg: null,
        startExchangeTime: null,
        endExchangeTime: null,
        startUseTime: null,
        endUseTime: null,
        status: null,
        totalNum: null,
        shopNum: null,
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
    /** 查询购物卡列表 */
    getList() {
      this.loading = true;
      listCard(this.queryParams).then(response => {
        this.cardList = response.rows;
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
        shopId: null,
        batchNo: null,
        shopNo: null,
        shopValue: null,
        cardImg: null,
        startExchangeTime: null,
        endExchangeTime: null,
        startUseTime: null,
        endUseTime: null,
        status: "0",
        totalNum: null,
        shopNum: null,
        createTime: null
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
      this.ids = selection.map(item => item.shopId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加购物卡";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const shopId = row.shopId || this.ids
      getCard(shopId).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改购物卡";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.shopId != null) {
            updateCard(this.form).then(response => {
              this.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addCard(this.form).then(response => {
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
      const shopIds = row.shopId || this.ids;
      this.$confirm('是否确认删除购物卡编号为"' + shopIds + '"的数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
          return delCard(shopIds);
        }).then(() => {
          this.getList();
          this.msgSuccess("删除成功");
        })
    },
    /** 导出按钮操作 */
    handleExport() {
      const queryParams = this.queryParams;
      this.$confirm('是否确认导出所有购物卡数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
          return exportCard(queryParams);
        }).then(response => {
          this.download(response.msg);
        })
    }
  }
};
</script>
