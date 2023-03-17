######################################################################################################################################################
######################################################################################################################################################

#PACOTES - INSTALAÇÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#INSTALAÇÃO DE PACOTES JÁ BAIXADOS

#Pacotes que não vêm istalados com o R precisam ser instalados, por óbvio. (Obrigatório como string)
#Instalar o pacote na pasta padrão

  install.packages("dplyr")

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Instalando mais de um pacote
#Tentar instalar dois pacotes de uma vez no argumento da função não funciona  

  install.packages("dplyr", "agricolae")

#Para isso, usar um vetor de caracteres no argumento da função

  install.packages(c("dplyr", "agricolae"))

#Ou criar um vetor de pacotes
  
  pacotes <- c("dplyr", "agricolae")
  
  install.packages(pacotes)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#BAIXAR PACOTES PARA INSTALAR

#Definindo de onde baixar os pacotes na nuvem (repositório)
  
  url1 <- "https://cran-r.c3sl.ufpr.br" #CRAN Brasil, UFPR
  
  url2 <- "https://cran.fiocruz.br"     #CRAN Brasil, Fiocruz

#Para instalar um pacote de cada repositório, devemos instalar um de cada vez  
  
  install.packages("dplyr", repos = url1)
  
  install.packages("agricolae", repos = url2)
  
#Mais de um pacote de um mesmo repositório
  
  install.packages(c("dplyr", "ggplot2"), repos = url1)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Definindo para onde baixar os pacotes
#Criar as pastas no PC antes de proceder

  dir1 <- "C:\\Users\\Leandro Luz\\Desktop\\RProject\\Subdiretorios\\dir1"
  
  dir2 <- "C:\\Users\\Leandro Luz\\Desktop\\RProject\\Subdiretorios\\dir2"
  
  dir3 <- "C:\\Users\\Leandro Luz\\Desktop\\RProject\\Subdiretorios\\dir3"

#Instalar o mesmo pacote em mais de uma pasta
  
  install.packages(c("dplyr"), lib = c(dir1, dir2))
  
#Instalar vários pacotes em uma mesma pasta
  
  install.packages(c("dplyr", "ggplot2"), lib = dir3) 
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Definindo o diretório de download do pacote de instalação (compactado)
#Se não for informado, será baixado para a pasta de arquivo temporário e apagado depois de instalado
#Criar as pastas antes senão haverá um erro
  
  arquivo_compactado <- "C:\\Users\\Leandro Luz\\Desktop\\RProject\\Subdiretorios\\dir4"
  
  install.packages(c("dplyr", "ggplot2"), destdir = arquivo_compactado)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#INSTALAÇÃO DE DEPENDÊNCIAS
  
#Alguns pacotes possuem outros pacotes como prerrequisitos. Para instalar pacotes com as suas dependências, fazemos:
  
  install.packages("dplyr", dependencies = TRUE)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#INFORMAÇÃO SOBRE A INSTALAÇÃO
  
#Exibir informaçòes adicionais
  
  install.packages(c("dplyr", "ggplot2"), verbose = TRUE)
 
#Reduzir a quantidade de outputs
  
  install.packages(c("dplyr", "ggplot2"), quiet = TRUE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#PROCESSAMENTO PARALELO  
  
#Instalação com processamento paralelo (processos paralelos)
  
  install.packages(c("dplyr", "ggplot2"), Ncpus = 4)

 
#-----------------------------------------------------------------------------------------------------------------------------------------------------