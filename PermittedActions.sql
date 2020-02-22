CREATE TABLE list.PermittedActions
(
	ActionName varchar(50) NOT NULL,
	ActionDescription varchar(200) NULL,
	CONSTRAINT PK_list_PermittedActions PRIMARY KEY CLUSTERED (ActionName)
)
