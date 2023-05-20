######################################################################################################################################################
######################################################################################################################################################

#EXPRESSÕES

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#EXPRESSÕES

#Várias linguagens de programação utilizam o ponto-e-vírgula como forma de encerramento de comando. No R, isso não é necessário pois o interpretador
#entende que foi colocado um comando por linha. desse modo, caso se queira colocar duas ou mais expressões numa mesma linha, o uso do ponto-e-vírgula 
#se torna obrigatório.

#Usualmente, noutras linguagens de programação, as expressões são colocadas em sequência da sequinte forma:
  
  vetor_1 <- c(2, 3, 0); 
  
  vetor_2 <- c(-2, -3, 0); 
  
#Como o interpretador entende um comando por linha, o ponto-e-vírgula no final de cada expressão é facultativo e podemos declarar assim:
  
  vetor_1 <- c(2, 3, 0)
  
  vetor_2 <- c(-2, -3, 0)

#Mas podem ser úteis para expressar duas expressões numa mesma linha:  

  vetor_1 <- c(2, 3, 0); vetor_2 <- c(-2, -3, 0)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------