USE [Imobiliaria]
GO
/****** Object:  Table [dbo].[Bairro]    Script Date: 28/02/2018 15:05:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bairro](
	[CodBairro] [int] NOT NULL,
	[Bairro] [nvarchar](50) NULL,
	[CodZona] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 28/02/2018 15:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Codigo] [int] NOT NULL,
	[Cliente] [nvarchar](50) NULL,
	[Nascimento] [datetime] NULL,
	[email] [nvarchar](50) NULL,
	[login] [nvarchar](50) NULL,
	[senha] [nvarchar](50) NULL,
	[autorizado] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Corretor]    Script Date: 28/02/2018 15:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Corretor](
	[CodCorretor] [int] NOT NULL,
	[Corretor] [nvarchar](50) NULL,
	[Comissao] [float] NULL,
	[Login] [nvarchar](50) NULL,
	[Senha] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Imovel]    Script Date: 28/02/2018 15:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Imovel](
	[CodImovel] [int] NOT NULL,
	[Imovel] [nvarchar](200) NULL,
	[CodImovelTipo] [int] NULL,
	[Endereco] [nvarchar](200) NULL,
	[Complemento] [nvarchar](50) NULL,
	[CodBairro] [int] NULL,
	[Cidade] [nvarchar](50) NULL,
	[Estado] [nvarchar](2) NULL,
	[QtdQuarto] [int] NULL,
	[QtdSuite] [int] NULL,
	[QtdSala] [int] NULL,
	[QtdBanheiro] [int] NULL,
	[QtdVagaGaragem] [int] NULL,
	[AreaConstruida] [int] NULL,
	[AreaTerreno] [int] NULL,
	[PrecoVenda] [decimal](18, 2) NULL,
	[Disponivel] [nvarchar](50) NULL,
	[Codvendedor] [int] NULL,
	[TipoVendedor] [nvarchar](1) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Venda]    Script Date: 28/02/2018 15:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venda](
	[CodVenda] [int] NOT NULL,
	[CodCliente] [int] NOT NULL,
	[CodCorretor] [int] NULL,
	[CodImovel] [int] NULL,
	[Data] [datetime] NULL,
	[Valor] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Zona]    Script Date: 28/02/2018 15:05:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zona](
	[CodZona] [int] NOT NULL,
	[Zona] [nvarchar](50) NULL
) ON [PRIMARY]

GO
