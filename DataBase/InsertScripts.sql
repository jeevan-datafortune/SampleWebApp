USE [SampleDB]
GO
SET IDENTITY_INSERT [dbo].[States] ON 
GO
INSERT [dbo].[States] ([Id], [Name]) VALUES (1, N'Andhra Pradesh')
GO
INSERT [dbo].[States] ([Id], [Name]) VALUES (2, N'Arunachal Pradesh')
GO
INSERT [dbo].[States] ([Id], [Name]) VALUES (3, N'Assam')
GO
INSERT [dbo].[States] ([Id], [Name]) VALUES (4, N'Bihar')
GO
INSERT [dbo].[States] ([Id], [Name]) VALUES (5, N'Chhattisgarh')
GO
INSERT [dbo].[States] ([Id], [Name]) VALUES (6, N'Goa')
GO
INSERT [dbo].[States] ([Id], [Name]) VALUES (7, N'Gujarat')
GO
INSERT [dbo].[States] ([Id], [Name]) VALUES (8, N'Haryana')
GO
INSERT [dbo].[States] ([Id], [Name]) VALUES (9, N'Himachal Pradesh')
GO
INSERT [dbo].[States] ([Id], [Name]) VALUES (10, N'Jharkhand')
GO
INSERT [dbo].[States] ([Id], [Name]) VALUES (11, N'Karnataka')
GO
INSERT [dbo].[States] ([Id], [Name]) VALUES (12, N'Kerala')
GO
INSERT [dbo].[States] ([Id], [Name]) VALUES (13, N'Madhya Pradesh')
GO
INSERT [dbo].[States] ([Id], [Name]) VALUES (14, N'Maharashtra')
GO
INSERT [dbo].[States] ([Id], [Name]) VALUES (15, N'Manipur')
GO
INSERT [dbo].[States] ([Id], [Name]) VALUES (16, N'Meghalaya')
GO
INSERT [dbo].[States] ([Id], [Name]) VALUES (17, N'Mizoram')
GO
INSERT [dbo].[States] ([Id], [Name]) VALUES (18, N'Nagaland')
GO
INSERT [dbo].[States] ([Id], [Name]) VALUES (19, N'Odisha')
GO
INSERT [dbo].[States] ([Id], [Name]) VALUES (20, N'Punjab')
GO
INSERT [dbo].[States] ([Id], [Name]) VALUES (21, N'Rajasthan')
GO
INSERT [dbo].[States] ([Id], [Name]) VALUES (22, N'Sikkim')
GO
INSERT [dbo].[States] ([Id], [Name]) VALUES (23, N'Tamil Nadu')
GO
INSERT [dbo].[States] ([Id], [Name]) VALUES (24, N'Telangana')
GO
INSERT [dbo].[States] ([Id], [Name]) VALUES (25, N'Tripura')
GO
INSERT [dbo].[States] ([Id], [Name]) VALUES (26, N'Uttar Pradesh')
GO
INSERT [dbo].[States] ([Id], [Name]) VALUES (27, N'Uttarakhand')
GO
INSERT [dbo].[States] ([Id], [Name]) VALUES (28, N'West Bengal')
GO
SET IDENTITY_INSERT [dbo].[States] OFF
GO
SET IDENTITY_INSERT [dbo].[Registrations] ON 
GO
INSERT [dbo].[Registrations] ([Id], [FullName], [Gender], [State], [DOB], [Email], [Phone], [CreatedDate]) VALUES (1, N'Jeevan Baby', N'M', 12, CAST(N'1986-05-25' AS Date), N'jeevan.baby@datafortune.com', N'9747433479', CAST(N'2024-12-31T18:45:37.200' AS DateTime))
GO
INSERT [dbo].[Registrations] ([Id], [FullName], [Gender], [State], [DOB], [Email], [Phone], [CreatedDate]) VALUES (2, N'John Doe', N'M', 1, CAST(N'1990-01-10' AS Date), N'johndoe@example.com', N'934-567-8901', CAST(N'2024-12-31T19:24:44.810' AS DateTime))
GO
INSERT [dbo].[Registrations] ([Id], [FullName], [Gender], [State], [DOB], [Email], [Phone], [CreatedDate]) VALUES (3, N'Alice Smith', N'F', 1, CAST(N'1990-03-29' AS Date), N'alicesmith@example.com', N'770-090-0123', CAST(N'2024-12-31T19:26:10.020' AS DateTime))
GO
INSERT [dbo].[Registrations] ([Id], [FullName], [Gender], [State], [DOB], [Email], [Phone], [CreatedDate]) VALUES (4, N'Bob Martin', N'M', 15, CAST(N'1990-06-27' AS Date), N'bobmartin@example.com', N'412-345-678', CAST(N'2024-12-31T19:26:43.700' AS DateTime))
GO
INSERT [dbo].[Registrations] ([Id], [FullName], [Gender], [State], [DOB], [Email], [Phone], [CreatedDate]) VALUES (5, N'Maria Lopez', N'M', 16, CAST(N'1990-06-27' AS Date), N'maria.lopez@example.com', N'612-345-6781', CAST(N'2024-12-31T19:27:17.860' AS DateTime))
GO
INSERT [dbo].[Registrations] ([Id], [FullName], [Gender], [State], [DOB], [Email], [Phone], [CreatedDate]) VALUES (6, N'David Chen', N'M', 13, CAST(N'1990-06-30' AS Date), N'davchen@example.com', N'612-345-6782', CAST(N'2024-12-31T19:28:17.203' AS DateTime))
GO
INSERT [dbo].[Registrations] ([Id], [FullName], [Gender], [State], [DOB], [Email], [Phone], [CreatedDate]) VALUES (7, N'Emily Wilson', N'F', 12, CAST(N'1990-06-30' AS Date), N'emilyw@example.com', N'612-345-6783', CAST(N'2024-12-31T19:28:44.610' AS DateTime))
GO
INSERT [dbo].[Registrations] ([Id], [FullName], [Gender], [State], [DOB], [Email], [Phone], [CreatedDate]) VALUES (8, N'James Roberts', N'M', 11, CAST(N'1990-06-30' AS Date), N'jroberts@example.com', N'612-345-6784', CAST(N'2024-12-31T19:29:09.770' AS DateTime))
GO
INSERT [dbo].[Registrations] ([Id], [FullName], [Gender], [State], [DOB], [Email], [Phone], [CreatedDate]) VALUES (9, N'Sofia Garcia', N'F', 10, CAST(N'1990-06-13' AS Date), N'sofia.garcia@example.com', N'612-345-6785', CAST(N'2024-12-31T19:29:36.683' AS DateTime))
GO
INSERT [dbo].[Registrations] ([Id], [FullName], [Gender], [State], [DOB], [Email], [Phone], [CreatedDate]) VALUES (10, N'Isabella Zhang', N'F', 7, CAST(N'1990-07-21' AS Date), N'isabella.zhang@example.com', N'612-345-6789', CAST(N'2024-12-31T19:31:09.100' AS DateTime))
GO
INSERT [dbo].[Registrations] ([Id], [FullName], [Gender], [State], [DOB], [Email], [Phone], [CreatedDate]) VALUES (11, N'Jack Taylor', N'M', 8, CAST(N'1990-07-24' AS Date), N'jack.taylor@example.com', N'612-345-6799', CAST(N'2024-12-31T19:31:40.997' AS DateTime))
GO
INSERT [dbo].[Registrations] ([Id], [FullName], [Gender], [State], [DOB], [Email], [Phone], [CreatedDate]) VALUES (12, N'Mia Clark', N'F', 8, CAST(N'1990-07-10' AS Date), N'mia.clark@example.com', N'612-345-6791', CAST(N'2024-12-31T19:32:08.947' AS DateTime))
GO
INSERT [dbo].[Registrations] ([Id], [FullName], [Gender], [State], [DOB], [Email], [Phone], [CreatedDate]) VALUES (13, N'Nathan Lee', N'M', 5, CAST(N'1990-10-18' AS Date), N'nathan.lee@example.com', N'612-345-6792', CAST(N'2024-12-31T19:32:55.600' AS DateTime))
GO
INSERT [dbo].[Registrations] ([Id], [FullName], [Gender], [State], [DOB], [Email], [Phone], [CreatedDate]) VALUES (25, N'Jeevan Baby', N'M', 1, CAST(N'1986-05-25' AS Date), N'jeevan.baby@gmail.com', N'974-743-3479', CAST(N'2024-12-31T20:15:33.390' AS DateTime))
GO
INSERT [dbo].[Registrations] ([Id], [FullName], [Gender], [State], [DOB], [Email], [Phone], [CreatedDate]) VALUES (26, N'Jeevan Baby', N'M', 1, CAST(N'2024-12-31' AS Date), N'jeevandatafortune@gmail.com', N'974-743-3479', CAST(N'2024-12-31T20:36:20.113' AS DateTime))
GO
INSERT [dbo].[Registrations] ([Id], [FullName], [Gender], [State], [DOB], [Email], [Phone], [CreatedDate]) VALUES (27, N'Bob Martin', N'M', 1, CAST(N'1986-05-25' AS Date), N'bobmartin@example2.com', N'770-090-0123', CAST(N'2025-01-02T15:38:05.860' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Registrations] OFF
GO
