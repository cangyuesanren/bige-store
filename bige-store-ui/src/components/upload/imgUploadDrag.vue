<template>
  <div>
    <el-upload
      class="avatar-uploader"
      :action="dataObj.host"
      :data="dataObj"
      :show-file-list="false"
      :before-upload="beforeUpload"
      :on-success="handleUploadSuccess"
      drag
    >
      <img v-if="imgUrl || value" :src="imgUrl || value" />
      <div class="el-upload__text el-upload__text1">将文件拖到此处，或</div>
      <div class="el-upload__text el-upload__text2"><em>点击上传</em></div>

      <el-tag type="danger" v-if="imgUrl || value" @click.stop="handleRemove" class="delete">删除</el-tag>
    </el-upload>
  </div>
</template>
<script>
  import {policy} from "./policy";
  import {getUUID} from "@/utils";

  export default {
  name: "singleUpload",
  props: {
    value: String,
    img_orgion: String,
  },
  computed: {
    imageUrl() {
      return this.value;
    },
    imageName() {
      if (this.value != null && this.value !== "") {
        return this.value.substr(this.value.lastIndexOf("/") + 1);
      } else {
        return null;
      }
    },
    fileList() {
      return [
        {
          name: this.imageName,
          url: this.imageUrl,
        },
      ];
    },

    showFileList: {
      get: function () {
        return (
          this.value !== null && this.value !== "" && this.value !== undefined
        );
      },
      set: function (newValue) {},
    },
  },
  data() {
    return {
      dataObj: {
        policy: "",
        signature: "",
        key: "",
        ossaccessKeyId: "",
        dir: "",
        host: "",
        // callback:'',
      },
      dialogVisible: false,
      imgUrl: "",
    };
  },
  methods: {
    emitInput(val) {
      this.$emit("input", val);
    },
    handleRemove(file, fileList) {
      this.imgUrl="";
      this.emitInput("");
    },
    handlePreview(file) {
      this.dialogVisible = true;
    },
    beforeUpload(file) {
      let _self = this;
      return new Promise((resolve, reject) => {
        policy()
          .then((response) => {
            _self.dataObj.policy = response.policy;
            _self.dataObj.signature = response.signature;
            _self.dataObj.ossaccessKeyId = response.accessid;
            // _self.dataObj.key = response.dir + getUUID()+'_${filename}';
            //固定链接长度
            _self.dataObj.key =
              response.dir + getUUID() + "." + file.type.split("/")[1];
            // console.log(_self.dataObj.key)
            _self.dataObj.dir = response.dir;
            _self.dataObj.host = response.host;
            resolve(true);
          })
          .catch((err) => {
            console.log("出错了...", err);
            reject(false);
          });
      });
    },
    handleUploadSuccess(res, file) {
      console.log("上传成功...");
      this.showFileList = true;
      this.fileList.pop();
      this.fileList.push({
        name: file.name,
        url:
          this.dataObj.host +
          "/" +
          this.dataObj.key.replace("${filename}", file.name),
      });
      (this.imgUrl =
        this.dataObj.host +
        "/" +
        this.dataObj.key.replace("${filename}", file.name)),
        this.emitInput(this.fileList[0].url);
    },
  },
};
</script>
<style>
.list_upload .avatar-uploader .el-upload {
  border: 1px solid #e2e2e2;
  cursor: pointer;
  position: relative;
  overflow: hidden;
  box-sizing: border-box;
  border-radius: 5px;
}
.list_upload .avatar-uploader .el-upload:hover {
  border-color: #409eff;
}
.list_upload .avatar-uploader-icon {
  font-size: 28px;
  color: #8c939d;
  width: 150px;
  height: 150px;
  line-height: 150px;
  text-align: center;
}
.list_upload .avatar-uploader img {
  width: 150px;
  height: 150px;
  vertical-align: top;
}

.sku_upload .avatar-uploader .el-upload {
  border: 1px solid #e2e2e2;
  cursor: pointer;
  position: relative;
  overflow: hidden;
  box-sizing: border-box;
  border-radius: 5px;
}
.sku_upload .avatar-uploader .el-upload:hover {
  border-color: #409eff;
}
.sku_upload .avatar-uploader-icon {
  font-size: 14px;
  color: #8c939d;
  width: 50px;
  height: 30px;
  line-height: 30px;
  text-align: center;
}
.sku_upload .avatar-uploader img {
  width: 50px;
  height: 30px;
  vertical-align: top;
}

.bar_upload .avatar-uploader .el-upload {
  width: 100%;
  border: 1px solid #e2e2e2;
  cursor: pointer;
  position: relative;
  overflow: hidden;
  box-sizing: border-box;
  border-radius: 5px;
}
.bar_upload .avatar-uploader .el-upload:hover {
  border-color: #409eff;
}
.bar_upload .avatar-uploader-icon {
  font-size: 28px;
  color: #8c939d;
  width: 150px;
  height: 150px;
  line-height: 150px;
  text-align: center;
}
.bar_upload .avatar-uploader img {
  width: 100%;
  height: 150px;
  vertical-align: top;
}

.zs_bar_upload .avatar-uploader .el-upload {
  width: 100%;
  border: 1px solid #e2e2e2;
  cursor: pointer;
  position: relative;
  overflow: hidden;
  box-sizing: border-box;
  border-radius: 5px;
}
.zs_bar_upload .avatar-uploader .el-upload:hover {
  border-color: #409eff;
}
.zs_bar_upload .avatar-uploader-icon {
  font-size: 28px;
  color: #8c939d;
  width: 150px;
  height: 115px;
  line-height: 115px;
  text-align: center;
}
.zs_bar_upload .avatar-uploader img {
  width: 100%;
  height: 115px;
  vertical-align: top;
}

.card_upload .avatar-uploader .el-upload {
  width: 100%;
  border: 1px solid #e2e2e2;
  cursor: pointer;
  position: relative;
  overflow: hidden;
  box-sizing: border-box;
  border-radius: 5px;
}
.card_upload .avatar-uploader .el-upload:hover {
  border-color: #409eff;
}
.card_upload .avatar-uploader-icon {
  font-size: 28px;
  color: #8c939d;
  width: 150px;
  height: 180px;
  line-height: 180px;
  text-align: center;
}
.card_upload .avatar-uploader img {
  width: 100%;
  height: 180px;
  vertical-align: top;
}

.tabs_upload {
  text-align: center;
}
.tabs_upload .avatar-uploader .el-upload {
  border: 1px solid #e2e2e2;
  cursor: pointer;
  position: relative;
  overflow: hidden;
  box-sizing: border-box;
  border-radius: 50%;
  line-height: 50px;
}
.tabs_upload .avatar-uploader .el-upload:hover {
  border-color: #409eff;
}
.tabs_upload .avatar-uploader-icon {
  font-size: 12px;
  color: #8c939d;
  width: 50px;
  height: 50px;
  line-height: 50px;
  text-align: center;
}
.tabs_upload .avatar-uploader img {
  width: 50px;
  height: 50px;
  vertical-align: top;
  border-radius: 50%;
}

.navs_upload {
  text-align: center;
}
.navs_upload .avatar-uploader .el-upload {
  border: 1px solid #e2e2e2;
  cursor: pointer;
  position: relative;
  overflow: hidden;
  box-sizing: border-box;
  line-height: 50px;
}
.navs_upload .avatar-uploader .el-upload:hover {
  border-color: #409eff;
}
.navs_upload .avatar-uploader-icon {
  font-size: 12px;
  color: #8c939d;
  width: 50px;
  height: 50px;
  line-height: 50px;
  text-align: center;
}
.navs_upload .avatar-uploader img {
  width: 50px;
  height: 50px;
  vertical-align: top;
}
.el-upload-dragger {
  width: 150px !important;
  height: 150px;
}
.el-upload-dragger .el-upload__text1 {
  line-height: 120px !important;
  height: 75px !important;
}
.el-upload-dragger .el-upload__text2 {
  line-height: 50px !important;
  height: 75px !important;
}
.delete {
  position: absolute;
  top: 5px;
  right: 5px;
  z-index: 999;
}
</style>
