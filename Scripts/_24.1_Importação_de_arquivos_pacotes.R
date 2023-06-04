######################################################################################################################################################
######################################################################################################################################################

#IMPORTAÇÃO DE ARQUIVOS - PACOTES

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#USANDO O PACOTE utils

  install.packages("utils")

  library(utils)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Arquivos no formato .txt

#Utilizamos o parâmetro 'sep' para definir o que no arquivo identifica uma nova coluna.

#O parâmetro 'header' informa que a primeira linha é o cabeçalho da tabela
  
  read.table("E:\\GITHUB\\RProject\\Arquivos\\Arquivos_usados_scripts\\tabela_decimais.txt", sep = '\t', dec = ",", header = FALSE)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Arquivos csv (comma separated value)

  read.csv("E:\\GITHUB\\RProject\\Arquivos\\Arquivos_usados_scripts\\vendas_video_games.csv")

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#csv2
  
#No Brasil, a vírgula é utilizada como ponto decimal e o ponto e vírgula é o separador. Usando a função read.csv2() evitamos erros quanto a isso 
  
#Se já estiver no diretório de trabalho

  read.csv2("E:\\GITHUB\\RProject\\Arquivos\\Arquivos_usados_scripts\\tabela_decimais.txt", sep = "\t")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#USANDO O PACOTE readr


#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#USANDO O PACOTE readxl 

  install.packages("readxl")
  
  library(readxl)

#Se o arquivo estiver na pasta de trabalho:

  tabela <- read_xlsx("tabela2_1.xlsx")

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Se estiver noutra pasta:

  tabela <- read_xlsx("E:\\GITHUB\\RProject\\DataSets\\tabela2_1.csv")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#USANDO O PACOTE xlsx  

  install.packages("xlsx")
  library(xlsx)

#Carregando planilha pelo índice da planilha no arquivo

  read.xlsx("E:\\GITHUB\\RProject\\DataSets\\Dados_EB.xlsx", sheetIndex = 5, header = TRUE)

#Carregando planilha pelo nome da planilha no arquivo

  read.xlsx("E:\\GITHUB\\RProject\\DataSets\\Dados_EB.xlsx", sheetName = "CD-Municipios", header = TRUE)

#Carregando planilha navegando pelo computador

  read.xlsx(file.choose(), sheetIndex = 5)  

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#USANDO O PACOTE data.table

  install.packages("data.table")
  
  library(data.table)

#A função fread() é usada para importar grandes quantidades de dados

#Se o arquivo estiver na pasta de trabalho:

  tabela <- fread("tabela2_1.xlsx")

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Se estiver noutra pasta:

  tabela <- fread("E:\\GITHUB\\RProject\\DataSets\\tabela2_1.xlsx")

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#A função fread() retorna um data table se quisermos um dataframe:

  tabela <- fread("E:\\GITHUB\\RProject\\DataSets\\tabela2_1.xlsx", data.table = FALSE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#USANDO O PACOTE foreign 
  
  install.packages("foreign")
  
  library(foreign)

#Abrindo arquivo .arff
  
  read.arff(file.choose())
  
#Abrindo arquivo .dta
  
  read.dta(file.choose())

#-----------------------------------------------------------------------------------------------------------------------------------------------------
  
  glimpse()