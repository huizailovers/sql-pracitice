-- 16������"01"�γ̷���С��60���������������е�ѧ����Ϣ
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