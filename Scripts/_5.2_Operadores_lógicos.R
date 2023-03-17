######################################################################################################################################################
######################################################################################################################################################

#OPERADORES LÓGICOS

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#OPERADORES LÓGICOS USUAIS

#Os operadores & (E) e | (ou) avaliam o vetor elemento a elemento fazendo com que a comparação seja mais demorada
#Com eles, a comparação vai té o fim comparando literalmente todos os valores de um vetor. 
#Como promove comparação em todos os membros, retorna um vetor de valores lógicos

#Realizando a comparação

  (vetor_mis < 1) & (vetor_mis < 2)
  
  (vetor_mis < 1) | (vetor_mis < 2)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Em vez de compararmos cada casa de um vetor com um valor, podemos comparar dois vetores de mesmo tamanho

  vetor_mis & vetor_pos
  
  vetor_mis | vetor_pos

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Os operadores && (E) e || (ou) avaliam os elementos da esquerda para a direita até que a avaliação já esteja definida
#Com eles, não é necessário a comparação ir até o fim, sendo mais rápidos (lazy evaluation)
#Como não vão até o fim, retornam um único valor lógico dependendo se os vetores são iguais ou não

  (vetor_mis<1) && (vetor_pos<2)
  
  (vetor_mis<1) || (vetor_pos<2)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Em vez de compararmos cada casa de um vetor com um valor, podemos comparar dois vetores de mesmo tamanho

  vetor_mis && vetor_pos
  
  vetor_mis || vetor_pos  

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#OBSERVAÇÃO
  
#Como variáveis simples são vetores de uma única componente, os usos de & e | ou de && ou || têm o mesmo efeito
#Usando & e &&

  vetor_mis & vetor_pos
  
  vetor_mis && vetor_pos

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Ou usando | e ||

  vetor_mis | vetor_pos
  
  vetor_mis || vetor_pos


#-----------------------------------------------------------------------------------------------------------------------------------------------------