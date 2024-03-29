USE [DS_TRANNING]
GO
/****** Object:  StoredProcedure [dbo].[SP_WRK_Clientes]    Script Date: 10/30/2019 6:41:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Rodrigo
-- Create date: 2019-11-04
-- Description:	Procedure que cria a tabela WRK_Clientes
-- =============================================
ALTER PROCEDURE [dbo].[SP_WRK_Clientes] 
AS
BEGIN

-- =============================================
-- DROP TABLE
-- =============================================

IF OBJECT_ID('DBO.[WRK_CLIENTES]') IS NOT NULL
DROP TABLE DBO.[WRK_CLIENTES]

-- =============================================
-- CRIACAO DA TABELA
-- =============================================

CREATE TABLE DBO.[WRK_CLIENTES]
(
	   [RowNumber]		INT IDENTITY
	  ,[Customer ID]	VARCHAR(100)
      ,[City]			VARCHAR(100)
      ,[ZipCode]		VARCHAR(10)
      ,[Gender]			CHAR(1)
      ,[Age]			FLOAT
	  )

-- =============================================
-- TRUNCATE NA TABELA
-- =============================================

TRUNCATE TABLE DBO.[WRK_CLIENTES]

-- =============================================
-- INSERIR NA TABELA
-- =============================================

INSERT INTO [dbo].[WRK_CLIENTES]
(			
			[Customer ID]
           ,[City]
           ,[ZipCode]
           ,[Gender]
           ,[Age]
)
SELECT [Customer ID]
      ,[City]
      ,[ZipCode]
      ,[Gender]
      ,[Age]
  FROM [DS_TRANNING].[dbo].[RAW_Clientes_20191104]


END
GO