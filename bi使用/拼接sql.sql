 CONCAT( 
 date_sub(CAST((DATE_FORMAT(end_time, '%Y-%m-%d')) AS DATE), INTERVAL CAST(WEEKDAY(DATE_FORMAT(end_time, '%Y-%m-%d')) AS BIGINT)+1 DAY ),
 '--', 
 date_sub(CAST((DATE_FORMAT(end_time, '%Y-%m-%d')) AS DATE), INTERVAL CAST(WEEKDAY(DATE_FORMAT(end_time, '%Y-%m-%d')) AS BIGINT)-5 DAY )) as
 aaa
 ,
 sum( CASE WHEN connect_type = 'normal' THEN 1 ELSE 0 END ) AS '平台呼入数',
 sum( CASE WHEN connect_type = 'normal' AND `status` = 'dealing' THEN 1 ELSE 0 END ) AS '呼入接听数',
 sum( CASE WHEN connect_type = 'normal' AND `status` = 'dealing' AND ring_time_length < 15 THEN 1 ELSE 0 END ) AS '15秒进入接通数',
 sum( CASE WHEN connect_type = 'normal' AND `status` = 'dealing' AND ring_time_length < 20 THEN 1 ELSE 0 END ) AS '20秒进入接通数',
 sum( CASE WHEN connect_type = 'normal' AND `status` = 'queueLeak' THEN 1 ELSE 0 END ) AS '排队放弃数',
 AVG( CASE WHEN connect_type = 'normal' AND `status` = 'dealing' THEN call_time_length ELSE 0 END ) AS '平台平均呼入平均通话时长',
 AVG( CASE WHEN connect_type = 'normal' AND `status` = 'dealing' THEN ring_time_length ELSE 0 END ) AS '平台平均呼入平均振铃时长',
 sum( CASE WHEN connect_type = 'dialout' THEN 1 ELSE 0 END ) AS '平台呼出数',
 sum( CASE WHEN connect_type = 'dialout' AND `status` = 'dealing' THEN 1 ELSE 0 END ) AS '平台呼出接听数',
 sum( CASE WHEN connect_type = 'dialout' AND `status` <> 'dealing' THEN 1 ELSE 0 END ) AS '呼出未接听数',
 AVG( CASE WHEN connect_type = 'dialout' AND `status` = 'dealing' THEN call_time_length ELSE 0 END ) AS '平台平均呼出平均通话时长',
 AVG( CASE WHEN connect_type = 'dialout' AND `status` = 'dealing' THEN ring_time_length ELSE 0 END ) AS '平台平均呼出平均振铃时长' 
FROM
 n00000000012_c5_call_sheet 
GROUP BY
 aaa
ORDER BY
 aaa desc
 
 -- DATE_FORMAT(TIME,'')//日期格式化
 -- CAST( ) 转成日期类型
 -- concat() 拼接字符串
 