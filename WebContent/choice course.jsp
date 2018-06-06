<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
p.italic {font-style:italic;font-size=2%}
p.double {border-style: double}
#customers
  {
  font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;
  width:100%;
  border-collapse:collapse;
  }

#customers td, #customers th 
  {
  font-size:1em;
  border:1px solid #98bf21;
  padding:3px 7px 2px 7px;
  }

#customers th 
  {
  font-size:1.1em;
  text-align:left;
  padding-top:5px;
  padding-bottom:4px;
  background-color:#A7C942;
  color:#ffffff;
  }

#customers tr.alt td 
  {
  color:#000000;
  background-color:#EAF2D3;
  }
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>选课</title>
</head>
<body background="http://pic.58pic.com/58pic/13/66/49/06458PIC5BH_1024.jpg">
<h6>当前位置：选课课程预览</h6>

<p class="italic">提示：务必确保学分已修够</p>
<p>查看已修完的课程</p>
<form>
<p class="double"><br>
上课校区校区：
<select name="campus">
  <option value ="select">请选择</option>
  <option value ="EC">东校区</option>
  <option value ="WC">西校区</option>
  <option value="NC">南校区</option>
  <option value="SC">北校区</option>
</select>
&nbsp;&nbsp;&nbsp;&nbsp;
年级：
<select name="grade">
  <option value ="select">请选择</option>
  <option value ="freshman">大一</option>
  <option value ="sophomore">大二</option>
  <option value="junior">大三</option>
  <option value="senior">大四</option>
</select>
&nbsp;&nbsp;&nbsp;&nbsp;
院系：
<select name="campus">
  <option value ="select">请选择</option>
  <option value ="college1">阳明学院</option>
  <option value ="college2">大数据与信息工程学院</option>
  <option value="college3">学院3</option>
  <option value="college4">学院4</option>
</select>
&nbsp;&nbsp;&nbsp;&nbsp;
专业：信息管理与信息系统
&nbsp;&nbsp;&nbsp;&nbsp;
课程归属：
<select name="campus">
  <option value ="select">请选择</option>
  <option value ="course">文史经典与文化传承</option>
  <option value ="course">哲学智慧与批判性思维</option>
  <option value="course">艺术创作与审美体验</option>
  <option value="course">科技进步与科学精神</option>
</select>

</p>
<tr>
<td align="center"colspan="2">
<input type="submit" value="提 交"/>
</td></tr>

<br>
<table id="customers">
<tr>
<th>课程号</th>
<th>课程</th>
<th>学分</th>
<th>校区</th>
<th>上课时间</th>
<th>上课地点</th>
<th>上课老师</th>
<th>选课说明</th>
<th>课程归属</th>
</tr>

<tr>
<td>1</td>
<td>Javaweb 程序设计</td>
<td>3</td>
<td>西校区</td>
<td>周一7.8节，周五3.4节</td>
<td>北楼123D教室</td>
<td>张海宁</td>
<td>设计网页</td>
<td>科技进步与科学精神</td>
</tr>

<tr>
<td>2</td>
<td>插画艺术</td>
<td>2</td>
<td>西校区</td>
<td>周二7.8节</td>
<td>北楼111D教室</td>
<td>李班</td>
<td>艺术</td>
<td>艺术创作与审美体验·</td>
</tr>

</table>
</form>
<br>
每页显示50条记录    共3页
<p align="center"><a href="index.jsp">返回主页</a></p>
</body>
</html>