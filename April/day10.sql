-- ��ѯƽ���ɼ�����60�ֵ�ѧ����id��ƽ���ɼ�
SELECT s.sid,AVG(s.score) FROM score s GROUP BY s.sid HAVING AVG(s.score >60)

-- ��ѯƽ���ɼ�����60�ֵ�ѧ������Ϣ
SELECT * FROM student t
WHERE t.sid IN (SELECT s.sid FROM score s GROUP BY s.sid HAVING AVG(s.score >60))