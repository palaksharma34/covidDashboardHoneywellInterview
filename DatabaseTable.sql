

CREATE TABLE tempCovidData
(
	txtLocation varchar(50) Primary KEy,
	intNoOfCases int DEFAULT (0),
	intNoOfCured int Default (0),
	dtDataAddedOn smalldatetime
)
CREATE TABLE tempCovidDataHistory
(
	intHistoryID int IDENTITY(1,1),
	txtLocation varchar(50),
	intNoOfCases int DEFAULT (0),
	intNoOfCured int Default (0),
	dtDataAddedOn smalldatetime	
)

INSERT INTO tempCovidData values ('Delhi',200,50, Getdate())
INSERT INTO tempCovidData values ('Bangalore',500,100,Getdate())
INSERT INTO tempCovidData values ('Pune',670,100,Getdate())
INSERT INTO tempCovidData values ('Chennai',1000,260,Getdate())
INSERT INTO tempCovidData values ('Chandigarh',360,40,Getdate())
INSERT INTO tempCovidData values ('Jammu',100,60,Getdate())
INSERT INTO tempCovidData values ('Ladakh',50,10,Getdate())


INSERT INTO tempCovidDataHistory values ('Delhi',100,50, Getdate()-2)
INSERT INTO tempCovidDataHistory values ('Delhi',200,50, Getdate())

INSERT INTO tempCovidDataHistory values ('Bangalore',1000,120,Getdate()-2)
INSERT INTO tempCovidDataHistory values ('Bangalore',500,100,Getdate())

INSERT INTO tempCovidDataHistory values ('Pune',400,300,Getdate()-2)
INSERT INTO tempCovidDataHistory values ('Pune',670,100,Getdate())

INSERT INTO tempCovidDataHistory values ('Chennai',1200,500,Getdate()-2)
INSERT INTO tempCovidDataHistory values ('Chennai',1000,260,Getdate())

INSERT INTO tempCovidDataHistory values ('Chandigarh',500,160,Getdate()-2)
INSERT INTO tempCovidDataHistory values ('Chandigarh',360,40,Getdate())

INSERT INTO tempCovidDataHistory values ('Jammu',120,100,Getdate()-2)
INSERT INTO tempCovidDataHistory values ('Jammu',100,60,Getdate())

INSERT INTO tempCovidDataHistory values ('Ladakh',20,10,Getdate()-2)
INSERT INTO tempCovidDataHistory values ('Ladakh',50,10,Getdate())


select * from tempCovidData

select * from tempCovidDataHistory

--drop table tempCovidData
--drop table tempCovidDataHistory
