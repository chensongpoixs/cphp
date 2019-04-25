<?php
require_once('./header.php');
$input = file_get_contents("php://input"); //接收POST数据

#echo $input;
//{
	//	"device_id":"ios",
	//		"token" : "893a2f8e90ccde85b929b2d3becdb48367534e33",
	//		"lang"  : "en",
	//		"circle_id" : 5,
	//		"table_id" : 542,
	//		"max_player" : 2,
	//		"curr_player" : 0
	//}
DEBUG($input);
$json_data = json_decode($input, true);
if(!$json_data)
{
	//error handle ,错误处理
	$ret = json_last_error();
	DEBUG("json psaer".$ret);   //打印为： 4,查错误信息表，可知是语法错误
	return;
}   
$token = $json_data["token"];
$circle_id = $json_data["circle_id"];
$table_id = $json_data["table_id"];
$max_player = $json_data["max_players"];
$curr_player = $json_data["curr_player"];



//DEBUG("circle_id = ".$circle_id);


$db = get_circle_db();
if($db == NULL)
{
	error_return(NULL, 80500);
}



$result = $db->query("CALL get_circle_info(".$circle_id.");", MYSQLI_STORE_RESULT);

if (!$result)
{
	error_return($db, 82001);
}
//
//$row = $result->fetch_assoc();
$db->next_result();
$result->close();

 //查询账号数据
$result = $db->query("CALL get_table_info(".$table_id.");", MYSQLI_STORE_RESULT);

if (!$result)
{
	error_return($db, 82002);
}
//
$row = $result->fetch_assoc();
$db->next_result();
$result->close();
//IN circle_id int,  IN token VARCHAR ( 256 ),  IN table_id int 
//call select_user_table('ee', 1, 32);
$result = $db->query("CALL select_user_table('".$token."', ".$circle_id.", ".$table_id.");", MYSQLI_STORE_RESULT);

if (!$result)
{
	error_return($db, 82003);
}
//
$row = $result->fetch_assoc();
$db->next_result();
$result->close();

$is_join = intval($row["is_join"]);

if ($is_join == 1)
{
	error_return($db, 82013);
}
//  {
//    "code": 80000,
//    "msg": "操作成功。",
//    "data": []
//	}

$result = $db->query("CALL add_user_table('".$token."', ".$circle_id.",  ".$table_id.");");
if (!$result)
{
	error_return($db, 82000);
}
//
//$row = $result->fetch_assoc();
//$db->next_result();
//$result->close();

$reply["code"] = 80000;
$reply["msg"] = "操作成功。";
$reply["data"] = "[]";
//$reply["circle_id"] = $circle_id;
//$reply["token"] = $row["token"];
echo json_encode($reply);
DEBUG(json_encode($reply));
$db->close();
?>
