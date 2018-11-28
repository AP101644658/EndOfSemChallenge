CREATE TABLE [dbo].[TMember]
(
	[TMemberId] INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
    [FirstName] NVARCHAR(50) NOT NULL, 
    [LastName] NVARCHAR(50) NOT NULL, 
    [Authorised] INT NULL, 
    [Rejected] INT NULL
)
