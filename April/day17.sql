-- ���Ӳ�ѯ
--���Ӳ�ѯ�Զ�������JOIN���㣬�򵥵�˵��������ȷ��һ��������Ϊ�������Ȼ�󣬰������������ѡ���Եء����ӡ������������ϡ�

---- ѡ������ѧ����ͬʱ���ذ༶����

SELECT s.id, s.name, s.class_id, c.name class_name, s.gender, s.score
FROM students s
INNER JOIN classes c
ON s.class_id = c.id;

-- ������ right
SELECT s.id, s.name, s.class_id, c.name class_name, s.gender, s.score
FROM students s
RIGHT OUTER JOIN classes c
ON s.class_id = c.id;
--ִ�н�����Ҳ���ж����������������û���ݵĻ� �������Ϊnull
--ִ������RIGHT OUTER JOIN���Կ�������INNER JOIN��ȣ�RIGHT OUTER JOIN����һ�У��������һ���ǡ��İࡱ�����ǣ�ѧ����ص�����name��gender��score��ΪNULL��

-- ������ left


SELECT s.id, s.name, s.class_id, c.name class_name, s.gender, s.score
FROM students s
LEFT OUTER JOIN classes c
ON s.class_id = c.id;
--LEFT OUTER JOIN�򷵻�������ڵ��С�������Ǹ�students������һ�У������class_id=5������classes��������id=5���У����ԣ�LEFT OUTER JOIN�Ľ��������һ�У���Ӧ��class_name��NULL��