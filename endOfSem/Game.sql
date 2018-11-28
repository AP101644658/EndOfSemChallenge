CREATE TABLE [dbo].[Game]
(
    [GameId] INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
    [DateTime] DATETIME NOT NULL, 
    [Venue] NVARCHAR(50) NOT NULL, 
    [Forfeited] INT NULL, 
    [TMemberId] INT NULL, 
    [Amount] MONEY NULL,  
    CONSTRAINT [FK_Game_TMember] FOREIGN KEY (TMemberId) REFERENCES [TMember](TMemberId)
)
