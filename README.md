# JAVAWeb-EXperiment3-JSP-syntax-with-built-in-objects
1. 编写一个可以打印“上三角”的九九乘法表的JSP网页（必须用JSP表达式方式），要求对齐和一定的修饰。

2. 仿照课堂例子，编制 一个简单输入studentId(学生学号)和studentPwd（密码）的登录程序（包括含表单的login页，处理表单的login_check.jsp页），连接数据库表students表（studentId、studentName、studentPwd），登录成功，建立表示登录成功的session变量(即学生姓名studentName)；登录失败，则跳转到登录失败页面；用户能注销登录（即退出网站）。

3. 接上题，登录程序具有防盗链功能。

4. 接上题，在登录成功页面，显示网站计数器，该网站目前登录总人/次。

数据库的脚本如下：
```
drop table students;

create table students(
studentId varchar(20) primary key,
studentName varchar(30),
studentPwd varchar(20),
sex varchar(2),
classId int(8)
);

insert into  students values("2018110116","谢亚飞","123","男",10201842);
insert into  students values("2018130173","罗维林","123","女",10201841);
insert into  students values("2018110143","苏梦雪","123","女",10201842);
insert into  students values("2018110177","谭笑生","123","男",10201841);
```
