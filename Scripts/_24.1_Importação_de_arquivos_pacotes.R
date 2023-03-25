######################################################################################################################################################
######################################################################################################################################################

#IMPORTAÇÃO DE ARQUIVOS - PACOTES

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#BUSCA DE ARQUIVOS

#USANDO O PACOTE utils

  install.packages("utils")
  library(utils)

#Arquivos csv (comma separated value)
#O parâmetro header determina se a tabela tem ou não um cabeçalho e sep é o separador utilizado
#Caso o arquivo esteja na pasta de trabalho:

  tabela <- read.csv("tabela2_1.csv")

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Senão, devemos dar o endereço completo do arquivo
#O parâmetro header serve para informar se há cabeçalho
#O parâmetro sep serve para dar o tipo de separador em torno do qual o arquivo está organizado
#O parâmetro dec serve para informar qual é o separador decimal. No Brasil, usamos a vírgula

  tabela <- read.csv("E:\\GITHUB\\RProject\\DataSets\\tabela2_1.csv", header = TRUE, sep = ";", dec = ",")

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#No Brasil, a vírgula é utilizada como ponto decimal e o ponto e vírgula é o separador
#Usando a função read.csv2() evitamos erros quanto a isso 
#Se já estiver no diretório de trabalho

  tabela <- read.csv2("tab2_1.csv")

#Senão, devemos dar o endereço

  tabela <- read.csv2("E:\\GITHUB\\RProject\\DataSets\\tabela2_1.csv", header = TRUE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#USANDO O PACOTE readr

  install.packages("readr")
  library(readr)

#Com esse pacote podemos abrir arquivos com qualquer tipo de separador
#Caso o arquivo esteja na pasta de trabalho

  tabela <- read_delim("tabela2_1.csv", delim = ";")

#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Senão, devemos dar o endereço completo do arquiv  

  tabela <- read_delim("E:\\GITHUB\\RProject\\DataSets\\tabela2_1.csv", delim = ";")   

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Importar arquivo .txt  
#Delimitados por ';' e suas 4 primeiras linhas

  tabela <- read_delim("tabela2_1.txt", delim = ";", n_max = 4)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Ou se estiverem noutra pasta

  tabela <- read_delim("E:\\GITHUB\\RProject\\DataSets\\tabela2_1.csv", delim = ";", n_max = 4)

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

#-----------------------------------------------------------------------------------------------------------------------------------------------------