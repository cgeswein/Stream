CREATE TABLE reference.UserRoles
(
	UserRolesId int NOT NULL,
	UserId int NOT NULL,
	RoleName dbo.role_name NOT NULL,
	CONSTRAINT PK_reference_UserRoles PRIMARY KEY CLUSTERED (UserRolesId),
    CONSTRAINT FK_reference_UserRoles_Users FOREIGN KEY(UserId)
        REFERENCES authenticate.Users (UserId),
    CONSTRAINT FK_reference_UserRoles_Roles FOREIGN KEY(RoleName)
        REFERENCES list.Roles (RoleName)
);
GO

CREATE UNIQUE NONCLUSTERED INDEX IX_reference_UserRoles_UserId_RoleName ON reference.UserRoles (UserId, RoleName);
GO

