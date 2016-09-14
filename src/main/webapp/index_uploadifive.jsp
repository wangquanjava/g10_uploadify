<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 这个uploadifive需要用到$.size()方法。但是在jquery3中已经没有这个方法了。 -->
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/uploadifive_wangquan/jquery.uploadifive.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/uploadifive_wangquan/uploadifive.css">
</head>
<body>
	<input type="file" multiple="true" name="fileInput" id="fileInput">
	
	
	<a id="uploadButton" href="javascript:void(0)">上传</a>|
	<a id="cancelButton" href="javascript:void(0)">取消上传</a>
	
	
<script type="text/javascript">
$(function() {
// 	上传队列所有文件
	$("#uploadButton").click(function() {
		$("#fileInput").uploadifive('upload');
	});
	
// 	取消队列
	$("#cancelButton").click(function() {
		$("#fileInput").uploadifive('cancel');
	});
	
	//给按钮绑定对象
	$("#fileInput").uploadifive({
		uploadScript:'${pageContext.request.contextPath }/uploadFile',
		auto:false,
		fileObjName:'fileFieldName',
		multi: true,
		simUploadLimit:3,
		onUploadComplete:function(file, data, response){
			alert("上传成功，文件名是:"+JSON.parse(data).filePath);
		}
	});
});

</script>
</body>
</html>