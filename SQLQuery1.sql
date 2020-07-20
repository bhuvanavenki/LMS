create table UserType
(
UsertypeID int not null,
UserName varchar(255) not null,
primary key(UsertypeID)
);
create table User_Table
(
UserID int identity(1,1) primary key,
UserName varchar(255) not null,
UserEmail varchar(255) not null,
UserPassword varchar(255) not null,
Userphone_number varchar(255) not null,
User_status text not null,
UsertypeID int not null,
foreign key (UsertypeID) references UserType(UsertypeID)
);
create table lockersize(
lockersizeNo int not null, 
lockername varchar(255) not null,
primary key(lockersizeNo)
);
create table Locker_Table
(
LockerID int identity(1,1) primary key,
lockersizeNo int not null,
Available_status text,
Available_fromdate datetime,
updated_date datetime,
foreign key(lockersizeNo) references lockersize(lockersizeno)
);
create table Request_table
(
Requestid int identity(1,1) primary key,
UserID int not null,
Request_status text,
status_message text,
locker_occupied_fromDate datetime,
locker_occupied_toDate datetime,
startdate datetime,
updated_date datetime,
LockerID int not null,
foreign key(UserID) references User_Table(UserID),
foreign key(LockerID) references Locker_Table(LockerID)
);
