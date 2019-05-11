<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>LIGHTBOX EXAMPLE</title> 
<style> 
  .black_overlay{ 
   display: none; 
   position: absolute; 
   top: 0%;  
   left: 0%; 
   width: 100%;  
   height: 100%; 
   background-color: black;
   z-index:1001;  
   
   opacity:.3;
   filter: alpha(opacity=80); 
		   }  
.white_content {  
	display: none; 
    position: absolute;  
    top: 10%; 
	left: 25%;  
	width: 50%;  
	height: 70%; 
	padding: 0px;  
    border: 2px solid #CCCCCC;  
    background-color:white;  
    z-index:1002; 
	overflow: auto; 
	 }  
             </style> 
</head> 
<body> 
<p>可以根据自己要求修改css样式<a href="javascript:void(0)" onmouseover="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">点击这里打开窗口</a></p> 
<div id="light" class="white_content"> 
    This is the lightbox content. 
    <a href="javascript:void(0)" onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'"> 
    Close</a></div> 
<div id="fade" class="black_overlay"> 
</div> 
</body> 
</html> 
