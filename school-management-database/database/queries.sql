select r.code as 'Room Code' , c.code as 'Class Code' , r.capacity as 'Room Capacity' , count(s.id) AS 'Number of Students' from school.rooms r
join school.classes c
on c.roomcode = r.code
join school.students s
on s.classescode = c.code
group by c.code , c.name , r.code , r.capacity;


select s.id as 'Students ID' , avg(r.studentmark) , concat(s.Fname ,' ', s.Lname) as 'Full Name' , s.address from school.students s
join school.results r
on r.studentId = s.id
group by s.id
order by avg(r.studentmark) desc
limit 1;

