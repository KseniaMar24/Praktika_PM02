
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/18/2024 04:15:24
-- Generated from EDMX file: C:\Users\user\Desktop\Телефонный справочник\Телефонный справочник\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [ТелСправ];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Контакт_Группа_контактов]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Контакт] DROP CONSTRAINT [FK_Контакт_Группа_контактов];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Группа_контактов]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Группа_контактов];
GO
IF OBJECT_ID(N'[dbo].[Контакт]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Контакт];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Группа_контактов'
CREATE TABLE [dbo].[Группа_контактов] (
    [ID] int  NOT NULL,
    [Название] nvarchar(50)  NULL
);
GO

-- Creating table 'Контакт'
CREATE TABLE [dbo].[Контакт] (
    [ID_Контакта] int IDENTITY(1,1) NOT NULL,
    [Фамилия] nvarchar(50)  NOT NULL,
    [Имя] nvarchar(50)  NOT NULL,
    [Отчество] nvarchar(50)  NOT NULL,
    [Номер_Телефона] nvarchar(50)  NOT NULL,
    [Email] nvarchar(50)  NULL,
    [Компания] nvarchar(50)  NULL,
    [Должность] nvarchar(50)  NULL,
    [ID_Группа_контактов] int  NULL,
    [Дата_Рождения] datetime  NULL,
    [Фото] varbinary(max)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'Группа_контактов'
ALTER TABLE [dbo].[Группа_контактов]
ADD CONSTRAINT [PK_Группа_контактов]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID_Контакта] in table 'Контакт'
ALTER TABLE [dbo].[Контакт]
ADD CONSTRAINT [PK_Контакт]
    PRIMARY KEY CLUSTERED ([ID_Контакта] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ID_Группа_контактов] in table 'Контакт'
ALTER TABLE [dbo].[Контакт]
ADD CONSTRAINT [FK_Контакт_Группа_контактов]
    FOREIGN KEY ([ID_Группа_контактов])
    REFERENCES [dbo].[Группа_контактов]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Контакт_Группа_контактов'
CREATE INDEX [IX_FK_Контакт_Группа_контактов]
ON [dbo].[Контакт]
    ([ID_Группа_контактов]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------