-- ��ȡ��ǰ���� ��ǰ����ת������ֵ����
select CURDATE() ,CURRENT_DATE() , CURRENT_DATE()+1

--��ȡϵͳ��ǰʱ��
select CURTIME(),CURRENT_TIME(),CUTIME()+0

-- ��ȡ��ǰ����ʱ�� YYYY-MM-DD HH:MM:SS
select CURRENT_TIMESTAMP() , NOW(), LOCALtIME() 

--��ȡ�·ݵĺ���
select MONTH('2016-02-13')

-- ��ȡ���ڵĺ���
select DAYOFWEEK('2016-02-14')

-- �������ں�ʱ��ĺ��� DATE_ADD() ����ADDDATE() �����ڵ���ӣ�DATE_SUB() SUBDATE()
select  DATE_SUB('2019-04-18' , INTRERVAL 1 DAY) -- 2019-04-17
select  DATE_ADD('2019-04-18' , INTRERVAL 1 DAY ) -- 2019-04-19

--�����ں�ʱ���ʽ���ĺ���
select DATE_FORMAT(date, format) ����ʱ��ĸ�ʽ����

