/*
������3����һ��Ա����empinfo�ṹ����
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

      ����ñ��д�Լ1000������¼��дһ�����Ч��SQL��䣬��������4������ÿ��Ա�������� 
      ��1���ˣ�fsalary>9999 and fage>35
      ��2���ˣ�fsalary>9999 and fage<35
      ��3���ˣ�fsalary<9999 and fage>35
      ��4���ˣ�fsalary<9999 and fage<35
     
      ��ʾ��ֻ��һ��SQL�㶨
*/

    select 
       sum(case when e.fsalary>9999 and e.fage>35 then 1 else 0 end) "��1����",
       sum(case when e.fsalary>9999 and e.fage<35 then 1 else 0 end) "��2����",
       sum(case when e.fsalary<9999 and e.fage>35 then 1 else 0 end) "��3����",
       sum(case when e.fsalary<9999 and e.fage<35 then 1 else 0 end) "��4����"
    from empinfo e;












