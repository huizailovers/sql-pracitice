-- ��Ҫ��case - when -then �� �÷���һ�����д�� ���� select ���� ��Ϊ�ֶ�ʹ�� �����Ҷ����ڷ���������

SELECT MONTH(end_time) AS month ,location_name, 
sum(case  
when connect_type = 'normal'
then 1
else 0
end) ������,
sum(case  
when connect_type = 'normal' and status = 'dealing'
then 1
else 0
end) ���������,

sum(case  
when connect_type = 'normal' and status = 'dealing' and ring_time_length < 15
then 1
else 0
end) 15����������,

sum(case  
when connect_type = 'normal' and status = 'dealing' and ring_time_length < 20
then 1
else 0
end) 20����������,

sum(case  
when connect_type = 'normal' and status = 'notDeal'
then 1
else 0
end) ����ͷ�δ������,

ROUND(AVG(case  
when connect_type = 'normal'
then ring_time_length
else 0
end),1) ����ƽ������ʱ��,

ROUND (AVG(ring_time_length),1) as ����ʱ��,

AVG(case  
when connect_type = 'normal'
then call_time_length
else 0
end) ����ƽ��ͨ��ʱ��,

AVG(call_time_length) as ͨ��ʱ��

FROM n00000000012_c5_call_sheet 

GROUP BY MONTH(end_time),location_name 
ORDER BY month desc, location_name 




