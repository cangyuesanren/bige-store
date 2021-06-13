<template>
  <div>
    <el-upload
      class="avatar-uploader"
      :action="dataObj.host"
      :data="dataObj"
      :show-file-list="false"
      :before-upload="beforeUpload"
      :on-success="handleUploadSuccess"
      accept="video/avi,video/mpg,video/wmv,video/rmvb,video/mov,video/flv,video/mp4,video/3gp,"
      drag
    >
      <!-- accept="video/avi,video/mpg,video/wmv,video/rmvb,video/mov,video/flv,video/mp4,video/3gp,"-->

      <video controls=""  autoplay="" name="media"  v-if="value">
        <source :src="value" type="video/mp4">
      </video>
      <template v-else>
        <div class="el-upload__text el-upload__text1">将视频拖到此处，或</div>
        <div class="el-upload__text el-upload__text2"><em>点击上传</em></div>
      </template>
      <el-image class="img-loading" v-if="loading=='loading'" style="width: 58rpx;height: 58rpx;" :src="loadingImg"></el-image>
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
      loading: "more",      //就绪:more,加载中loading
      loadingImg: "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6QzlBMzU3OTlEOUM0MTFFOUI0NTZDNERBQURBQzI4RkUiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6QzlBMzU3OUFEOUM0MTFFOUI0NTZDNERBQURBQzI4RkUiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpDOUEzNTc5N0Q5QzQxMUU5QjQ1NkM0REFBREFDMjhGRSIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpDOUEzNTc5OEQ5QzQxMUU5QjQ1NkM0REFBREFDMjhGRSIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/Pt+ALSwAAA6CSURBVHja1FsLkFZVHb98LM+F5bHL8khA1iSeiyQBCRM+YGqKUnnJTDLGI0BGZlKDIU2MMglUiDApEZvSsZnQtBRJtKwQNKQMFYeRDR10WOLd8ljYXdh+v8v5fR3Od+797t1dnOnO/Ofce77z+J//+b/P+ZqtXbs2sJ9MJhNUV1cHJ06cCJo3bx7EPc2aNcvpy7pWrVoF+/fvDyoqKoI2bdoE9fX1F7TjN8a+EXBn/fkfvw942Tf+wYMHg9mzZwfjxo0LDhw4EPa1x2MbFw/fOGfPng1qa2tzcCkILsLDydq2bRsunpOTMM7TD/W/tZDZhPdeKD+yGxHhdu3aBV27dg3OnDlzMVANMheLAO3btw8KCwuDmpoaX5OxbgUIMEq7K8IcPnw4KCsrC/r37x8cP378/4cAXAB3vqSkJMuiDhTkw+XcuXNhOWbMmKBly5YhUT8xArhyFvP0BfwRsAuwxJZJsm/nzp2DTp06he/OU+cZ64K6o0ePBkOHDg2GDx8e6gEbJ5Q/NHNuAJQ1hgBeHUDlR7nVTkY8rQAvAi4z34vR/mPs1FoRsaCgIJThI0eOBC1atEiFGGV+5MiRoS45efJkqFjJFXV1dQuA012m2WcwTw98fy6CqBdsaiIO4CScrGPHjvk4odhavPquRtFWXEC25VgkREKOCh/qDSq+vn37htzD/mZTOmOc5U7zKzBPEedygWshcDyWvs30igAbU+6oyMgJBCFhwQE0fccxN60Ay9iebbjoDh06hMowjQxT4fXq1SskArmHZpkArvixp/kWzHdMeArExSJEaiXIjjRjRJ4DaAGWpibLzXN3Fm1vA5teBgh3j1Rv3bp1YgKwPdmf2p9zcyNYYgPKMfY0T5f5nNYdw158nJ8QawW4CLKwiOBSEgO/hok2eBydR+3dYH+PLxA5J8Vv0KBBwenTp0P2JWAx6+yFEBfs8lMY+y0SWMBNI9E4ThKi58VKTg3FQZS1RQF1cz27eC0QHMu+3E0SkUowjhVt5VdaWhp07949ZHv2Qd1EjDXM2cla1M0nl3GxAs3J9yREzyTdFVKVFOaE9qRA8GM0WebRuo9JGZKA7Mv2SeS/Z8+eoQ9BArMfFrLGo6jvxbhHbJZnKX2Rzz1O7QhJJ9Cs2ZMaWIyq/zhdeqPNfIoHd58clIQD+JSXl4dKlyIAuBdVXZwFVWKspSSoxE++h8x4k3uCnEhE4I5KwRiFWGOU0QWKiCYLbdoRMRKAu2kQ9vkfLU6dOhX06NEjlH+yMRZSinnuyWnYosVcji8CEA/6Cg2JF+IIUBqnGKUTCNwtwBN4f89RiK1R96DEgO2o0NDmtEdvVFdVVYV+P3UAPUEs6GFwV3PHmXkD4vh74iDFJysVI/MlaQhwKeBNTLYX5VuA8T4/gZxA4MRGFxDB6R7OmYPfyykGRJbyie+XnGYnQIC/coH9+vULiYrxrkL9ZA9+0ykaHIfEpM7ge8TiJ2CsHYwyMfafAF1yCGBHYIbCVDjDjKt7BeB51D+LgQa6OkG7IDYEEtvQ7lnXLKLtLdLuJBpE4gPUXcW2+PkZwOex+4cGDhwYDBkyRL7/HFcEwUGPo/8uWRUpYnfxGHco8HkewLHLyYmAawAPuIFZxhOpDfJQ8gbUv41yORAptMWBNr6oqMhWird5+u+iHmBb2nhjDV7HWBNQTgK8y11l5NetWzc5ULscAtSj7nbNI0skhWeUZCc0W4nyH/jO4Vz0u1IeYhbk4AiwM6tjxIWByHsoZ9qcIBPJd/y+DwPfBESOmCa/QF3WiZHucLlEDpNxcNhmheEOPgdQNx6/VZFQzFZ5TN08AHXQt2Ii3EdyFuUsPtTcGPhW5iMiCNELvz+Gdn9huG4HUJaW/w3g0wxV0XaG7arG2WeKiUWYM4Y7GO5ezshTARbbWGw/DvXkpp/ivVvE0JVoMxN4rpGzJMhE5Pl+xlATsDIqikP9F9D2z3h9nOksEUFhK+qO4rcPkoalMQ/HqJLIyb3F3JdjrCcw1yZ8joyJLR5gCo54etlag7qIoeNh1N1BRYj3DTFJ0elotxPlVzkGuYAmL0VSJVGAJA41c4Z6A3BzTLfn0HYwYKEI6CUAMzZEWvLsIcQOo1AmmyyM72nHJCfYsogflGV6jEk9vyQZXSuq6w4c16NsGcGZbwOPr+H1RkOk2LEzjNepxQkihHSCQ4ynAYNRx2zMKV92CQMWqj8J0BRE8EShxRFN6YrfCRhC0x3r/Zm4IbQCcmJoV0kMamllccR6FjHqUC5F2R/wS2dcymOlfAKOS4KmzQb5cpNC2MC7JhVn5wjXoJ44rYhLh8n0eXOCorJxa7POjbSlCGVczr34/RsAmrcvo9s+wGp3tzVhntxiXiJ4nvEYb4FJkf0O8HocAePmLvCxnL0AORraVekJk6TYjDabRVXfRE2lCN1h6ZQRN1+InUbsCpKwoBZHh0dODN9JBCUffItXxEavTQkUtnfTVAplCWL3JISz29h4NjotnuSsQKJCk8dF+kJR6RARjrqFVmfPnj3ZbK8cIJ0msd6jgHPGtfVTQ8VLmlvh4mct9sobRmPic0DyDQQnx/NlfYUgyz59+oScsH379pAwXABD32nTpoUHIToESeI5mnbE/UqDdyLcafEBf2MCqgC7NwxIbMREJQ0g4D4sfJwnD+AmRrII05cfMWJE+L1169bQr+fip06dGp4oJ83lmYd5wj/EmMa4TaHivo4EeCguYZBnkB5g2aWA69OIEnUHOaGysjIYMGBAMGnSpODYsWPZwCpFmm4lNq+4gSLQA7jcX8DwtjEyRC8wjabnXEx9kfWnTJkSJkAo90xpJVV+FmcVNeYAF5zWngS4C4O91MBxmAv8blLEpbjI5sz9MTdAhcgkCT1RO8mZkAjfiYpTEvStAS53Uw1vAiUGgZ3GpuQEYvoiBqlIan7kSDHnTwJQFNiPu0+5VxCVYhcZIjNrdXUDdp+Eq5AZ3Gkg8QAyVZRZIk4Tl4QAbF9cXJxNYZMAtAokgs4BrNxEpCtteXg7DDTMDKYNSuQdKsnJBek7HxewvxaosWxLYXtw+cJp18217wql4aKCfBNoEu0O5VU+PhctJ0YeXD4C6JQpyrlpSLTojpGGGN5YwNziChdIZLk4lvLcFJ9jMX3QdiImY9bmGQU+TRUL5CHITTRlgF8D9ouD1MfmLoEPl5xokIumZ2cfgMpHt47IW9N64Hsh7wQYYjyIugWuF5fCqYncXRd5vPMWyizzvhi/32+nvG0dZc9vR6fZOu0md5e+uC408FvKSIOZwXlGvxPv95izA2Vtvg1xKFWARI+vMX66HUhpQQb643uW1bSjuTWyw2SBvDrBvjFic1eGGlz5esq3ko9uSIlBRqPuFcCv8F4WIcN12nVaBd0SaYwI6PDDImR11JkqgHcPmQssjxIn6bUshygDFJUTxPMpHk+jfjPgupgdnYV2R/g7xSjtpah8RJBewhwf0gGK6XI92u4wXFEU40afJ4DN4h5LcAd+40HI3JgJecuT0c062W0i2hQJUTcxan3/CMW1PF2K6bbA+Daz4xRs1D3Br1Cm0OihKCqizW78/nXAF/G5TXrEcVzaNMH6CyMswqsAHqDyDLEyou8lwOXnKF8DjI6KjV3KzMBiXkDH8ij/H214J5A596ekrZ3F0zXlWeL7+P5eUrNo3/QwC15uxthuzidy7DzKRwEDaAViiDgKbTbz7CJnzo0bN7pIfIiid8SuPwn25o3QCmpnyjlZkyxPP8EomCJzrGb7GJMx7tNsq4MT2xMUYaiErZOluTzKsnz3gwCeCZyVRZJfYplNEokEjwrPtxlxjeYAk+F1F74VAzPxQRNYYdtpOUvWs8J1sGhBJMNsb7igN8plJs1eSmLIhLKE4rvaCX27gOhLpLOsIzJ7qn/i+wZzcvSOZ23/du8TZjwV8zHIXoP4R3ifBxiFz1dcVpa3aPntPE+c6TmIWE9EtcMmAcPdWAhYhAXxcLOQi9L1WhD1Sc8p1d2oL7XGiRKp8F4A2i8K/nfI+y/gsTDJ/YC/8+AD5Uh04KHiGl+cIFPnBDDrPMjwRGkLXyxO4VGbfQWnDH2v0bVWE3C9QOXlepbgjEfIJQI6XDG3z5ahD9cw2pS78ipB85wyScNTvsVzlzzhL8/jRrnmVjfFJK/m3m4nj9vbgQTguT8XZTjsm672R5uJKEaQmBI/c58gyus8ZDagLpEVSJBIyHp4jn++xqPV71OgQgJYEWOtZ/haxRtKmWOBu8xdBLftWltsY84zE6WIEy/eIOWL+BaayMx+KHtL7EAkqdNDLiEXmEMUHniedtJqg9HmZtfvt26vNi0BdG3Ft3g8ZOf7PAu59TxtzivLNIekyi+wD1i8CuUiD9FXAa8C+/xS3JPmZnomyc7H+fb4/Se0bk41Fel621r4cgVxbq91V4jVqwB7HTe2M7jgB+QWHavZkDRPmZcASoZEmBx6i75bGjPcMdL4/VKGFAGWZkGzPG0XAbdL9A81G5LOmUnC9hHKJeO7dcUMjblSl12867ElFTtaGl20xvvLGPdVz/8TVuU7y0x1PG7vtNg24oz9Uo/Z412++VFWI7Fcog9tu9Lm6gvRmIPv9x1xmQAu6RDkXtbOtlGEmpgD5Nvnyc0dcv0EE6cfdi1HmhMf9wDF3k3gtRvEedhxjpgfqPb9PU9iEJHnyOUA7bQUXh6kq/D7l2iTjWv7XOD530BDr8jIrus+srXjt4MzumJMHuTsBa63YKE1+RR5lBjEikCCnWKWiHdzOgKO+nRIBAF88za/IFmJ3eMZov4CYxGBabcpGL8EYx+SeMXJeRwHNsV/h+vdxeuhEpN3ZyNY78Gm2fknJxVGhyjixPiQvVkNzT1elD9Py/aTAL64Hb9vcYmC9zfdXdT/C1LeGbg4rnBaAihDFJH12W5ulfNCNe/xTsP3bp8ikzJs5BF+5PNfAQYAPaseTdsEcaYAAAAASUVORK5CYII=",

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
      console.log(file);
      console.log(file.size);
      console.log(1024*1024*20);

      if(file.size>20*1024*1024){
        this.msgError("视频不能超过20M")
        return ;
      }
      let _self = this;
      return new Promise((resolve, reject) => {
        policy().then((response) => {
            this.loading = "loading";
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
            this.loading = "more";
            /*console.log("出错了...", err);*/
            reject(false);
          });
      });
    },
    handleUploadSuccess(res, file) {
      /*console.log("上传成功...");*/
      this.loading = "more";
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
<style lang="scss">
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
.video_upload{
  width: 500px;
  video{
    width: 150px;
    max-height: 150px;
    //max-width: 300px;
  }
}
.img-loading{
  //background-color: green;
  position: absolute;
  top: 5px;
  left: 40px;
  margin-top: 35px;
  animation: loading-android 1s 0s linear infinite;
}
@keyframes loading-android {
  0% {
    transform: rotate(0deg);
  }
  100% {
    transform: rotate(360deg);
  }
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
  //min-width: 150px !important;
  width: 300px;
  min-height: 150px;
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
