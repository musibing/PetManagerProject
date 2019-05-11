<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="tex=
t/html; charset=utf-8">
<script src="../jquery/jquery-1.7.2.js"></script>
<script>
$(function() {
	
		 $("#getAllHerf").click(function() {
			 var HerfData = [];
			 
 
							var $InputUrlPaht = $("#contents").find("a");;
							
							for(var a=0;a<$InputUrlPaht.lenght;a++){
								HerfData[i]=$InputUrlPaht.eq(a).attr("href");
								
							}
							alert(1);
							$.ajax({
								url : "..//GetAllLinkAddress.action",
								data : {"HerfData" : HerfData},
								traditional:true,
								type:"post",
								success:function(str){
								
							
									}
							})
						})
})
</script>
	<title>Central Repository: com/fasterxml/jackson/module/jackson-module-jax=
b-annotations/2.4.3</title>
	<meta name="viewport" content="width=device-width, initial-scale=1=
.0">
	<style>
body {
	background: #fff;
}
	</style>
</head>

<body>
	
<pre id="contents">
		<a href="http://repo1.maven.org/maven2/com/fasterx=
ml/jackson/module/jackson-module-jaxb-annotations/">../</a>
<a href="http://repo1.maven.org/maven2/com/fasterxml/jackson/module/jacks=
on-module-jaxb-annotations/2.4.3/jackson-module-jaxb-annotations-2.4.3-java=
doc.jar" title="jackson-module-jaxb-annotations-2.4.3-javadoc.jar">jackso=
n-module-jaxb-annotations-2.4.3-javadoc...</a>  2014-10-04 16:00    106044 =
    =20
<a href="http://repo1.maven.org/maven2/com/fasterxml/jackson/module/jacks=
on-module-jaxb-annotations/2.4.3/jackson-module-jaxb-annotations-2.4.3-java=
doc.jar.asc" title="jackson-module-jaxb-annotations-2.4.3-javadoc.jar.asc=
">jackson-module-jaxb-annotations-2.4.3-javadoc...</a>  2014-10-04 16:00   =
    819     =20
<a href="http://repo1.maven.org/maven2/com/fasterxml/jackson/module/jacks=
on-module-jaxb-annotations/2.4.3/jackson-module-jaxb-annotations-2.4.3-java=
doc.jar.asc.md5" title="jackson-module-jaxb-annotations-2.4.3-javadoc.jar=
.asc.md5">jackson-module-jaxb-annotations-2.4.3-javadoc...</a>  2014-10-04 =
16:00        32     =20
<a href="http://repo1.maven.org/maven2/com/fasterxml/jackson/module/jacks=
on-module-jaxb-annotations/2.4.3/jackson-module-jaxb-annotations-2.4.3-java=
doc.jar.asc.sha1" title="jackson-module-jaxb-annotations-2.4.3-javadoc.ja=
r.asc.sha1">jackson-module-jaxb-annotations-2.4.3-javadoc...</a>  2014-10-0=
4 16:00        40     =20
<a href="http://repo1.maven.org/maven2/com/fasterxml/jackson/module/jacks=
on-module-jaxb-annotations/2.4.3/jackson-module-jaxb-annotations-2.4.3-java=
doc.jar.md5" title="jackson-module-jaxb-annotations-2.4.3-javadoc.jar.md5=
">jackson-module-jaxb-annotations-2.4.3-javadoc...</a>  2014-10-04 16:00   =
     32     =20
<a href="http://repo1.maven.org/maven2/com/fasterxml/jackson/module/jacks=
on-module-jaxb-annotations/2.4.3/jackson-module-jaxb-annotations-2.4.3-java=
doc.jar.sha1" title="jackson-module-jaxb-annotations-2.4.3-javadoc.jar.sh=
a1">jackson-module-jaxb-annotations-2.4.3-javadoc...</a>  2014-10-04 16:00 =
       40     =20
<a href="http://repo1.maven.org/maven2/com/fasterxml/jackson/module/jacks=
on-module-jaxb-annotations/2.4.3/jackson-module-jaxb-annotations-2.4.3-sour=
ces.jar" title="jackson-module-jaxb-annotations-2.4.3-sources.jar">jackso=
n-module-jaxb-annotations-2.4.3-sources...</a>  2014-10-04 16:00     22773 =
    =20
<a href="http://repo1.maven.org/maven2/com/fasterxml/jackson/module/jacks=
on-module-jaxb-annotations/2.4.3/jackson-module-jaxb-annotations-2.4.3-sour=
ces.jar.asc" title="jackson-module-jaxb-annotations-2.4.3-sources.jar.asc=
">jackson-module-jaxb-annotations-2.4.3-sources...</a>  2014-10-04 16:00   =
    819     =20
<a href="http://repo1.maven.org/maven2/com/fasterxml/jackson/module/jacks=
on-module-jaxb-annotations/2.4.3/jackson-module-jaxb-annotations-2.4.3-sour=
ces.jar.asc.md5" title="jackson-module-jaxb-annotations-2.4.3-sources.jar=
.asc.md5">jackson-module-jaxb-annotations-2.4.3-sources...</a>  2014-10-04 =
16:00        32     =20
<a href="http://repo1.maven.org/maven2/com/fasterxml/jackson/module/jacks=
on-module-jaxb-annotations/2.4.3/jackson-module-jaxb-annotations-2.4.3-sour=
ces.jar.asc.sha1" title="jackson-module-jaxb-annotations-2.4.3-sources.ja=
r.asc.sha1">jackson-module-jaxb-annotations-2.4.3-sources...</a>  2014-10-0=
4 16:00        40     =20
<a href="http://repo1.maven.org/maven2/com/fasterxml/jackson/module/jacks=
on-module-jaxb-annotations/2.4.3/jackson-module-jaxb-annotations-2.4.3-sour=
ces.jar.md5" title="jackson-module-jaxb-annotations-2.4.3-sources.jar.md5=
">jackson-module-jaxb-annotations-2.4.3-sources...</a>  2014-10-04 16:00   =
     32     =20
<a href="http://repo1.maven.org/maven2/com/fasterxml/jackson/module/jacks=
on-module-jaxb-annotations/2.4.3/jackson-module-jaxb-annotations-2.4.3-sour=
ces.jar.sha1" title="jackson-module-jaxb-annotations-2.4.3-sources.jar.sh=
a1">jackson-module-jaxb-annotations-2.4.3-sources...</a>  2014-10-04 16:00 =
       40     =20
<a href="http://repo1.maven.org/maven2/com/fasterxml/jackson/module/jacks=
on-module-jaxb-annotations/2.4.3/jackson-module-jaxb-annotations-2.4.3.jar"=
 title="jackson-module-jaxb-annotations-2.4.3.jar">jackson-module-jaxb-an=
notations-2.4.3.jar</a>         2014-10-04 16:00     31946     =20
<a href="http://repo1.maven.org/maven2/com/fasterxml/jackson/module/jacks=
on-module-jaxb-annotations/2.4.3/jackson-module-jaxb-annotations-2.4.3.jar.=
asc" title="jackson-module-jaxb-annotations-2.4.3.jar.asc">jackson-module=
-jaxb-annotations-2.4.3.jar.asc</a>     2014-10-04 16:00       819     =20
<a href="http://repo1.maven.org/maven2/com/fasterxml/jackson/module/jacks=
on-module-jaxb-annotations/2.4.3/jackson-module-jaxb-annotations-2.4.3.jar.=
asc.md5" title="jackson-module-jaxb-annotations-2.4.3.jar.asc.md5">jackso=
n-module-jaxb-annotations-2.4.3.jar.asc...</a>  2014-10-04 16:00        32 =
    =20
<a href="http://repo1.maven.org/maven2/com/fasterxml/jackson/module/jacks=
on-module-jaxb-annotations/2.4.3/jackson-module-jaxb-annotations-2.4.3.jar.=
asc.sha1" title="jackson-module-jaxb-annotations-2.4.3.jar.asc.sha1">jack=
son-module-jaxb-annotations-2.4.3.jar.asc...</a>  2014-10-04 16:00        4=
0     =20
<a href="http://repo1.maven.org/maven2/com/fasterxml/jackson/module/jacks=
on-module-jaxb-annotations/2.4.3/jackson-module-jaxb-annotations-2.4.3.jar.=
md5" title="jackson-module-jaxb-annotations-2.4.3.jar.md5">jackson-module=
-jaxb-annotations-2.4.3.jar.md5</a>     2014-10-04 16:00        32     =20
<a href="http://repo1.maven.org/maven2/com/fasterxml/jackson/module/jacks=
on-module-jaxb-annotations/2.4.3/jackson-module-jaxb-annotations-2.4.3.jar.=
sha1" title="jackson-module-jaxb-annotations-2.4.3.jar.sha1">jackson-modu=
le-jaxb-annotations-2.4.3.jar.sha...</a>  2014-10-04 16:00        40     =
=20
<a href="http://repo1.maven.org/maven2/com/fasterxml/jackson/module/jacks=
on-module-jaxb-annotations/2.4.3/jackson-module-jaxb-annotations-2.4.3.pom"=
 title="jackson-module-jaxb-annotations-2.4.3.pom">jackson-module-jaxb-an=
notations-2.4.3.pom</a>         2014-10-04 16:00      4313     =20
<a href="http://repo1.maven.org/maven2/com/fasterxml/jackson/module/jacks=
on-module-jaxb-annotations/2.4.3/jackson-module-jaxb-annotations-2.4.3.pom.=
asc" title="jackson-module-jaxb-annotations-2.4.3.pom.asc">jackson-module=
-jaxb-annotations-2.4.3.pom.asc</a>     2014-10-04 16:00       819     =20
<a href="http://repo1.maven.org/maven2/com/fasterxml/jackson/module/jacks=
on-module-jaxb-annotations/2.4.3/jackson-module-jaxb-annotations-2.4.3.pom.=
asc.md5" title="jackson-module-jaxb-annotations-2.4.3.pom.asc.md5">jackso=
n-module-jaxb-annotations-2.4.3.pom.asc...</a>  2014-10-04 16:00        32 =
    =20
<a href="http://repo1.maven.org/maven2/com/fasterxml/jackson/module/jacks=
on-module-jaxb-annotations/2.4.3/jackson-module-jaxb-annotations-2.4.3.pom.=
asc.sha1" title="jackson-module-jaxb-annotations-2.4.3.pom.asc.sha1">jack=
son-module-jaxb-annotations-2.4.3.pom.asc...</a>  2014-10-04 16:00        4=
0     =20
<a href="http://repo1.maven.org/maven2/com/fasterxml/jackson/module/jacks=
on-module-jaxb-annotations/2.4.3/jackson-module-jaxb-annotations-2.4.3.pom.=
md5" title="jackson-module-jaxb-annotations-2.4.3.pom.md5">jackson-module=
-jaxb-annotations-2.4.3.pom.md5</a>     2014-10-04 16:00        32     =20
<a href="http://repo1.maven.org/maven2/com/fasterxml/jackson/module/jacks=
on-module-jaxb-annotations/2.4.3/jackson-module-jaxb-annotations-2.4.3.pom.=
sha1" title="jackson-module-jaxb-annotations-2.4.3.pom.sha1">jackson-modu=
le-jaxb-annotations-2.4.3.pom.sha...</a>  2014-10-04 16:00        40     =
=20
<input type="button" id="getAllHerf" value="获取所有地址"/>
		</pre>
</body>

