-- 查询平均成绩大于60分的学生的id和平均成绩
SELECT s.sid,AVG(s.score) FROM score s GROUP BY s.sid HAVING AVG(s.score >60)

-- 查询平均成绩大于60分的学生的信息
SELECT * FROM student t
WHERE t.sid IN (SELECT s.sid FROM score s GROUP BY s.sid HAVING AVG(s.score >60))