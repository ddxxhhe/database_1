<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<!-- Bootstrap Core CSS -->
	<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet">
	
	<!-- MetisMenu CSS -->
	<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet">
	
	<!-- DataTables CSS -->
	<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet">
	
	<!-- Custom CSS -->
	<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet">
	
	<!-- Custom Fonts -->
	<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet"
		type="text/css">
	<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet"
		type="text/css">
	
	<style type="text/css">
	
		#qrcode-wrapper{
			position:relative;
			left:630px;
			top:1200;
		}
		
		#xinzeng{
			margin-left:1250px;
		}
		
	</style>
	
  </head>
  
  <body>
  
  	<c:if test="${list==null}">
     <jsp:forward page="selectServlet"></jsp:forward>
    </c:if>
    
    <table class="table table-hover table-striped">
		
		<!-- 表格 -->
    	<div class="panel-heading"><h2>电子图书列表</h2></div>
   		<form class="form-horizontal", action="selectTitleServlet">
   			<div class="form-group">
   				<label class="col-sm-2 control-label" style="font-size:16px;text-align: right; height: 20px;width: 100px">查询图书:</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" onfocus="namebook" placeholder="书本名称" name="title">
				</div>
				<div>
				<button type="submit" class="btn btn-primary" id="enter">确定</button>
				<a href="insert.jsp"><input id="xinzeng" class="btn btn-primary" type="button" value="新增图书"></a>
   				</div>
   			</div>
  		</form>
  	
    	<tr><td>书品编号</td><td>书名</td><td>摘要</td><td>上传人</td><td>上传时间</td><td>操作</td></tr>
    	<c:forEach items="${list}" var="gd">
          <tr>
          	<td>${gd.categoryId}</td>
          	<td>${gd.title}</td>
          	<td>${gd.summary}</td>
          	<td>${gd.uploaduser}</td>
          	<td>${gd.createdate }</td>
          	<td><a href="borrow.jsp"><input class="btn btn-success btn-xs" type="button" value="借阅"></a></td>
          	<td><a href="idServlet?id=${gd.id}"><input class="btn btn-primary btn-xs" type="button" value="修改"></a></td>
          	<td><a href="deleteServlet?id=${gd.id}"><input class="btn btn-danger btn-xs" type="button" value="删除"></a></td>
          </tr>
       </c:forEach>
    	
    	<div>
    		
    	</div>
    	
    </table>
    
    <!-- jQuery -->
	<script src="<%=basePath%>js/jquery.min.js"></script>
	
	<!-- QRCode -->
	<script src="<%=basePath%>js/jquery-1.11.1.js"></script>
	<script src="<%=basePath%>js/jquery.qrcode.js"></script>
	<script src="<%=basePath%>js/qrcode.js"></script> 
	<script src="<%=basePath%>js/utf.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="<%=basePath%>js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="<%=basePath%>js/metisMenu.min.js"></script>

	<!-- DataTables JavaScript -->
	<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
	<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="<%=basePath%>js/sb-admin-2.js"></script>
   
  </body>
</html>
