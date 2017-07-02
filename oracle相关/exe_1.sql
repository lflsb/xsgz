--笔试题1：找到员工表中工资最高的前三名

select    rownum,empno,ename,sal 
from      (select * from emp order by sal desc)
where     rownum<=3;


