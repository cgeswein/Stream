CREATE TABLE reference.RolePermittedActions
(
	RolePermittedActionsId int NOT NULL,
	RoleName dbo.role_name NOT NULL,
	ActionName varchar(50) NOT NULL,
	CONSTRAINT PK_reference_RolePermittedActions PRIMARY KEY CLUSTERED (RolePermittedActionsId),
    CONSTRAINT FK_reference_RolePermittedActions_Roles FOREIGN KEY(RoleName)
        REFERENCES list.Roles (RoleName),
    CONSTRAINT FK_reference_RolePermittedActions_PermittedActions FOREIGN KEY(ActionName)
        REFERENCES list.PermittedActions (ActionName)
);
GO

CREATE UNIQUE NONCLUSTERED INDEX IX_reference_RolePermittedActions_RoleName_ActionName ON reference.RolePermittedActions (RoleName, ActionName);
GO
