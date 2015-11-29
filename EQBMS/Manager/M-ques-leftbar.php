<!--
	作者：彭均莹
    任务：管理员-题型管理-左边框
    开发时间：2015/11/19 
    修改时间：2015/11/23
-->
<?php  
	include("../commonfile/dbconnect.php");
?>
<div class="lefthead">   
    <span>题型管理</span>
</div>
<ul>
    <li>
    <div class="ques-type" id="single-choice">
    <?php
		$sql = "SELECT questionid FROM singlechoice";
		$rs = mysql_query($sql);
		$counts = mysql_num_rows($rs);
		echo "<span>单选题</span><span id='counts'>( ".$counts." )</span>";
    ?>
        <span id="ques-set"><i class="icon icon-plus-sign"></i></span></div>
        <ul class="ques-list">
        <?php
			$sql1 = "SELECT distinct TypeName FROM singlechoice";
			$rs1 = mysql_query($sql1);
			$counts1 = mysql_num_rows($rs1);
			if($counts1==0){
				echo "<li>该题型无题目添加</li>";
			}
			while($rows1=mysql_fetch_array($rs1)){
				if($rows1["TypeName"]=="单选题"){
					echo "<li><a href='M-ques-manage-bytype.php?typename=".$rows1["TypeName"]."' class='type default'>单选题</a></li>";
					}
				else{
					echo "<li><a href='M-ques-manage-bytype.php?typename=".$rows1["TypeName"]."' class='type'>".$rows1["TypeName"]."</a><i class='icon icon-edit'></i><i class='icon icon-remove-sign'></i><i class='icon icon-ok-sign'></i></li>";
					}
			}
            ?>
        </ul>
    </li>
    
    <li>
    <div class="ques-type" id="multiple-choice">
    <?php
		$sql = "SELECT questionid FROM multiplechoice";
		$rs = mysql_query($sql);
		$counts = mysql_num_rows($rs);
		echo "<span>多选题</span><span id='counts'>( ".$counts." )</span>";
    ?>
        <span id="ques-set"><i class="icon icon-plus-sign"></i></span></div>
        <ul class="ques-list">
        <?php
			$sql2 = "SELECT distinct TypeName FROM multiplechoice";
			$rs2 = mysql_query($sql2);
			$counts2=mysql_num_rows($rs2);
			if($counts2==0){
				echo "<li>该题型无题目添加</li>";
			}
			while($rows2=mysql_fetch_array($rs2)){
				if($rows2["TypeName"]=="多选题"){
					echo "<li><a href='M-ques-manage-bytype.php?typename=".$rows2["TypeName"]."' class='type default'>多选题</a></li>";
					}
				else{
					echo "<li><a href='M-ques-manage-bytype.php?typename=".$rows2["TypeName"]."' class='type'>".$rows2["TypeName"]."</a><i class='icon icon-edit'></i><i class='icon icon-remove-sign'></i><i class='icon icon-ok-sign'></i></li>";
					}
			}
            ?>        
        </ul>
    </li>
    
    <li>
    <div class="ques-type" id="short-answer">
    <?php
		$sql = "SELECT questionid FROM shortanswer";
		$rs = mysql_query($sql);
		$counts = mysql_num_rows($rs);
		echo "<span>简答题</span><span id='counts'>( ".$counts." )</span>";
    ?>
        <span id="ques-set"><i class="icon icon-plus-sign"></i></span></div>
        <ul class="ques-list">
        <?php
			$sql3 = "SELECT distinct TypeName FROM shortanswer";
			$rs3 = mysql_query($sql3);
			$counts3 = mysql_num_rows($rs3);
			if($counts3==0){
				echo "<li>该题型无题目添加</li>";
			}
			while($rows3=mysql_fetch_array($rs3)){
				if($rows3["TypeName"]=="简答题"){
					echo "<li><a href='' class='type default'>简答题</a></li>";
					}
				else{
					echo "<li><a href='' class='type'>".$rows3["TypeName"]."</a><i class='icon icon-edit'></i><i class='icon icon-remove-sign'></i><i class='icon icon-ok-sign'></i></li>";
					}
			}
			?>
        </ul> 
    </li>
    <li>
    <div class="ques-type" id="judgment-ques">
    <?php
		$sql = "SELECT questionid FROM judgment";
		$rs = mysql_query($sql);
		$counts = mysql_num_rows($rs);
		echo "<span>判断题</span><span id='counts'>( ".$counts." )</span>";
    ?>
        <span id="ques-set"><i class="icon icon-plus-sign"></i></span></div>
        <ul class="ques-list">
        <?php
			$sql4 = "SELECT distinct TypeName FROM judgment";
			$rs4 = mysql_query($sql4);
			$counts4 = mysql_num_rows($rs4);
			if($counts4==0){
				echo "<li>该题型无题目添加</li>";
			}
			while($rows4=mysql_fetch_array($rs4)){
				if($rows4["TypeName"]=="判断题"){
					echo "<li><a href='' class='type default'>判断题</a></li>";
					}
				else{
					echo "<li><a href='' class='type'>".$rows4["TypeName"]."</a><i class='icon icon-edit'></i><i class='icon icon-remove-sign'></i><i class='icon icon-ok-sign'></i></li>";
					}
			}
            ?>
        </ul>
    </li>
</ul>


<script type="text/javascript">
$(document).ready(function(e) {
	//显示题型添加
    $("#single-choice").hover(
	function(e){
		$("#single-choice .icon").show();},
	function(e){
		$("#single-choice .icon").hide();});
		
	$("#multiple-choice").hover(
	function(e){
		$("#multiple-choice .icon").show();},
	function(e){
		$("#multiple-choice .icon").hide();});
		
	$("#short-answer").hover(
	function(e){
		$("#short-answer .icon").show();},
	function(e){
		$("#short-answer .icon").hide();});
		
	$("#judgment-ques").hover(
	function(e){
		$("#judgment-ques .icon").show();},
	function(e){
		$("#judgment-ques .icon").hide();});
		
	//显示题型编辑按钮
	$(".ques-list li").hover(
	function(e){
		$(".icon-edit",this).show();},
	function(e){
		$(".icon-edit",this).hide();});
		
	//点击编辑题型
	$(".icon-edit").click(
	function(){
		if($(this).next(".icon-ok-sign,.icon-remove-sign").is(":hidden"))
		{
			$(this).next(".icon-remove-sign").show().next(".icon-ok-sign").show();
			//显示输入框
			$(this).parent(".ques-list").children(".type").attr("disabled","false").css("border","1px solid #CCC");
			return false;
			
		}
		else
		{
			$(this).next(".icon-ok-sign").hide().next(".icon-remove-sign").hide();

			return false;
		}
	});
		
		
	//子菜单显示
	$("#leftbar ul li").children("ul").hide();
	$("#leftbar").find("li:has(ul)").children(".ques-type").click(function(){
		if($(this).next("ul").is(":hidden"))
		{
			$(this).next("ul").slideDown("slow");
			if($(this).parent("li").siblings("li").children("ul").is(":visible"))
			{
				$(this).parent("li").siblings("li").find("ul").slideUp("1000");
			}
			return false;
		}
		else
		{
			$(this).next("ul").slideUp("normal");
			return false;
		}
	});
	
	
});
</script>