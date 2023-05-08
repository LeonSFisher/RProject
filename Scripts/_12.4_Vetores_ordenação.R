######################################################################################################################################################
######################################################################################################################################################

#VETORES - ORDENAÇÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#ORDENANDO VALORES DE UM VETOR

#Podemos ordenar os valores de um vetor segundo alguns critérios

  vetor <- c(5, 3, -1, -3, 5, 5, 7, -99)

#ordenando na ordem crescente

  sort(vetor)
  
#Podemos também explicitar o parâmetro 'decreasing'
  
  sort(vetor, decreasing = FALSE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Também vale para letras

  sort(c("H", "z", "a", "t", "b", "k", "Z"))
  
  sort(c("H", "z", "a", "t", "b", "k", "Z"), decreasing = FALSE)

#Ou na ordem decrescente  

  sort(c("H", "z", "a", "t", "b", "k", "Z"), decreasing = TRUE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#ÍNDICES DO VETOR ORDENADO NO VETOR ORIGINAL
  
#A função order() dá a ordem de cada elemento do vetor ordenado no vetor original

  order(vetor1)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Dar a ordem de cada elemento do vetor ordenado em ordem inversa no vetor original

  order(vetor1, decreasing = TRUE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#ÍNDICES DO VETOR ORIGINAL NO VETOR ORDENADO
  
#A função rank() dá a ordem que cada elemento do vetor original no vetor ordenado

  vetor1 <- c(11, 2, 2, 2, -3, 4, 5.5, 6)
  
  rank(vetor1)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Os 'ties' valores repetidos podem ter o seguinte tratamento:
#Os três valores 2 quando ordenados estariam nas posições 2, 3 e 4 cuja média é 3. Assim, eles serão ordenados como tendo a sua posição média, 3.

  rank(vetor1, ties.method = "average")

#No caso de a média ter valor quebrado, também funciona:

  vetor1 <- c(11, 2, 2, 2, 2, -3, 4, 5.5, 6)

  rank(vetor1, ties.method = "average")

#Podemos atribuir aos 'ties' os índices começando na sua primeira posição

  rank(vetor1, ties.method = "first")

#Ou podemos atribuir aos 'ties' os índices começando na sua última posição

  rank(vetor1, ties.method = "last")

#Para organizar os 'ties' com índices randômicos (não qualquer valor, mas entre si)

  rank(vetor1, ties.method = "random")

#Os índices dos 'ties' podem também ter o valor de sua posição máxima

  rank(vetor1, ties.method = "max")

#Ou de sua posição mínima

  rank(vetor1, ties.method = "min")

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Exibir os valores do vetor em ordem inversa
#Não é ordenar o vetor na ordem inversa, mas sim reverter a ordem sem ordenar
#Exibe do último para o primeiro mantendo a posição relativa

  rev(vetor1)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  