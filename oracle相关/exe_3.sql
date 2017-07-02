/*
笔试题3：有一个员工表empinfo结构如下
      create table empinfo(
	fempno	varchar2(10) primary key,
	fempname varchar2(20) not null, 
        fage number(2) not null, 
        fsalary number(10,2) not null
      );
      insert into empinfo(fempno,fempname,fage,fsalary) values('1','AA',30,7000);
      insert into empinfo(fempno,fempname,fage,fsalary) values('2','BB',31,8000);
      insert into empinfo(fempno,fempname,fage,fsalary) values('3','CC',32,9000);
      insert into empinfo(fempno,fempname,fage,fsalary) values('4','DD',33,10000);
      insert into empinfo(fempno,fempname,fage,fsalary) values('5','EE',34,11000);
      insert into empinfo(fempno,fempname,fage,fsalary) values('6','FF',35,12000);
      insert into empinfo(fempno,fempname,fage,fsalary) values('7','GG',36,13000);
      insert into empinfo(fempno,fempname,fage,fsalary) values('8','FF',37,14000);

      假如该表有大约1000万条记录，写一句最高效的SQL语句，计算以下4种人中每种员工的数量 
      第1种人：fsalary>9999 and fage>35
      第2种人：fsalary>9999 and fage<35
      第3种人：fsalary<9999 and fage>35
      第4种人：fsalary<9999 and fage<35
     
      提示：只用一条SQL搞定
*/

    select 
       sum(case when e.fsalary>9999 and e.fage>35 then 1 else 0 end) "第1种人",
       sum(case when e.fsalary>9999 and e.fage<35 then 1 else 0 end) "第2种人",
       sum(case when e.fsalary<9999 and e.fage>35 then 1 else 0 end) "第3种人",
       sum(case when e.fsalary<9999 and e.fage<35 then 1 else 0 end) "第4种人"
    from empinfo e;












