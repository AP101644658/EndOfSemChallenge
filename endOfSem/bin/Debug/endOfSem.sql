﻿/*
Deployment script for endOfSem

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar LoadTestData "true"
:setvar DatabaseName "endOfSem"
:setvar DefaultFilePrefix "endOfSem"
:setvar DefaultDataPath "C:\Users\STUDENT\AppData\Local\Microsoft\VisualStudio\SSDT\endOfSem"
:setvar DefaultLogPath "C:\Users\STUDENT\AppData\Local\Microsoft\VisualStudio\SSDT\endOfSem"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
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
GO

GO
PRINT N'Update complete.';


GO
