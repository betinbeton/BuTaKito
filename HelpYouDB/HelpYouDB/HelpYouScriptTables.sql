USE [HelpYouDB]
GO
/****** Object:  Table [dbo].[Appoiment]    Script Date: 6/13/2017 7:40:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appoiment](
	[IdAppoiment] [int] IDENTITY(1,1) NOT NULL,
	[IdUser] [int] NULL,
	[IdDoctor] [int] NULL,
	[IdPatient] [int] NULL,
	[StartDate] [datetime] NULL,
	[FinishDate] [datetime] NOT NULL,
	[Rate] [int] NULL,
	[BankCommision] [int] NULL,
	[ServiceCharge] [int] NULL,
	[IVA] [int] NULL,
	[TotalPay] [int] NULL,
	[IdUserCard] [int] NULL,
	[IdDoctorRecipe] [int] NOT NULL,
	[IdAppoimentStatus] [int] NULL,
	[IdUserRating] [int] NOT NULL,
	[IdDoctorRating] [int] NOT NULL,
 CONSTRAINT [PK_Appoiment] PRIMARY KEY CLUSTERED 
(
	[IdAppoiment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AppoimentStatus]    Script Date: 6/13/2017 7:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AppoimentStatus](
	[IdAppoimentStatus] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModificacionDate] [datetime] NOT NULL,
 CONSTRAINT [PK_AppoimentStatus] PRIMARY KEY CLUSTERED 
(
	[IdAppoimentStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 6/13/2017 7:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Doctor](
	[IdDoctor] [int] NOT NULL,
	[IdUser] [int] NOT NULL,
	[img_IFE] [varchar](50) NULL,
	[Img_Profile] [varchar](50) NULL,
	[Img_Sign] [varchar](50) NULL,
	[CedulaNumber] [varchar](50) NULL,
	[School] [varchar](50) NULL,
	[Speciality] [varchar](50) NULL,
	[Resume] [varchar](150) NULL,
	[Rate] [int] NULL,
	[SugestedRate] [int] NULL,
	[IdDoctorStatus] [int] NOT NULL,
	[IdDoctorInvoice] [int] NULL,
	[IdDoctorOnlineStatus] [int] NOT NULL,
	[IdDoctorSpeiNumber] [int] NULL,
	[CreationDate] [datetime] NULL,
	[ModificationDate] [datetime] NULL,
 CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED 
(
	[IdDoctor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DoctorInvoice]    Script Date: 6/13/2017 7:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DoctorInvoice](
	[IdDoctorInvoice] [int] IDENTITY(1,1) NOT NULL,
	[RFC] [varchar](50) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_DoctorInvoice] PRIMARY KEY CLUSTERED 
(
	[IdDoctorInvoice] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DoctorOnlineStatus]    Script Date: 6/13/2017 7:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DoctorOnlineStatus](
	[IdDoctorOnlineStatus] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModificationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_DoctorOnlineStatus] PRIMARY KEY CLUSTERED 
(
	[IdDoctorOnlineStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DoctorRating]    Script Date: 6/13/2017 7:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DoctorRating](
	[IdDoctorRating] [int] IDENTITY(1,1) NOT NULL,
	[IdDoctor] [int] NOT NULL,
	[Rating] [int] NOT NULL,
	[Description] [varchar](150) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_DoctorRating] PRIMARY KEY CLUSTERED 
(
	[IdDoctorRating] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DoctorRecipe]    Script Date: 6/13/2017 7:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DoctorRecipe](
	[IdDoctorRecipe] [int] IDENTITY(1,1) NOT NULL,
	[RecipeDate] [datetime] NULL,
	[Description] [varchar](150) NULL,
	[IdUser] [int] NOT NULL,
	[IdDoctor] [int] NULL,
	[IdPatient] [int] NULL,
	[CreationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_DoctorRecipe] PRIMARY KEY CLUSTERED 
(
	[IdDoctorRecipe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DoctorSpeiNumber]    Script Date: 6/13/2017 7:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoctorSpeiNumber](
	[IdDoctorSpeiNumber] [int] IDENTITY(1,1) NOT NULL,
	[SpeiNumber] [int] NOT NULL,
	[Active] [bit] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModificationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_DoctorSpeiNumber] PRIMARY KEY CLUSTERED 
(
	[IdDoctorSpeiNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DoctorStatus]    Script Date: 6/13/2017 7:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DoctorStatus](
	[IdDoctorStatus] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModificacionDate] [datetime] NOT NULL,
 CONSTRAINT [PK_DoctorStatus] PRIMARY KEY CLUSTERED 
(
	[IdDoctorStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Evaluation]    Script Date: 6/13/2017 7:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evaluation](
	[IdEvaluation] [int] IDENTITY(1,1) NOT NULL,
	[IdEvaluationStatus] [int] NOT NULL,
	[IdDoctor] [int] NOT NULL,
	[IdUser] [int] NULL,
	[IdEvaluatorUser] [int] NOT NULL,
	[AsignationDate] [datetime] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModificationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Evaluation] PRIMARY KEY CLUSTERED 
(
	[IdEvaluation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EvaluationStatus]    Script Date: 6/13/2017 7:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EvaluationStatus](
	[IdEvaluationStatus] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModificacionDate] [datetime] NOT NULL,
 CONSTRAINT [PK_EvaluationStatus] PRIMARY KEY CLUSTERED 
(
	[IdEvaluationStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EvaluatorStatus]    Script Date: 6/13/2017 7:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EvaluatorStatus](
	[IdEvaluatorStatus] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModificacionDate] [datetime] NOT NULL,
 CONSTRAINT [PK_EvaluatorStatus] PRIMARY KEY CLUSTERED 
(
	[IdEvaluatorStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EvaluatorUser]    Script Date: 6/13/2017 7:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EvaluatorUser](
	[IdEvaluatorUser] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[LastName1] [varchar](50) NULL,
	[LastName2] [varchar](50) NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[IdEvaluatorStatus] [int] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModificationDate] [datetime] NULL,
 CONSTRAINT [PK_EvaluatorUser] PRIMARY KEY CLUSTERED 
(
	[IdEvaluatorUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 6/13/2017 7:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Patient](
	[IdPatient] [int] IDENTITY(1,1) NOT NULL,
	[IdUser] [int] NULL,
	[Alergies] [varchar](100) NULL,
	[Height] [numeric](18, 0) NULL,
	[Weight] [numeric](18, 0) NULL,
	[PatientRFC] [varchar](50) NULL,
	[CreationDate] [datetime] NULL,
	[ModificacionDate] [datetime] NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[IdPatient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Transfer]    Script Date: 6/13/2017 7:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transfer](
	[IdTransfer] [int] IDENTITY(1,1) NOT NULL,
	[IdDoctor] [int] NOT NULL,
	[SpeiNumber] [int] NOT NULL,
	[IdSpeiNumber] [int] NOT NULL,
	[Pay] [int] NOT NULL,
	[IVA] [int] NOT NULL,
	[TotalPay] [int] NOT NULL,
	[IdTransferStatus] [int] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModificationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Transfer] PRIMARY KEY CLUSTERED 
(
	[IdTransfer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TransferStatus]    Script Date: 6/13/2017 7:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TransferStatus](
	[IdTransferStatus] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModificationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_TransferStatus] PRIMARY KEY CLUSTERED 
(
	[IdTransferStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 6/13/2017 7:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[IdUser] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[LastName1] [varchar](50) NOT NULL,
	[LastName2] [varchar](50) NOT NULL,
	[MovilNumber] [int] NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[BirthDay] [datetime] NOT NULL,
	[IdUserStatus] [int] NOT NULL,
	[IdUserOnlineStatus] [int] NOT NULL,
	[IdUserType] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserCard]    Script Date: 6/13/2017 7:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserCard](
	[IdUserCard] [int] IDENTITY(1,1) NOT NULL,
	[IdUser] [int] NOT NULL,
	[Number] [int] NOT NULL,
	[ExpDate] [datetime] NOT NULL,
	[CVV] [int] NOT NULL,
	[IdUserCardType] [int] NOT NULL,
	[IdUserCardStatus] [int] NOT NULL,
	[BankCommission] [decimal](18, 0) NULL,
 CONSTRAINT [PK_UserCard] PRIMARY KEY CLUSTERED 
(
	[IdUserCard] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserCardStatus]    Script Date: 6/13/2017 7:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserCardStatus](
	[IdUserCardStatus] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModificationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_UserCardStatus] PRIMARY KEY CLUSTERED 
(
	[IdUserCardStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserCardType]    Script Date: 6/13/2017 7:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserCardType](
	[IdUserCardType] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModificationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_UserCardType] PRIMARY KEY CLUSTERED 
(
	[IdUserCardType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserOnlineStatus]    Script Date: 6/13/2017 7:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserOnlineStatus](
	[IdUserOnlineStatus] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModificationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_UserOnlineStatus] PRIMARY KEY CLUSTERED 
(
	[IdUserOnlineStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserRating]    Script Date: 6/13/2017 7:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserRating](
	[IdUserRating] [int] IDENTITY(1,1) NOT NULL,
	[IdUser] [int] NOT NULL,
	[Rating] [int] NOT NULL,
	[Description] [varchar](150) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_UserRating] PRIMARY KEY CLUSTERED 
(
	[IdUserRating] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserStatus]    Script Date: 6/13/2017 7:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserStatus](
	[IdUserStatus] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModificationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_UserStatus] PRIMARY KEY CLUSTERED 
(
	[IdUserStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 6/13/2017 7:40:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserType](
	[IdUserType] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](15) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModificationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED 
(
	[IdUserType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Appoiment]  WITH CHECK ADD  CONSTRAINT [FK_Appoiment_AppoimentStatus] FOREIGN KEY([IdAppoimentStatus])
REFERENCES [dbo].[AppoimentStatus] ([IdAppoimentStatus])
GO
ALTER TABLE [dbo].[Appoiment] CHECK CONSTRAINT [FK_Appoiment_AppoimentStatus]
GO
ALTER TABLE [dbo].[Appoiment]  WITH CHECK ADD  CONSTRAINT [FK_Appoiment_Doctor] FOREIGN KEY([IdDoctor])
REFERENCES [dbo].[Doctor] ([IdDoctor])
GO
ALTER TABLE [dbo].[Appoiment] CHECK CONSTRAINT [FK_Appoiment_Doctor]
GO
ALTER TABLE [dbo].[Appoiment]  WITH CHECK ADD  CONSTRAINT [FK_Appoiment_Patient] FOREIGN KEY([IdPatient])
REFERENCES [dbo].[Patient] ([IdPatient])
GO
ALTER TABLE [dbo].[Appoiment] CHECK CONSTRAINT [FK_Appoiment_Patient]
GO
ALTER TABLE [dbo].[Appoiment]  WITH CHECK ADD  CONSTRAINT [FK_Appoiment_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[User] ([IdUser])
GO
ALTER TABLE [dbo].[Appoiment] CHECK CONSTRAINT [FK_Appoiment_User]
GO
ALTER TABLE [dbo].[Appoiment]  WITH CHECK ADD  CONSTRAINT [FK_Appoiment_UserCard] FOREIGN KEY([IdUserCard])
REFERENCES [dbo].[UserCard] ([IdUserCard])
GO
ALTER TABLE [dbo].[Appoiment] CHECK CONSTRAINT [FK_Appoiment_UserCard]
GO
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_DoctorOnlineStatus] FOREIGN KEY([IdDoctorOnlineStatus])
REFERENCES [dbo].[DoctorOnlineStatus] ([IdDoctorOnlineStatus])
GO
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [FK_Doctor_DoctorOnlineStatus]
GO
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_DoctorSpeiNumber] FOREIGN KEY([IdDoctorSpeiNumber])
REFERENCES [dbo].[DoctorSpeiNumber] ([IdDoctorSpeiNumber])
GO
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [FK_Doctor_DoctorSpeiNumber]
GO
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_DoctorStatus] FOREIGN KEY([IdDoctorStatus])
REFERENCES [dbo].[DoctorStatus] ([IdDoctorStatus])
GO
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [FK_Doctor_DoctorStatus]
GO
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[User] ([IdUser])
GO
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [FK_Doctor_User]
GO
ALTER TABLE [dbo].[DoctorRating]  WITH CHECK ADD  CONSTRAINT [FK_DoctorRating_Doctor] FOREIGN KEY([IdDoctor])
REFERENCES [dbo].[Doctor] ([IdDoctor])
GO
ALTER TABLE [dbo].[DoctorRating] CHECK CONSTRAINT [FK_DoctorRating_Doctor]
GO
ALTER TABLE [dbo].[DoctorRecipe]  WITH CHECK ADD  CONSTRAINT [FK_DoctorRecipe_Doctor] FOREIGN KEY([IdDoctor])
REFERENCES [dbo].[Doctor] ([IdDoctor])
GO
ALTER TABLE [dbo].[DoctorRecipe] CHECK CONSTRAINT [FK_DoctorRecipe_Doctor]
GO
ALTER TABLE [dbo].[DoctorRecipe]  WITH CHECK ADD  CONSTRAINT [FK_DoctorRecipe_Patient] FOREIGN KEY([IdPatient])
REFERENCES [dbo].[Patient] ([IdPatient])
GO
ALTER TABLE [dbo].[DoctorRecipe] CHECK CONSTRAINT [FK_DoctorRecipe_Patient]
GO
ALTER TABLE [dbo].[Evaluation]  WITH CHECK ADD  CONSTRAINT [FK_Evaluation_Doctor] FOREIGN KEY([IdDoctor])
REFERENCES [dbo].[Doctor] ([IdDoctor])
GO
ALTER TABLE [dbo].[Evaluation] CHECK CONSTRAINT [FK_Evaluation_Doctor]
GO
ALTER TABLE [dbo].[Evaluation]  WITH CHECK ADD  CONSTRAINT [FK_Evaluation_EvaluationStatus] FOREIGN KEY([IdEvaluationStatus])
REFERENCES [dbo].[EvaluationStatus] ([IdEvaluationStatus])
GO
ALTER TABLE [dbo].[Evaluation] CHECK CONSTRAINT [FK_Evaluation_EvaluationStatus]
GO
ALTER TABLE [dbo].[Evaluation]  WITH CHECK ADD  CONSTRAINT [FK_Evaluation_EvaluatorUser] FOREIGN KEY([IdEvaluatorUser])
REFERENCES [dbo].[EvaluatorUser] ([IdEvaluatorUser])
GO
ALTER TABLE [dbo].[Evaluation] CHECK CONSTRAINT [FK_Evaluation_EvaluatorUser]
GO
ALTER TABLE [dbo].[EvaluatorUser]  WITH CHECK ADD  CONSTRAINT [FK_EvaluatorUser_EvaluatorStatus] FOREIGN KEY([IdEvaluatorStatus])
REFERENCES [dbo].[EvaluatorStatus] ([IdEvaluatorStatus])
GO
ALTER TABLE [dbo].[EvaluatorUser] CHECK CONSTRAINT [FK_EvaluatorUser_EvaluatorStatus]
GO
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Patient_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[User] ([IdUser])
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Patient_User]
GO
ALTER TABLE [dbo].[Transfer]  WITH CHECK ADD  CONSTRAINT [FK_Transfer_TransferStatus] FOREIGN KEY([IdTransferStatus])
REFERENCES [dbo].[TransferStatus] ([IdTransferStatus])
GO
ALTER TABLE [dbo].[Transfer] CHECK CONSTRAINT [FK_Transfer_TransferStatus]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserOnlineStatus] FOREIGN KEY([IdUserOnlineStatus])
REFERENCES [dbo].[UserOnlineStatus] ([IdUserOnlineStatus])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_UserOnlineStatus]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserStatus] FOREIGN KEY([IdUserStatus])
REFERENCES [dbo].[UserStatus] ([IdUserStatus])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_UserStatus]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_UserType] FOREIGN KEY([IdUserType])
REFERENCES [dbo].[UserType] ([IdUserType])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_UserType]
GO
ALTER TABLE [dbo].[UserCard]  WITH CHECK ADD  CONSTRAINT [FK_UserCard_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[User] ([IdUser])
GO
ALTER TABLE [dbo].[UserCard] CHECK CONSTRAINT [FK_UserCard_User]
GO
ALTER TABLE [dbo].[UserCard]  WITH CHECK ADD  CONSTRAINT [FK_UserCard_UserCardStatus] FOREIGN KEY([IdUserCardStatus])
REFERENCES [dbo].[UserCardStatus] ([IdUserCardStatus])
GO
ALTER TABLE [dbo].[UserCard] CHECK CONSTRAINT [FK_UserCard_UserCardStatus]
GO
ALTER TABLE [dbo].[UserCard]  WITH CHECK ADD  CONSTRAINT [FK_UserCard_UserCardType] FOREIGN KEY([IdUserCardType])
REFERENCES [dbo].[UserCardType] ([IdUserCardType])
GO
ALTER TABLE [dbo].[UserCard] CHECK CONSTRAINT [FK_UserCard_UserCardType]
GO
ALTER TABLE [dbo].[UserRating]  WITH CHECK ADD  CONSTRAINT [FK_UserRating_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[User] ([IdUser])
GO
ALTER TABLE [dbo].[UserRating] CHECK CONSTRAINT [FK_UserRating_User]
GO
