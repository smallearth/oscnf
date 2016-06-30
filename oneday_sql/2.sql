#表一 student
s_id	s_name
1		刘强
2		孙大
3		李猪
4		赵二

#表二 course
c_id	c_name
1		语文
2		数学
3		英语

#表三 grade
g_id	s_id	c_id	score
1		1		1		80
2		1		2		90
3		2		1		90
4		2		3		90
5		3		1		90
6		3		2		90
7		3		2		90

#sql 找出每个学生缺考的科目
select * from student join course left join grade on student.s_id=grade.s_id and course.c_id=grade.c_id where grade.score is null;
