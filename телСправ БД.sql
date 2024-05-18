
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/18/2024 04:15:24
-- Generated from EDMX file: C:\Users\user\Desktop\���������� ����������\���������� ����������\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [��������];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_�������_������_���������]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[�������] DROP CONSTRAINT [FK_�������_������_���������];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[������_���������]', 'U') IS NOT NULL
    DROP TABLE [dbo].[������_���������];
GO
IF OBJECT_ID(N'[dbo].[�������]', 'U') IS NOT NULL
    DROP TABLE [dbo].[�������];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table '������_���������'
CREATE TABLE [dbo].[������_���������] (
    [ID] int  NOT NULL,
    [��������] nvarchar(50)  NULL
);
GO

-- Creating table '�������'
CREATE TABLE [dbo].[�������] (
    [ID_��������] int IDENTITY(1,1) NOT NULL,
    [�������] nvarchar(50)  NOT NULL,
    [���] nvarchar(50)  NOT NULL,
    [��������] nvarchar(50)  NOT NULL,
    [�����_��������] nvarchar(50)  NOT NULL,
    [Email] nvarchar(50)  NULL,
    [��������] nvarchar(50)  NULL,
    [���������] nvarchar(50)  NULL,
    [ID_������_���������] int  NULL,
    [����_��������] datetime  NULL,
    [����] varbinary(max)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table '������_���������'
ALTER TABLE [dbo].[������_���������]
ADD CONSTRAINT [PK_������_���������]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID_��������] in table '�������'
ALTER TABLE [dbo].[�������]
ADD CONSTRAINT [PK_�������]
    PRIMARY KEY CLUSTERED ([ID_��������] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ID_������_���������] in table '�������'
ALTER TABLE [dbo].[�������]
ADD CONSTRAINT [FK_�������_������_���������]
    FOREIGN KEY ([ID_������_���������])
    REFERENCES [dbo].[������_���������]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_�������_������_���������'
CREATE INDEX [IX_FK_�������_������_���������]
ON [dbo].[�������]
    ([ID_������_���������]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------