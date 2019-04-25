 CONCAT( 
 date_sub(CAST((DATE_FORMAT(end_time, '%Y-%m-%d')) AS DATE), INTERVAL CAST(WEEKDAY(DATE_FORMAT(end_time, '%Y-%m-%d')) AS BIGINT)+1 DAY ),
 '--', 
 date_sub(CAST((DATE_FORMAT(end_time, '%Y-%m-%d')) AS DATE), INTERVAL CAST(WEEKDAY(DATE_FORMAT(end_time, '%Y-%m-%d')) AS BIGINT)-5 DAY )) as
 aaa
 ,
 sum( CASE WHEN connect_type = 'normal' THEN 1 ELSE 0 END ) AS 'ƽ̨������',
 sum( CASE WHEN connect_type = 'normal' AND `status` = 'dealing' THEN 1 ELSE 0 END ) AS '���������',
 sum( CASE WHEN connect_type = 'normal' AND `status` = 'dealing' AND ring_time_length < 15 THEN 1 ELSE 0 END ) AS '15������ͨ��',
 sum( CASE WHEN connect_type = 'normal' AND `status` = 'dealing' AND ring_time_length < 20 THEN 1 ELSE 0 END ) AS '20������ͨ��',
 sum( CASE WHEN connect_type = 'normal' AND `status` = 'queueLeak' THEN 1 ELSE 0 END ) AS '�Ŷӷ�����',
 AVG( CASE WHEN connect_type = 'normal' AND `status` = 'dealing' THEN call_time_length ELSE 0 END ) AS 'ƽ̨ƽ������ƽ��ͨ��ʱ��',
 AVG( CASE WHEN connect_type = 'normal' AND `status` = 'dealing' THEN ring_time_length ELSE 0 END ) AS 'ƽ̨ƽ������ƽ������ʱ��',
 sum( CASE WHEN connect_type = 'dialout' THEN 1 ELSE 0 END ) AS 'ƽ̨������',
 sum( CASE WHEN connect_type = 'dialout' AND `status` = 'dealing' THEN 1 ELSE 0 END ) AS 'ƽ̨����������',
 sum( CASE WHEN connect_type = 'dialout' AND `status` <> 'dealing' THEN 1 ELSE 0 END ) AS '����δ������',
 AVG( CASE WHEN connect_type = 'dialout' AND `status` = 'dealing' THEN call_time_length ELSE 0 END ) AS 'ƽ̨ƽ������ƽ��ͨ��ʱ��',
 AVG( CASE WHEN connect_type = 'dialout' AND `status` = 'dealing' THEN ring_time_length ELSE 0 END ) AS 'ƽ̨ƽ������ƽ������ʱ��' 
FROM
 n00000000012_c5_call_sheet 
GROUP BY
 aaa
ORDER BY
 aaa desc
 
 -- DATE_FORMAT(TIME,'')//���ڸ�ʽ��
 -- CAST( ) ת����������
 -- concat() ƴ���ַ���
 