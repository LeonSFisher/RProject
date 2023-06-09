######################################################################################################################################################
######################################################################################################################################################

#PACOTES - CARREGAMENTO DIRETO DE FUNÇÕES

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#CARREGAMENTO DIRETO DE FUNÇÕES

#Depois de carregados, os pacotes podem ser usados normalmente 

#No entanto, podemos usar o operador '::' para buscar e usar funções de um pacote sem precisar carregá-lo diretamente

#Este formato também serve para evitar conflito quando mais de um pacote possuem funções com mesmo nome

  agricolae::skewness(mtcars$hp)

#Que é equivalente ao seguinte código:
  
  library(agricolae)
  
  skewness(mtcars$hp)
  
#Ou, equivalentemente:
  
  require(agricolae)
  
  skewness(mtcars$hp)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#O uso desse formato não anula a utilização de parâmetros
  
  base::library(ggplot2, character.only = TRUE)
  
  base::library(ggplot2, character.only = FALSE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------