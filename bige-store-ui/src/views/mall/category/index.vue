<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="品类名" prop="categoryName">
        <el-input
          v-model="queryParams.categoryName"
          placeholder="请输入品类名"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>

      <!--<el-form-item label="父级ID" prop="parentId">
        <el-input
          v-model="queryParams.parentId"
          placeholder="请输入父级ID"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>-->
      <el-form-item label="类型" prop="categoryType">
        <el-select v-model="queryParams.categoryType" placeholder="请选择类型" clearable size="small">
          <el-option label="一级" value="1" />
          <el-option label="二级" value="2" />
          <el-option label="三级" value="3" />
        </el-select>
      </el-form-item>
      <el-form-item label="排序" prop="sort">
        <el-input
          v-model="queryParams.sort"
          placeholder="请输入排序"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>

      <el-form-item label="状态" prop="status">
        <el-select v-model="queryParams.status" placeholder="请选择状态" clearable size="small">
          <el-option label="正常" value="1" />
          <el-option label="禁用" value="0" />
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
          v-hasPermi="['mall:category:add']"
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
          v-hasPermi="['mall:category:edit']"
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
          v-hasPermi="['mall:category:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['mall:category:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" row-key="categoryId"
              :data="categoryList" @selection-change="handleSelectionChange"
              :tree-props="{children: 'children', hasChildren: 'hasChildren'}"
    >
      <el-table-column type="selection" width="55" align="center" />
      <!--<el-table-column label="品类ID" align="center" prop="categoryId" />-->
      <el-table-column label="品类级别" align="center" prop="categoryType" >
        <template slot-scope="scope" >
          {{scope.row.categoryType==1?"一级":scope.row.categoryType==2?"二级":scope.row.categoryType==3?"三级":"-"}}
        </template>
      </el-table-column>
      <el-table-column label="品类名" align="center" prop="categoryName" />
      <el-table-column label="品类图片" align="center" prop="categoryImg" >
        <template slot-scope="scope" >
          <el-image
            style="width: 40px"
            :src="scope.row.categoryImg"
            :preview-src-list="[scope.row.categoryImg]"
          ></el-image>
        </template>
      </el-table-column>

      <el-table-column label="排序" align="center" prop<!--<el-table-column label="父级ID" align="center" prop="parentId" />-->="sort" />
      <!--<el-table-column label="佣金比例" align="center" prop="chargeRate" />-->
      <el-table-column label="状态" align="center" prop="status" >
        <template slot-scope="scope">
          {{scope.row.status==1?"正常":"禁用"}}
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['mall:category:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['mall:category:remove']"
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

    <!-- 添加或修改品类信息对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="品类级别" prop="categoryType">
          <el-select v-model="form.categoryType"  disabled  v-if="form.categoryId" @change="changeType" placeholder="请选择类型">
            <el-option label="一级" value="1" />
            <el-option label="二级" value="2" />
            <el-option label="三级" value="3" />
          </el-select>
          <el-select v-model="form.categoryType"   v-else @change="changeType" placeholder="请选择类型">
            <el-option label="一级" value="1" />
            <el-option label="二级" value="2" />
            <el-option label="三级" value="3" />
          </el-select>
        </el-form-item>
        <el-form-item label="父级品类" prop="parentId">
         <!-- <el-input v-model="form.parentId"  placeholder="请输入父级ID" />-->
          <el-select v-model="form.parentId" disabled  v-if="form.categoryId" placeholder="请选择类型">
            <el-option :label="item.categoryName" :value="item.categoryId" v-for="(item,index) in fatherList" :key="index" />
          </el-select>
          <el-select v-model="form.parentId"  v-else placeholder="请选择类型">
            <el-option :label="item.categoryName" :value="item.categoryId" v-for="(item,index) in fatherList" :key="index" />
          </el-select>
        </el-form-item>
        <el-form-item label="品类名" prop="categoryName">
          <el-input v-model="form.categoryName" placeholder="请输入品类名" />
        </el-form-item>
        <el-form-item label="品类图片" prop="categoryImg">
          <img-upload v-model="form.categoryImg" class="sku_upload"></img-upload>
        </el-form-item>


        <el-form-item label="排序" prop="sort">
          <el-input v-model="form.sort" type="number" placeholder="请输入排序" />
        </el-form-item>
        <!--<el-form-item label="佣金比例" prop="chargeRate">
          <el-input v-model="form.chargeRate" placeholder="请输入佣金比例" />
        </el-form-item>-->
        <el-form-item label="状态">
          <el-radio-group v-model="form.status">
            <el-radio label="1">正常</el-radio>
            <el-radio label="0">禁用</el-radio>
          </el-radio-group>
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
import {
  listCategory, getCategory, delCategory, addCategory,
  updateCategory, exportCategory, listTreeCategory,
} from "@/api/mall/category";
import imgUpload from "@/components/upload/imgUpload";

export default {
  name: "Category",
  components: {
    imgUpload
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
      // 品类信息表格数据
      categoryList: [],

      fatherList: [],       //待选父级品类
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        categoryName: null,
        categoryImg: null,
        parentId: null,
        categoryType: null,
        sort: null,
        chargeRate: null,
        status: null,
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
    /** 查询品类信息列表 */
    getList() {
      this.loading = true;
      /*listCategory(this.queryParams).then(response => {
        this.categoryList = response.rows;
        this.total = response.total;
        this.loading = false;
      });*/

      listTreeCategory(this.queryParams).then(response => {
        this.categoryList = response.data;
        this.loading = false;
      })
    },

    getFatherListList(){
      if (this.form.categoryType == 1){
        this.fatherList = [{
          categoryName: "0(0表示无父级)",categoryId: 0,
        }]
      } else {
        listCategory({categoryType:this.form.categoryType-1}).then(response => {
          this.fatherList = response.rows
          for (let item of this.fatherList){
            if(this.form.categoryType == 2){
              item.categoryName = item.categoryName + "(一级)"
            }else {
              item.categoryName = item.categoryName + "(二级)"
            }
          }
        })
      }

    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        categoryId: null,
        categoryName: null,
        categoryImg: null,
        parentId: 0,
        categoryType: "1",
        sort: null,
        chargeRate: null,
        status: "1",
        createTime: null,
        createBy: null,
        updateTime: null,
        updateBy: null
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
      this.ids = selection.map(item => item.categoryId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.getFatherListList();
      this.open = true;
      this.title = "添加品类信息";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      this.form = row;
      this.getFatherListList();
      const categoryId = row.categoryId || this.ids
      getCategory(categoryId).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改品类信息";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.categoryId != null) {
            updateCategory(this.form).then(response => {
              this.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addCategory(this.form).then(response => {
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
      const categoryIds = row.categoryId || this.ids;
      this.$confirm('是否确认删除品类信息编号为"' + categoryIds + '"的数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
          return delCategory(categoryIds);
        }).then(() => {
          this.getList();
          this.msgSuccess("删除成功");
        })
    },
    /** 导出按钮操作 */
    handleExport() {
      const queryParams = this.queryParams;
      this.$confirm('是否确认导出所有品类信息数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
          return exportCategory(queryParams);
        }).then(response => {
          this.download(response.msg);
        })
    },
    changeType(){     //更改品类级别
      console.log(this.form);
      if (this.form.categoryType == 1){
        this.form.parentId = "0";
      }else {
        this.form.parentId = null;
      }
      this.getFatherListList()
    },
  }
};
</script>
