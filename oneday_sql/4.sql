# 2016-07-05
# 表一 district
disid	disname
1		一区
2		二区
3		三区
4		四区

# 表二  city
cityid	disid
1		1
2		1
3		1
4		2
5		2
6		3
7		3
8		4

# 表三	order
oid	userid	cityid	amount
1	1		1		5000
2	2		2		6000
3	3		3		8000
4	4		4		9000
5	5		5		80000
6	6		6		90000
7	7		7		80980
8	8		8		23222
9	1		1		8999

# 首先定义一下高消费者是消费金额大于1W的用户，问题是生成以下报表：
# 区域名	高消费者人数	消费总额
# * 	*	*
# *	    *	*

# sql
select d.disname as '区域名', count(o.userid), sum(o.amount) from district d
left join city c on d.disid=c.disid
left join (select userid, cityid, sum(amount) as amount from order group by userid having amount>10000) o
on c.cityid=o.cityid group by d.disid;






