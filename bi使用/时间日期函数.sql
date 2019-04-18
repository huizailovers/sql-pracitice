-- 获取当前日期 当前日期转换成数值类型
select CURDATE() ,CURRENT_DATE() , CURRENT_DATE()+1

--获取系统当前时间
select CURTIME(),CURRENT_TIME(),CUTIME()+0

-- 获取当前日期时间 YYYY-MM-DD HH:MM:SS
select CURRENT_TIMESTAMP() , NOW(), LOCALtIME() 

--获取月份的函数
select MONTH('2016-02-13')

-- 获取星期的函数
select DAYOFWEEK('2016-02-14')

-- 计算日期和时间的函数 DATE_ADD() 或者ADDDATE() 对日期的添加，DATE_SUB() SUBDATE()
select  DATE_SUB('2019-04-18' , INTRERVAL 1 DAY) -- 2019-04-17
select  DATE_ADD('2019-04-18' , INTRERVAL 1 DAY ) -- 2019-04-19

--将日期和时间格式化的函数
select DATE_FORMAT(date, format) 进行时间的格式化。

