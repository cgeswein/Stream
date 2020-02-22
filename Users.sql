CREATE TABLE authenticate.Users
(
	UserId int NOT NULL,
	FirebaseId dbo.firebase_id NOT NULL,
	UserEmail dbo.email NOT NULL,
	FirstName dbo.first_name NOT NULL,
	MiddleName dbo.middle_name NULL,
	LastName dbo.last_name NOT NULL,
	FullName AS FirstName + ' ' + LastName,
	DisplayName varchar(101) NOT NULL,
	IsEnabled bit NOT NULL,
	CreatedDate datetime NOT NULL,
	CONSTRAINT PK_authenticate_Users PRIMARY KEY CLUSTERED (UserId)
);
GO

CREATE UNIQUE NONCLUSTERED INDEX IX_authenticate_Users_FirebaseId ON authenticate.Users (FirebaseId);
GO

CREATE UNIQUE NONCLUSTERED INDEX IX_authenticate_Users_UserEmail ON authenticate.Users (UserEmail);
GO

