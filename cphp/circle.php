<?php
require_once('./header.php');
$input = file_get_contents("php://input"); //接收POST数据

#echo $input;

//{
//	"circle_id"			: 1,
//	"token"  			: "abc",
//	"device_id" 		: "ccc",
//	"table_name"		: "朋友圈232",
//	"max_player"		:9,
//	"curr_player"		:4,
//	"game_type"		:1,
//	"table_ante"		:3,
//	"buyin"				:2000,
//	"operatetime"		:20,
//	"small_blind"		:20
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
$game_type = $json_data["game_type"];
$max_player = $json_data["max_player"];
$curr_player = $json_data["curr_player"];
$table_ante = $json_data["table_ante"];
$buyin = $json_data["buyin"];
$operatetime = $json_data["operatetime"];
$small_blind = $json_data["small_blind"];


//DEBUG("circle_id = ".$circle_id);


$db = get_circle_db();
if($db == NULL)
{
	error_return(NULL, 80500);
}


$result = $db->query("CALL get_circle_info(".$circle_id.");", MYSQLI_STORE_RESULT);

if (!$result)
{
	error_return($db, 82000);
}
//
//$row = $result->fetch_assoc();
$db->next_result();
$result->close();
//
//if (!$row)
//{
//	error_return($db, "invalid account");
//}
//
//$circle_id = intval($row["circle_id"]);
#$create_token = $row["token"];
//IN circle_id int,  IN token VARCHAR ( 256 ), IN ante int, IN buyin int, IN small_blind int, IN max_palyer int, IN table_type int, IN operatetime int  )
$sql = "CALL add_table(".$circle_id.", '".$token."', ".$table_ante.", ".$buyin.", ".$small_blind." , ".$max_player.", ".$game_type.", ".$operatetime.");";
DEBUG("sql ---> ".$sql);

// 增加一个桌子
//call add_table(10, 'sr----------------te',  11,  11,  11, 11, 11, 11);
//`table_ante`, `buyin`, `small_blind`, `max_palyer`, `table_type`, `operatetime`
$result = $db->query("CALL add_table(".$circle_id.", '".$token."', ".$table_ante.", ".$buyin.", ".$small_blind." , ".$max_player.", ".$game_type.", ".$operatetime.");");
if (!$result)
{
	error_return($db, 80500);
}

$row = $result->fetch_assoc();
$db->next_result();
$result->close();
$table_id = intval($row["num"]);






//{
//    "code": 80000,
//    "msg": "创建成功。",
//    "data": {
//        "circle_id": 1,
//        "user_id": 888888,
//        "game_type": 1,
//        "max_player": 9,
//        "curr_player": 1,
//        "ante": 0,
//        "created_at": 1555310963,
//        "id": 6
//    }
//}

$table_info = array('circle_id' => $circle_id, 'user_id' => 88888, 'game_type' => $game_type, 'max_player' => $max_player, 'curr_player' => 0, 'ante' => $table_ante, 'created_at' => time(null), 'id' => $table_id );



$reply["code"] = 80000;
$reply["msg"] = "创建成功。";
$reply["data"] = $table_info;
//$reply["circle_id"] = $circle_id;
//$reply["token"] = $row["token"];
echo json_encode($reply);
DEBUG(json_encode($reply));
$db->close();
?>
