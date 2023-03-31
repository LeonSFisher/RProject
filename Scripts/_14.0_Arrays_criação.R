######################################################################################################################################################
######################################################################################################################################################

#ARRAYS - CRIAÇÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#CRIAÇÃO DE ARRAYS

#Arrays são estruturas multidimensionais generalizadas que têm o vetor e a matriz como casos particulares uni e bi dimensionis, respectivamente.
#Imporatnte é o fato de que, apesar de um vetor ser tecnicamente um array, eles são identificados separadamente
#Assim, o que é vetor não será identificado como array e o que é array não será identificado como vetor

#Unidimensional com cinco elementos

  array(mtcars$wt, dim = c(5))

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Bidimensional com duas linhas e três colunas

  array(mtcars$wt, dim = c(2, 3))

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Tridimensionais com duas linhas, três colunas e quatro folhas

  array(mtcars$wt, dim = c(2, 3, 4))

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Diferença entre vetores e array de dimensão 1
#Um array de dimensão 1 difere basicamente de um vetor por possuir um atributo chamado de vetor de dimensões
#Nos exemplos acima, os vetores de dimensões são, respectivamente, c(5), c(2, 3), c(2, 3, 4)
#Já uma matriz tem duas dimensões e, portanto, tem um vetor de dimensões. Dessa forma, uma matriz é automaticamente identificada como array

  teste <- 1:10

  is.vector(teste)
  
  is.array(teste)
  
#Atribuindo um vetor de dimensões, ele se torna uma array
  
  dim(teste) <- c(10)

  is.vector(teste)
  
  is.array(teste)

#-----------------------------------------------------------------------------------------------------------------------------------------------------