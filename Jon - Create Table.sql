

create table Teams (
	Id int not null identity(1,1) primary key,
	Name nvarchar(50) not null,
	City nvarchar(25) not null,
	State nvarchar(2) not null,
	WonSuperBowl bit not null default 0,
	YearsInExisttence int not null default 0,
	Sport nvarchar(30) not null default 'Football'
);

create table Players(
	Id int not null identity(1,1) primary key,
	TeamsId int foreign key references Teams(Id),
	Firstname nvarchar(30) not null,
	Lastname nvarchar (30) not null,
	Position nvarchar (30),
	Number nvarchar (3),
	YearsInSport int not null default 0,
	Salary decimal(10,2)
);

Go

Insert into Teams
	(Name, City, State, YearsInExisttence, Sport)
Values
	('Bengals', 'Cincinnati', 'OH', 25, 'Football')
Insert into Players
	(TeamsId, FirstName, LastName, Position, Number, YearsInSport, Salary)
Values
	(1, 'A.J', 'Green', 'WR', '18', 8, 4000000)
Insert into Players
	(TeamsId, FirstName, LastName, Position, Number, YearsInSport, Salary)
Values
	(1, 'Andy', 'Dalton', 'QB', '14', 6, 15743654.21)