--������1���ҵ�Ա�����й�����ߵ�ǰ����

select    rownum,empno,ename,sal 
from      (select * from emp order by sal desc)
where     rownum<=3;


