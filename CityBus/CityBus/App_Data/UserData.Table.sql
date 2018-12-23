CREATE TABLE [dbo].[Table]
(
    [UserName] NCHAR(20) NOT NULL, 
    [Email] NCHAR(50) NOT NULL, 
    [Password] NCHAR(30) NOT NULL, 
    [MobileNo] NCHAR(15) NOT NULL, 
    CONSTRAINT [PK_Table] PRIMARY KEY ([UserName])
)
