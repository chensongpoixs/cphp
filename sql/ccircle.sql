--- 圈子信息
DROP TABLE IF EXISTS `t_circle`;
CREATE TABLE `t_circle` (
	`circle_id` 		INT unsigned	 	NOT NULL AUTO_INCREMENT				COMMENT '圈子id',
	`create_time` 		datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
	`token` 			VARCHAR ( 256 ) 	NOT NULL 				COMMENT '创建人的token',
PRIMARY KEY ( `circle_id` ) 
);


---桌子信息
DROP TABLE IF EXISTS `t_table`;
CREATE TABLE `t_table` (
  `table_id` 		int unsigned  NOT NULL AUTO_INCREMENT 	COMMENT '桌子id',
  `circle_id` 		int(11) NOT NULL 						COMMENT '圈子id',
  `create_time` 	datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `create_token` 	varchar(256) NOT NULL 					COMMENT '创建人token',
  `table_ante` 		int(11) NOT NULL 						COMMENT '初始值的大小',
  `buyin` 			int(11) NOT NULL 						COMMENT '带入值',
  `small_blind` 	int(11) NOT NULL 						COMMENT '小盲',
  `max_palyer` 		int(11) NOT NULL 						COMMENT '桌子的最大人数',
  `table_type` 		int(11) NOT NULL 						COMMENT '桌子的类型',
  `operatetime` 	int(11) NOT NULL 						COMMENT '等待时间',
  PRIMARY KEY (`table_id`)
);



-- 玩家加入桌子的信息
DROP TABLE IF EXISTS `t_user_table`;
create table `t_user_table`(
	`id` 			int unsigned  NOT NULL AUTO_INCREMENT 	COMMENT '无意义',
	`table_id` 		int unsigned  				NOT NULL  	COMMENT '桌子id',
	`circle_id` 	int(11) 		NOT NULL 				COMMENT '圈子id',
	`token`			varchar(256)  	NOT NULL 				COMMENT '玩家的token',
	`is_join`		int 			NOT NULL  				COMMENT '1:加入桌子了 0: 退出桌子',
	`num`			int unsigned    NOT NULL 				COMMENT '玩家加入桌子的次数',
	PRIMARY KEY (`id`)
);


--INSERT INTO `t_table` VALUES ('1', '1', '2019-04-17', 'srte', '67', '67', '7', '7', '7', '7');

INSERT INTO `t_table`  (`circle_id`, `create_token`, `table_ante`, `buyin`, `small_blind`, `max_palyer`, `table_type`, `operatetime`)   VALUES ('1', 'srte', '9', '69', '97', '79', '97', '97');
                            
						
--- 查看mysql的存储过程的sql语句
--SHOW PROCEDURE STATUS;             
-- 简单的存储过程              
DROP PROCEDURE IF EXISTS `get_table_info`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_table_info`(IN type int)
BEGIN
    #Routine body goes here...
    select `circle_id`, `create_token`, `max_palyer`, `table_ante`, `operatetime`, `small_blind`, `table_ante`, `buyin` from `t_table`  where `table_id` = type; 
END
;;
DELIMITER ;   


DROP PROCEDURE IF EXISTS `get_circle_info`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_circle_info`(IN type int)
BEGIN
    #Routine body goes here...
    select `circle_id`, `token` from `t_circle`  where `circle_id` = type; 
END
;;
DELIMITER ;    




DROP PROCEDURE IF EXISTS `add_circle`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_circle`(IN user_token VARCHAR ( 256 ) )
BEGIN
    #Routine body goes here...
	INSERT INTO `t_circle`  (`token`)   VALUES (user_token);
  
    select count(`circle_id`) as num from `t_circle`; 
END
;;
DELIMITER ;   

--`circle_id`, `create_token`, `table_ante`, `buyin`, `small_blind`, `max_palyer`, `table_type`, `operatetime`
DROP PROCEDURE IF EXISTS `add_table`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_table`(IN circle_id int,  IN token VARCHAR ( 256 ), IN ante int, IN buyin int, IN small_blind int, IN max_palyer int, IN table_type int, IN operatetime int  )
BEGIN
    #Routine body goes here...
	INSERT INTO `t_table`  (`circle_id`, `create_token`, `table_ante`, `buyin`, `small_blind`, `max_palyer`, `table_type`, `operatetime`)   VALUES (circle_id,  token, ante, buyin ,small_blind, max_palyer, table_type, operatetime);
   select max(`table_id`) as num from `t_table`; 
END
;;
DELIMITER ;  

--call add_table(10, 'sr----------------te',  11,  11,  11, 11, 11, 11); 





--- 查询玩家是否加入该桌子了
DROP PROCEDURE IF EXISTS `select_user_table`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `select_user_table`(IN token VARCHAR ( 256 ),  IN circle_id int,  IN table_id int  )
BEGIN
    #Routine body goes here...
	select is_join from `t_user_table` where t_user_table.circle_id = circle_id and t_user_table.token = token and t_user_table.table_id = table_id;
END
;;
DELIMITER ;  


-- 添加玩家该桌子上
DROP PROCEDURE IF EXISTS `add_user_table`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_user_table`(IN token VARCHAR ( 256 ), IN circle_id int,  IN table_id int  )
BEGIN
    #Routine body goes here...
	#DECLARE stu_no INT (4) DEFAULT 0 ;
	#select is_join INTO stu_no from t_user_table where t_user_table.circle_id = circle_id and t_user_table.token = token and t_user_table.table_id = table_id;
	if not exists (select is_join  from `t_user_table` where t_user_table.circle_id = circle_id and t_user_table.token = token and t_user_table.table_id = table_id) then
		# insert
		INSERT INTO `t_user_table` (`token`, `circle_id`, `table_id`,  `is_join`, `num`) VALUES (token, circle_id, table_id, 1, 1);
	else 
		# update
		UPDATE `t_user_table` SET num = num + 1 , is_join = 1 where t_user_table.circle_id = circle_id and t_user_table.token = token and t_user_table.table_id = table_id;
	end if;
END
;;
DELIMITER ;  


-- 玩家退出桌子的操作

DROP PROCEDURE IF EXISTS `modify_user_table`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modify_user_table`(IN token VARCHAR ( 256 ), IN circle_id int,  IN table_id int  )
BEGIN
    # update 
	UPDATE `t_user_table` SET is_join = 0 where t_user_table.circle_id = circle_id and t_user_table.token = token and t_user_table.table_id = table_id;
END
;;
DELIMITER ; 

 








              