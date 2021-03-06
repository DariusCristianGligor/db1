CREATE TABLE dbo.Users
(
UserId INT PRIMARY KEY NOT NULL,
NameUser VARCHAR(30) NOT NULL,
Age INT,
Mail VARCHAR(30) UNIQUE,
AddressUser VARCHAR(70) NOT NULL,
PasswordUser VARCHAR(64)NOT NULL,
CONSTRAINT CHK_User CHECK(AGE>=16 AND LEN(PasswordUser)>=6) 
)
CREATE TABLE dbo.Reviews
(
IdReview INT IDENTITY(1,1) PRIMARY KEY,
Note INT DEFAULT 0,
Price VARCHAR(20) NOT NULL,
Place VARCHAR(30) NOT NULL,
UserId INT FOREIGN KEY REFERENCES dbo.Users(UserId) NOT NULL,
CONSTRAINT CHK_REVIEWs CHECK(Note>=0 AND LEN(Place)>=6) 
)
