<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>无标题文档</title>
</head>

<body>
<?php
session_start();
//1、获取表单递交的信息
$questionType=$_REQUEST["aqRB_select"];
$question=$_REQUEST["textarea"];
//$option=$REQUEST["option1"];
$answer=$REQUEST["answer"];
//$type=$REQUEST["type"];


echo $question;
?>
</body>
</html>