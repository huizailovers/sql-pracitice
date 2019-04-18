 -- 查询昨天的数据
 SELECT
 COUNT( call_sheet_id ) 
FROM
 n00000000012_c5_call_sheet 
WHERE
 offering_time > DATE_SUB(CURDATE(), INTERAL 1 DAY)
 AND offering_time < CURDATE()
 AND `status` = 'dealing' 
 AND connect_type = 'dialout'