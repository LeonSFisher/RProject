######################################################################################################################################################
######################################################################################################################################################

#OPERADORES LÓGICOS

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#OPERADORES LÓGICOS USUAIS
  
#Expressões lógicas servem para avaliarmos uma expressão como verdadeira ou falsa. Para isso, usamos os operadores lógicos 'E' e 'OU'. O operador E
#tem duas formas que são & e &&. Já o operador OU tem as formas | ou ||. A diferença entre a forma simples e a forma dupla desses operadores está no
#fato de que a forma dupla são operadores de curto-circuito. Isso quer dizer que, ao avaliar uma expressão, assim que um resultado é avaliado como
#sendo falso, a comparação termina e o resultado é dado como falso, pois não há mais a necessidade de comparar o resto. Já a forma simples é chamada
#de operador bit-a-bit (bitwise) que promove a comparação até o fim antes de retornar um valor falso ou verdadeiro. Caso a primeira avaliação que
#resulte num valo falso for a última a ser avaliada, os dois tipos de operadores, simples e duplo, serão equivalentes. Uma aplicação um pouco mais 
#interessante será vista ao estudarmos vetores. Lá esta explicação fará mais sentido.

#Usando o operador E
  
  (1 < 3) & (4 < 1)
  (1 < 3) & (4 > 1)

  (1 > 3) & (4 < 1) & (0 == 0)
  (1 > 3) & (4 > 1) & (0 == 0)

  (1 < 3) && (4 < 1) 
  (1 < 3) && (4 > 1)

  (1 > 3) && (4 < 1) && (1 < -3)
  (1 > 3) && (4 > 1) && (1 < -3)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Usando o operador OU

  (1 < 3) | (4 < 1)
  (1 < 3) | (4 > 1)
  
  (1 > 3) | (4 < 1) | (0 == 0)
  (1 > 3) | (4 > 1) | (0 == 0)
  
  (1 < 3) || (4 < 1) 
  (1 < 3) || (4 > 1)
  
  (1 > 3) || (4 < 1) || (1 < -3)
  (1 > 3) || (4 > 1) || (1 < -3)

#-----------------------------------------------------------------------------------------------------------------------------------------------------