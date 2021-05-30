select ID,Company,Salary from
(
select *,row_number() over(partition by company order by row_num_asc desc ) as row_num_desc from
(

select *,row_number() over(partition by company order by salary,id) as row_num_asc from Employee
    )a
)b
where row_num_asc=row_num_desc
or (row_num_asc-row_num_desc)=1
or (row_num_asc-row_num_desc)=-1