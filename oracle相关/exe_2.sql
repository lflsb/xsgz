--������2���ҵ�Ա������Ա��нˮ���������ڱ�����ƽ��нˮ��Ա��



select e.ename "����",xx.deptno "���ź�",round(xx.avgsal,0) "����ƽн",e.sal "Ա��нˮ",e.deptno "Ա�����ڲ��ź�"
from emp e,(select deptno,avg(sal) avgsal from emp group by deptno) xx
where (e.deptno=xx.deptno) and (e.sal>xx.avgsal);











