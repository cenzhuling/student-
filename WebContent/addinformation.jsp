<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css" href="css/index.css">

<title>添加留言</title>
<script type="text/javascript">
	function check(form){
		with(form){
			if(auther.value == ""){
				alert("留言者不能为空");
				return false;
			}
			
			return true;
		}
	}
</script>
</head>
<body bgcolor="#F0F8FF" >
<div  class="body">
  <div class="head"></div>
  <div class="foot"></div>    
</div>
   <h2>为爱留言！</h2>
	  <form action="addim.jsp" method="post" onsubmit="return check(this);">
<br>
<table>
  <tr>
	<td width="18%" height="27" align="center" bgcolor="#E5BB93">留者</td>
	<td width="100%" align="center" bgcolor="#E5BB93">评论内容</td>
  </tr>
  <tr>
  <td width="20%"><input name="author" type="text" id="author" size="40" height="40"></td>
  <td width="80	%"> <input name="content" type="text" id="content" size="180" height="40" ></td>
  </tr>
  <tr>
      <td height="40">&nbsp;</td>
      <td><input type="submit" class="btn_grey" value="发表" >
      &nbsp;
      <input name="Reset" type="reset" class="btn_grey" value="重置"> </td>
     
      <tr><a href="index.jsp">返回主页</a>
    </tr>
</table>
	<table width="600" height="70" border="0" align="center" cellpadding="0" cellspacing="1" bordercolorlight="#FF9933" bordercolordark="#FFFFFF" bgcolor="#666666">
  <thead>
    <tr>
      <td width="86%" align="left" bgcolor="#FFFFFF">&nbsp;人生若真如一场大梦，这个梦倒也很有趣的。在这个大梦里，一定还有长长短短，深深浅浅，肥肥瘦瘦、甜甜苦苦，无数的小梦。有些已经随着日影飞去；有些还远着哩……</td>
    </tr>
  </thead>
</table>
	</form>
</div>
</body>
</html>