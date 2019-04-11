-- 16、检索"01"课程分数小于60，按分数降序排列的学生信息
SELECT
	t.*, s.s_score
FROM
	score s,
	student t
WHERE
	s.s_id = t.s_id
AND s.c_id = '01'
AND s.s_score < 60
ORDER BY
	s.s_score DESC