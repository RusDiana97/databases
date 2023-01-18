/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [ID]
      ,[Nume]
      ,[Prenume]
      ,[Adresa]
      ,[Oras]
  FROM [Persoane].[dbo].[detalii_persoane]