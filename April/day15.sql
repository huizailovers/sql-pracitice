select a.s_id,(select s_score from score where s_id=a.s_id and c_id='01') as ����,
                (select s_score from score where s_id=a.s_id and c_id='02') as ��ѧ,
                (select s_score from score where s_id=a.s_id and c_id='03') as Ӣ��,
            round(avg(s_score),2) as ƽ���� from score a  GROUP BY a.s_id ORDER BY ƽ���� DESC;