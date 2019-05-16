<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>收货地址管理</title>
<link type="text/css" rel="stylesheet" href="PersionCenterPublic.css">

</head>
<body>
<!--数据源开始-->
<div class="datacontent">
		<div id="addressAddControl">
		<div class="datacontentTitle">邮箱绑定</div>
		<div class="datacontentLine">
        <s:form action="../obtainMobliePhoneNumberByAccount">
        <s:textfield name="obtainAddress" id="obtainAddress"></s:textfield>
        <input type="button" id="sendObtainCode" value="发送验证码"/>
		  <s:textfield name="obtainCode"  class="obtainCode"></s:textfield>
        <s:submit value="提交"></s:submit>
        </s:form>

		</div>
        </div>
		
	</div>
	<!--数据源结束-->
</body>
<script src="../jquery/jquery-1.7.2.js"></script>
<script>
	$(function(){
		
		$("#sendObtainCode").click(function(){
			var obtainAddress=$("#obtainAddress").val();
			$.ajax({
				url : "..//sendObtainCode.action",
				data : {
					"obtainAddress":obtainAddress,
					"requestPage":"EmailBind.jsp",
					},
					scriptCharset : 'utf-8',
					contentType : "application/x-www-form-urlencoded; charset=utf-8",
				type : "post",
				traditional : true,
				success : function(str) {
					
				
			}

			})
		})
		
	})
</script>
</html>