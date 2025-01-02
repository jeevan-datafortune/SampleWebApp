CREATE DATABASE SampleDB;
USE [SampleDB]
GO
/****** Object:  Table [dbo].[Registrations]    Script Date: 02-01-2025 16:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registrations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](100) NOT NULL,
	[Gender] [varchar](1) NOT NULL,
	[State] [int] NOT NULL,
	[DOB] [date] NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Registrations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[States]    Script Date: 02-01-2025 16:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[States](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Registrations] ADD  CONSTRAINT [DF_Registrations_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Registrations]  WITH CHECK ADD  CONSTRAINT [FK_Registrations_States] FOREIGN KEY([State])
REFERENCES [dbo].[States] ([Id])
GO
ALTER TABLE [dbo].[Registrations] CHECK CONSTRAINT [FK_Registrations_States]
GO
/****** Object:  StoredProcedure [dbo].[usp_CheckEmailExists]    Script Date: 02-01-2025 16:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[usp_CheckEmailExists]
(
  @Email VarChar(100), 
  @Ret_Msg VarChar(100) Out
)
As
Begin
	Select 
	@Ret_Msg =Case When Count(Id) > 0 Then 'Email is already in use'
		Else 'Email is available'
		End 
	From Registrations
	Where LOWER(Email) = LOWER(@Email)
End
GO
/****** Object:  StoredProcedure [dbo].[usp_GetById]    Script Date: 02-01-2025 16:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[usp_GetById]
(@Id int)
As
Begin
  Select
    Id,
	FullName,
	Gender,
	DOB,
	[State],
	Email,
	Phone,
	CreatedDate
 From Registrations
 Where Id = @Id
End
GO
/****** Object:  StoredProcedure [dbo].[usp_GetRegistrations]    Script Date: 02-01-2025 16:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[usp_GetRegistrations]
As
Begin
	Select 
		R.Id,
		R.FullName,
		R.Email,
		Case When  R.Gender = 'M' Then 'Male' When R.Gender = 'F' Then 'Female' End As Gender,
		R.DOB,
		R.Phone,
		R.[State] As StateId,
		S.Name As StateName,
		R.CreatedDate
	From Registrations R
	Inner Join States S On R.[State]=S.Id
	Order By R.CreatedDate Desc, R.FullName Asc
End
GO
/****** Object:  StoredProcedure [dbo].[usp_GetStates]    Script Date: 02-01-2025 16:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[usp_GetStates]
AS
Begin
  Select Id,Name From States 
  Order By Name Asc
End
GO
/****** Object:  StoredProcedure [dbo].[usp_Register]    Script Date: 02-01-2025 16:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Register]
(
	@FullName VarChar(100),
	@Gender Varchar(1),
	@StateId Int,
	@DOB Date,
	@Email VarChar(100),
	@Phone Varchar(50),	
	@Ret_Msg VarChar(100) Out
)
AS
Begin
	If Not Exists(Select Id From Registrations Where LOWER(Email) = LOWER(@Email)) 
	 Begin
	   Begin Try
	    Begin Transaction;
		Insert Into Registrations
		(FullName,Email,DOB,Gender,Phone,State)
		Values
		(@FullName,@Email,@DOB,@Gender,@Phone,@StateId);		
		Set @Ret_Msg='Successfully Registered';
		Commit Transaction;
	  End Try
	  Begin Catch
	    Rollback Transaction;		
		Set @Ret_Msg=ERROR_MESSAGE();
	  End Catch
	 End
	Else
	 Begin		
		Set @Ret_Msg='Email already exists';
	 End	 
End
GO
