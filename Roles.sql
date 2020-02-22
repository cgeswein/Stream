CREATE TABLE list.Roles
(
	RoleName dbo.role_name NOT NULL,
	RoleDescription varchar(400) NULL,
	CONSTRAINT PK_list_Roles PRIMARY KEY CLUSTERED (RoleName)
);
GO

CREATE NONCLUSTERED INDEX IX_list_Roles_RoleName ON list.Roles (RoleName);
GO

