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
  
#Podemos também explicitar o parâmetro 'decreasing' como sendo igual a FALSE
  
  sort(vetor, decreasing = FALSE)
  
#Ou com TRUE para colocar na ordem decerescente
  
  sort(vetor, decreasing = TRUE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Também vale para letras

  sort(c("H", "z", "a", "t", "b", "k", "Z"))
  
  sort(c("H", "z", "a", "t", "b", "k", "Z"), decreasing = FALSE)

#Ou na ordem decrescente  

  sort(c("H", "z", "a", "t", "b", "k", "Z"), decreasing = TRUE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Ordenação com NA's na função sort()
  
#Algumas vezes, nosso vetor pode conter NA's. Os NA's são valores ausentes e, por isso, não influenciam na coerção de dados.
  
#Por padrão a função sort() ignora os NA's
  
  vetor <- c(NA, 3, -2, NA, 99, 7.7, NA)
  
  sort(vetor)  
  
#Se explicitarmos o parâmetro 'na.last', os NA's tendem a ficar no começo
  
  sort(vetor, na.last = FALSE)
  
#Com o valor FALSE conseguimos colocá-los pelo último
  
  sort(vetor, na.last = TRUE)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#ÍNDICES DO VETOR ORDENADO NO VETOR ORIGINAL
  
#Podemos obter índices de vetores ordenados de diversas formas
  
  vetor <- c(5, 3, -1, -3, 5, 5, 7, -99)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#A função order() dá a ordem de cada elemento do vetor ordenado no vetor original
  
#Vetor original ordenado de forma direta
  
  sort(vetor)
 
#Abaixo, vemos que -99 no vetor ordenado é o oitavo no vetor normal, -3 no vetor ordenado é o quarto no vetor normal e assim por diante...

  order(vetor)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Dar a ordem de cada elemento do vetor ordenado em relação ao vetor original invertido
  
#Vetor original ordenado de forma inversa
  
  sort(vetor, decreasing = TRUE)
  
#Abaixo, o 7 do vetor invertido é o sétimo no vetor original, o 5 do vetor invertido é o primeiro no vetor original etc.

  order(vetor, decreasing = TRUE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#ÍNDICES DO VETOR ORIGINAL NO VETOR ORDENADO
  
#A função rank() faz o oposto da função order()
  
#A função rank() dá a ordem que cada elemento do vetor original no vetor ordenado

  vetor <- c(11, 2, 2, 2, -3, 4, 5.5, 6)
  
#Vetor original ordenado de forma direta
  
  sort(vetor)
  
#Abaixo, 11 do vetor original é o oitavo no vetor ordenado, 2 no vetor original é terceiro no vetor ordenado etc.
  
  rank(vetor)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Os 'ties' valores repetidos podem ter o seguinte tratamento:
  
#Os três valores 2 quando ordenados estariam nas posições 2, 3 e 4 cuja média é 3. Assim, eles serão ordenados como tendo a sua posição média, 3.

  rank(vetor, ties.method = "average")

#No caso de a média ter valor quebrado, também funciona:

  vetor <- c(11, 2, 2, 2, 2, -3, 4, 5.5, 6)

  rank(vetor, ties.method = "average")

#Podemos atribuir aos 'ties' os índices começando na sua primeira posição

  rank(vetor, ties.method = "first")

#Ou podemos atribuir aos 'ties' os índices começando na sua última posição

  rank(vetor, ties.method = "last")

#Para organizar os 'ties' com índices randômicos (não qualquer valor, mas entre si)

  rank(vetor, ties.method = "random")

#Os índices dos 'ties' podem também ter o valor de sua posição máxima

  rank(vetor, ties.method = "max")

#Ou de sua posição mínima

  rank(vetor, ties.method = "min")

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Exibir os valores do vetor em ordem inversa
  
#Não é ordenar o vetor na ordem inversa, mas sim reverter a ordem sem ordenar. Exibe do último para o primeiro mantendo a posição relativa.

  rev(vetor)

#----------------------------------------------------------------------------------------------------------------------------------------------------- 