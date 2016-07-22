<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>商品评价3</title>
<link href="${base}/res/css/user.css" rel="stylesheet" type="text/css" />
<style>
	/* 上传图片标签 */
	.addImg {
		display: block;
		width: 80px;
		margin-top: 5px;
		height: 80px;
		line-height: 80px;
		border: 1px solid #ccc;
		color: #999;
		text-align: center;
	}
	 a:visited {color: #999} 
	 .img_li{
	 	display: inline; 
	 	padding: 10px;
	 }
	 .img_ul{
	 	padding-top: 10px;
	 }
</style>
<link href="${base}/res/html5/css/bootstrap.min.css" type=text/css rel=stylesheet>
<link href="${base}/res/html5/css/reset.css" type=text/css rel=stylesheet>
<link href="${base}/res/html5/css/base.css" type=text/css rel=stylesheet>
<script src="${base}/res/html5/js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="${base}/res/html5/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${base}/res/html5/js/jQuery.fontFlex.js" type="text/javascript"></script>
<!-- 手机端弹出框开始 -->
<script src="${base}/res/html5/js/mobile/layer.m.js" charset="utf-8"></script>
<!-- 手机端弹出框结束 -->
<script type="text/javascript" src="${base}/res/js/ajaxfileupload/ajaxfileupload.js" charset="utf-8"></script>
</head>
<body class="bgsheng">
<div class="container-fluid tcolor bgtop">
	<div class="row padding5 stitle">
    <div class="col-sm-3 col-xs-3">
    	<a href="javascript:history.go(-1);" class="f36"><i class="glyphicon glyphicon-menu-left tcolor"></i></a>
    </div>
    <div class="col-sm-6  col-xs-6 text-center">
    	 <span class="f36">商品评价</span>
    </div>
    </div>
</div>
<!--顶部完成 -->
<div class="lr12 bgwhite">
<div class="container-fluid">
	<div class="row">
    	<table class="table table-condensed" id="basetables">
         <tr>
	         <td width="28%">
		         <a href="${base}/m/goods/goodsdetail?id=${orderGoods.goodsId}" target="_blank" title="${orderGoods.goodsName}">
		         	<img src="${base}/upload/${orderGoods.goodsImage}" alt="${orderGoods.goodsName}" class="img-responsive" />
		         </a>
	         </td>
	         <td width="72%">
		         <p class="top5">
		         	<a href='${base}/m/goods/goodsdetail?id=${orderGoods.goodsId}' class="f26 color030303">${orderGoods.goodsName}</a>
		         </p>
		         <p class="f22 bao top10">
			         <span class="pull-left">
					     <font class="price">￥${orderGoods.goodsPrice}</font>
			         </span>
			         
		         </p>
	         </td>
         </tr>
        </table>
    </div>
     
</div>
</div>

 
<div class="top10 bgwhite">
 <div class="lr12 padding10">
	<textarea class="form-control"  style="min-height:65px;" placeholder="快来写下你的评论吧！" name="" class="textarea" id="content"></textarea>
 </div>
 <div class="clear"></div>
  <p class="btns">
      <label ><input class="checkbox" type="checkbox" name="" id="isAnonymous"/>匿名评价</label>
      
  </p>
 <div class="container-fluid rowtopborder">
 	<div class="row padding10 top10">
    	<div class="col-sm-12">
    		<span class="f26 black">整体评价：</span>
	          <div class="commstar-mod">	
                    <span class="commstar" id="goodsScore">
                        <a href="javascript:;" class="star"></a>
                        <a href="javascript:;" class="star"></a>
                        <a href="javascript:;" class="star"></a>
                        <a href="javascript:;" class="star"></a>
                        <a href="javascript:;" class="star"></a>
                    </span>
                    <span class="degree">很差</span>
           	 </div> 
        </div>
    </div> 
    <div class="row text-center padding10 bottom15">
    	 <div>
         	<table>
         		<tr>
         			<td><ul class="img_ul" id="review_img"></ul></td>
         			<td>
         				<a class="addImg" href="#none" style="position: relative; z-index: 1;text-decoration:none;">添加图片
            		<input type="file" onChange="ajaxImageUploads('myBlogImage1')" style="opacity:0; top:0; left:0; width:100%; height:100%; margin:0; position:absolute;" id="myBlogImage1" name="myfiles" class="file" multiple="multiple"/>
            	</a>
         			</td>
         		</tr>
         	</table>
         </div>
         
    </div>
    <h3 class="f26 black">对店铺信息及服务评分：</h3>
                <div class="reviews-shopinfo">
                    <div class="shop-score">
                        <h5><a href="${base}/store/shop?storeId=${storeVo.storeId}" target="_blank">${storeVo.storeName}</a></h5>
                        <ol>
                            <li>商品评分：<b>${evaluateStore.sevalDesccredit}分</b></li>
                            <li>服务评分：<b>${evaluateStore.sevalServicecredit}分</b></li>
                            <li>时效评分：<b>${evaluateStore.sevalDeliverycredit}分</b></li>
                        </ol>
                    </div>
                    <dl>
                        <dt>宝贝与描述相符：</dt>
                        <dd><div class="commstar-mod">
                            <span class="commstar" id="desccredit">
                                <a href="javascript:;" class="star"></a>
                                <a href="javascript:;" class="star"></a>
                                <a href="javascript:;" class="star"></a>
                                <a href="javascript:;" class="star"></a>
                                <a href="javascript:;" class="star"></a>
                            </span>
                            <span class="degree">很差</span>
                        </div></dd>
                        <dt>卖家的服务态度：</dt>
                        <dd><div class="commstar-mod">
                            <span class="commstar" id="servicecredit">
                                <a href="javascript:;" class="star"></a>
                                <a href="javascript:;" class="star"></a>
                                <a href="javascript:;" class="star"></a>
                                <a href="javascript:;" class="star"></a>
                                <a href="javascript:;" class="star"></a>
                            </span>
                            <span class="degree">很差</span>
                        </div></dd>
                        <dt>卖家的发货速度：</dt>
                        <dd><div class="commstar-mod">
                            <span class="commstar" id="deliverycredit">
                                <a href="javascript:;" class="star"></a>
                                <a href="javascript:;" class="star"></a>
                                <a href="javascript:;" class="star"></a>
                                <a href="javascript:;" class="star"></a>
                                <a href="javascript:;" class="star"></a>
                            </span>
                            <span class="degree">很差</span>
                        </div></dd>
                    </dl>
                </div>
    
 </div>
</div>

<div class="h40"></div>
<form method="post" id="evaluate">
   <input type="hidden" name="orderSn" value="${orderSn}"/>
   <input type="hidden" name="recId" value="${recId}"/>
    <input type="hidden" name="specInfo" value="${specInfo}"/>
   <input type="hidden" name="gevalScore" id="gevalScore"/>
   <input type="hidden" name="gevalContent" id="gevalContent"/>
   <input type="hidden" name="gevalIsAnonymous" id="gevalIsAnonymous"/>
   <input type="hidden" name="sevalDesccredit" id="sevalDesccredit"/>
   <input type="hidden" name="sevalServicecredit" id="sevalServicecredit"/>
   <input type="hidden" name="sevalDeliverycredit" id="sevalDeliverycredit"/>
</form>
<div class="lr12 top25 padding10 text-center padding10">
	<button type="button" class="btn btn-danger btn-block" onclick="subForm()">确认评价</button>
</div>

<script src="js/font.js" type="text/javascript"></script>
<script type="text/javascript">
$(function(){
    $(".star").mouseenter(function(){
        $(this).addClass("active");
        $(this).prevAll(".star").addClass("active");
        var degree = $(this).parent().find(".active").length;
        if(degree < 2){
            $(this).parent().next("span").text("很差");
        }else if(degree < 4){
            $(this).parent().next("span").text("一般");
        }else{
            $(this).parent().next("span").text("很好");
        }
    })
    $(".star").click(function(){
        $(this).addClass("active");
        $(this).prevAll(".star").addClass("active");
        $(this).nextAll(".star").removeClass("active");
        var degree = $(this).parent().find(".active").length;
        if(degree < 2){
            $(this).parent().next("span").text("很差");
        }else if(degree < 4){
            $(this).parent().next("span").text("一般");
        }else{
            $(this).parent().next("span").text("很好");
        }
    });
    
});

//删除上传的图片
function deletePhoto(obj){
	$(obj).parent().remove();
}

/*上传评论图片*/
function ajaxImageUploads(myBlogImage){
	var imgNo = $("#review_img").find("li").length;
	$.ajaxFileUpload({
        //处理文件上传操作的服务器端地址(可以传参数,已亲测可用)
        url:"${base}/m/authc/buyer/imageFileUpload",
        secureuri:false,                       //是否启用安全提交,默认为false
        fileElementId:myBlogImage,           //文件选择框的id属性
        dataType:'json',                       //服务器返回的格式,可以是json或xml等
        data:{imgNo:imgNo},						   //已上传的图片数量
        success:function(data, status){        //服务器响应成功时的处理函数
            if(data.success){
            	var count = parseInt(data.listimgSize);
            	var strs01 = data.photoNewName.split(",");
            	var imgBasePath = '${imgServer}'
            	var imgPath = data.imgPath;
            	for(var i = 0; i < count; i++){	         
            		var photoSrc01 = imgPath + "/" + strs01[i];
            		var photoServcerSrc = imgBasePath + imgPath + "/" + strs01[i];
            		$("#review_img").append("<li class='img_li'><img style='width:82px;height:82px' src='"+photoServcerSrc+"'/><a href='javascript:void(0)' imageSrc='"+photoSrc01+"' id='deletePhoto' onclick='deletePhoto(this)'> 删除</a></li>");
            	}
            }else{
            	layer.open({content:'最多上传三张图片!', time: 1});
            }
        },
        error:function(data, status, e){ //服务器响应失败时的处理函数
        	layer.open({content:'图片上传失败，请重试！!', time: 1});
        }
    });
}

function subForm(){
	$("#gevalScore").val($("#goodsScore").find(".active").length);
    $("#gevalContent").val($("#content").val());
    $("#sevalDesccredit").val($("#desccredit").find(".active").length);
    $("#sevalServicecredit").val($("#servicecredit").find(".active").length);
    $("#sevalDeliverycredit").val($("#deliverycredit").find(".active").length);
    if($("#isAnonymous").is(":checked")){
        $("#gevalIsAnonymous").val(1);
    }else{
        $("#gevalIsAnonymous").val(0);
    }
    //商品多图
	var goodsImageMore = "";
	$("[name=deletePhoto]").each(function(){
		goodsImageMore += $(this).attr("imageSrc") + ",";
	});
	var data = "goodsImageMore="+goodsImageMore+"&"+$("#evaluate").serialize();
    $.ajax({
        url : '${base}/m/authc/buyer/saveReviews',
        data : data,
        dataType : 'json',
        success : function(data){
            if(data.success){
            	layer.open({content:data.msg, time: 1});
            	//layer.msg(data.msg , {icon:1});
                setTimeout("ok()", 2000);
            }else{
            	layer.open({content:data.msg, time: 1});
            }
        }
    })
}

function ok(){
	window.location.href='${base}/m/authc/buyer/orderList?orderState=40';
}
</script>

</body>
</html>
