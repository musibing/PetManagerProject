<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript">
//得到触发事件的控件
function test(obj){
//下面这种方式用来检测到底是哪个空间触发的事件的工具
  alert(window.event.srcElement.name);
}
</script>
</head>
<body>
  <input type="button" value="test" name="data1" onclick="test(this)"/>
  <button type="button" value="test" name="data2" onclick="test(this)">ddddd</button>
  <span type="button" value="test"  name="data3" onclick="test(this)">span</span>
</body>
</html>