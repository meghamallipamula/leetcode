select FirstName,Lastname,city,State 
from Person
left join Address
on Person.PersonId=Address.PersonId