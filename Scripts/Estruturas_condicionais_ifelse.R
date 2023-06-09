######################################################################################################################################################
######################################################################################################################################################

#ESTRUTURAS CONDICIONAIS - ifelse

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#ESTRUTURA CONDICIONAL ifelse

#Equivalente ao operador ternário de C

  valor = 5
  
  ifelse(valor < 2, "a", "b") 

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#ifelse também pode operar sobre um vetor

  vetor <- c(-1, 3, -5, 7, 8)
  
  ifelse(vetor < 0, "negativo", "positivo") 

#-----------------------------------------------------------------------------------------------------------------------------------------------------