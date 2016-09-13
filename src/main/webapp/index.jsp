<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/uploadify/uploadify.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.1.0.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/uploadify/jquery.uploadify.js"></script>
</head>
<body>
	<input type="file" multiple="true" name="files" id="files">
	
	
	<a href="javascript:$('#files').uploadifyUpload()">上传</a>|
	<a href="javascript:$('#files').uploadifyClearQueue()">取消上传</a>
	
	
<script type="text/javascript">
$(function() {
	$("#files").uploadify({
		uploader:'${pageContext.request.contextPath }/uploadFile',
		auto:false,
		fileObjName,'files',
		swf:'${pageContext.request.contextPath }/uploadify/uploadify.swf',
		onUploadSuccess:function(){
			alert("上传成功");
		}
	});
});

</script>
</body>
</html>