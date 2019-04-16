
-- 26、查询每门课程被选修的学生数 

select s.c_id , count(s.s_id) from score s group by s.c_id