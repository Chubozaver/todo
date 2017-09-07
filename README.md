Demo: https://chuba-todo.herokuapp.com/

1 `select distinct status from tasks where status is NOT null order by status;`

2 `select lists.id as lists_id, lists.name as lists_name, count(tasks.id) as task_count from tasks left join lists on tasks.list_id = lists.id group by lists_id, lists_name order by task_count desc;`

3 `select lists.id as lists_id, lists.name as lists_name, count(tasks.id) as task_count from tasks left join lists on tasks.list_id = lists.id group by lists_id, lists_name order by lists_name;`

4 `select id, name from tasks where name like 'N%';`

5 `select lists.name as list_name, count(tasks.id) as tasks_count from lists left join tasks on lists.id=tasks.list_id where lists.name like '%a%' group by list_name;`

6 `select tasks.name as name, count(t2.name) as t_count from tasks left join tasks as t2 on tasks.name=t2.name group by tasks.name HAVING count(t2.name) > 1 ;`

7 `select tasks.name as task_name, count(tasks.name) as task_count from tasks left join lists on tasks.list_id = lists.id where lists.name='Garage' group by tasks.name order by task_count;`

8 `select lists.name as list_name, count(tasks.id) as task_count from lists left join tasks on lists.id = tasks.list_id where tasks.status='completed' group by list_name HAVING count(tasks.id) > 10;`
