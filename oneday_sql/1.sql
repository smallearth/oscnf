#表结构
id name status
1	拜仁 胜
2	火箭 胜
3	湖人 胜
4	拜仁 负
5	火箭 负
6	湖人 负

#输出
name 胜 负
拜仁  2	2
火箭  2	2
湖人  2	2

#sql
select distinct name, count(status='胜') as '胜', count(status='负') as '负' from team group by name;
