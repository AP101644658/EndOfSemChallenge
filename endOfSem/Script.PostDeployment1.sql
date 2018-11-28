IF '$(LoadTestData)' = 'true'

BEGIN

DELETE FROM [Game]
DELETE FROM [TMember]

INSERT INTO [TMember]([FirstName],[LastName],[Authorised],[Rejected]) VALUES
('Adrian','Phillips',1,0),
('Olivia','Vun',0,1);

INSERT INTO [Game]([DateTime],[Venue],[Forfeited]) VALUES
('2018-11-28 10:30','Doncaster East',0),
('2018-11-28 11:30','Doncaster East',0),
('2018-11-28 12:30','Doncaster East',0),
('2018-11-28 13:30','Doncaster East',0),
('2018-11-28 14:30','Doncaster East',0),
('2018-11-28 15:30','Doncaster East',0),
('2018-11-28 16:30','Doncaster East',0),
('2018-11-29 10:30','Doncaster East',0),
('2018-11-09 11:30','Doncaster East',0),
('2018-11-09 12:30','Doncaster East',0),
('2018-11-09 13:30','Doncaster East',0),
('2018-11-09 14:30','Doncaster East',0),
('2018-11-09 15:30','Doncaster East',0),
('2018-12-03 10:30','Doncaster East',0),
('2018-12-03 11:30','Doncaster East',0),
('2018-12-03 12:30','Doncaster East',0),
('2018-12-03 13:30','Doncaster East',0),
('2018-12-03 14:30','Doncaster East',0);


END