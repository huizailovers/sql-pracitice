-- 主要是case - when -then 的 用法，一般这个写法 用在 select 后面 作为字段使用 ，并且多用在分组的情况。

SELECT MONTH(end_time) AS month ,location_name, 
sum(case  
when connect_type = 'normal'
then 1
else 0
end) 呼入数,
sum(case  
when connect_type = 'normal' and status = 'dealing'
then 1
else 0
end) 呼入接听数,

sum(case  
when connect_type = 'normal' and status = 'dealing' and ring_time_length < 15
then 1
else 0
end) 15秒呼入接听数,

sum(case  
when connect_type = 'normal' and status = 'dealing' and ring_time_length < 20
then 1
else 0
end) 20秒呼入接听数,

sum(case  
when connect_type = 'normal' and status = 'notDeal'
then 1
else 0
end) 呼入客服未接听数,

ROUND(AVG(case  
when connect_type = 'normal'
then ring_time_length
else 0
end),1) 呼入平均振铃时长,

ROUND (AVG(ring_time_length),1) as 振铃时长,

AVG(case  
when connect_type = 'normal'
then call_time_length
else 0
end) 呼入平均通话时长,

AVG(call_time_length) as 通话时长

FROM n00000000012_c5_call_sheet 

GROUP BY MONTH(end_time),location_name 
ORDER BY month desc, location_name 




