<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

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

	<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
	<script type="text/javascript">
	$(function(){

           $("#submit").click(function(){
                //非空验证
                    var $form=$("form").serialize();
                    alert($form);
                  $.get("borrowServlet",$form,function(data){
                      if(data=="true"){
                         alert("借阅成功");
                         window.location="index.jsp";
                      }else{
                       alert("借阅失败");
                      }
                  });
       });
       });
	</script>

  </head>
  
  <body>
  <div class="modal-body">
  	<form class="form-horizontal" action="borrowServlet">
  		<div class="panel-heading"><h2>借阅书本</h2></div>
  		<div class="form-group">
			<label class="col-sm-1 control-label">借阅人姓名:</label>
			<div id="numberbookId" class="col-sm-4">
				<input type="text" class="form-control" onfocus="numberbookFocus()" onblur="numberbookBlur()" placeholder="借阅人姓名" name="name">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label">借阅日期:</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" onfocus="namebook" placeholder="借阅日期" name="borrowDate">
			</div>
		</div>
		<div>
			<button type="button" class="btn btn-primary btn-xs" id="submit">确认</button>
			<button type="reset" class="btn btn-primary btn-xs">重置</button>
		</div>
	</form>
	</div>
	
  </body>
 </html>
