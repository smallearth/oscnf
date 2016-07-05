# 表一 test1
id	deparment
1	设计
2	开发
3 	产品

# 表一 test2
id	tid		name
1	1		李达
2	2		孙大
3	3   	张三
4	1		李四
5	2		张大
6	3   	李武

# result 
1	1	设计		李达
2	2	开发		孙大
3	3	产品		张三
4	1	设计		李四
5	2	开发		张大
6	3	产品		李武
# sql
select test2.id, test1.id, test1.deparment, t2.name from test1, test2 where test1.id = test2.tid;