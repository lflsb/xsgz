--笔试题2：找到员工表中员工薪水大于他所在本部门平均薪水的员工



select e.ename "姓名",xx.deptno "部门号",round(xx.avgsal,0) "部门平薪",e.sal "员工薪水",e.deptno "员工所在部门号"
from emp e,(select deptno,avg(sal) avgsal from emp group by deptno) xx
where (e.deptno=xx.deptno) and (e.sal>xx.avgsal);











