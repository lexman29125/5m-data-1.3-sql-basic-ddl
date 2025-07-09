CREATE TABLE [student] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [name] nvarchar(255),
  [address] nvarchar(255),
  [phone] nvarchar(255),
  [email] nvarchar(255),
  [class_id] int
)
GO

CREATE TABLE [teacher] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [name] nvarchar(255),
  [address] nvarchar(255),
  [phone] nvarchar(255),
  [email] nvarchar(255)
)
GO

CREATE TABLE [class] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [name] nvarchar(255),
  [teacher_id] int
)
GO

ALTER TABLE [student] ADD FOREIGN KEY ([class_id]) REFERENCES [class] ([id])
GO

ALTER TABLE [class] ADD FOREIGN KEY ([teacher_id]) REFERENCES [teacher] ([id])
GO
