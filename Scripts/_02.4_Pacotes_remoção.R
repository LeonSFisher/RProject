######################################################################################################################################################
######################################################################################################################################################

#PACOTES - REMOÇÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#REMOÇÃO DE PACOTES

#Remover o pacote da memória, ou seja, descarregá-lo (não desisntalar)
#Há duas razões básicas para descarregar um pacote:
#Primeiro, eles consomem memória e podem retardar o processamento
#Segundo, alguns pacotes possuem funções nomeadas de forma idêntica

  library(rgdal)

  detach("package:rgdal")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Remover permanentemente do armazenamento interno (desinstalar)
#Diretamente com os nomes dos pacotes listados no argumento

  remove.packages("ggplot2", "dplyr")

#Ou por meio de um vetor de strings com os nomes dos pacotes

  pacotes <- c("ggplot2", "dplyr", "sp")

  remove.packages(pacotes)

#Também podemos fazer diretamente colocando o vetor no argumento da função

  remove.packages(c("ggplot2", "dplyr", "sp")) 
  
  
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------