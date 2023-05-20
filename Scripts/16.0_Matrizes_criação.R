######################################################################################################################################################
######################################################################################################################################################

#MATRIZES - CRIAÇÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#CRIAÇÃO DE MATRIZES

#Criação de matriz vazia 1x1 (preenchida de NA's)

  matrix()

#Podemos informar o número de linhas e de colunas

  matrix(nrow = 8, ncol = 2)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Criação de matrizes com o mesmo valor em todas as entradas
  
#Vetor coluna

  matrix(1, nrow = 3)

#Vetor linha

  matrix(1, ncol = 3)

#Matriz 3x3
  
  matrix(1, nrow = 3, ncol = 3)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Criação de matrizes com um vetor de dados 
  
#Se o número de linhas ou de colunas informado for igual ao número de elementos, cria um vetor linha ou coluna, respectivamente
  
#vetor coluna por padrão 
  
  matrix(c(1, 2, 3, 4, 5, 6, 7, 8))

#Vetor coluna explicitamente
  
  matrix(c(1, 2, 3, 4, 5, 6, 7, 8), nrow = 8)

#Vetor linha
  
  matrix(c(1, 2, 3, 4, 5, 6, 7, 8), ncol = 8)

#Se o número de linhas vezes o número de colunas for igual ao total de elementos, temos uma matriz perfeita    
  
  matrix(c(1, 2, 3, 4, 5, 6, 7, 8), nrow = 2, ncol = 4)
  
#Como o número de linhas amarra o número de colunas, só precisamos informar um deles
  
  matrix(c(1, 2, 3, 4, 5, 6, 7, 8), nrow = 2)  
 
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Criando uma matriz diagonal com um vetor sendo a diagonal
  
  vetor <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
  
  diag(vetor)
  
#Restringindo o tamanho da matriz a ser criada com o vetor como diagonal
  
  diag(vetor, nrow = 3) 
  
  diag(vetor, nrow = 4) 
  
#Ou criando uma matriz não quadrada
  
  diag(vetor, nrow = 2, ncol = 3) 
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Extrapolando o tamanho da matriz
  
#criação de matrizes fornecendo mais entradas para a matriz do que elementos do vetor
  
#Repete os valores até preencher a matriz
  
  matrix(c(2, 6, 5, 1, 10, 4), nrow = 8, ncol = 2)
  
#criação de matrizes fornecendo mais colunas do que elementos
  
#Repete os valores até preencher a matriz
  
  matrix(c(2, 6, 5, 1, 10, 4), nrow = 2, ncol = 8)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------   
#Criando matrizes a partir da conversão de um vetor
  
#Cria um vetor coluna
  
  as.matrix(c(1, 2, 3, 4, 5, 6, 7,8,9)) 
  
#Verificando se é uma matriz
  
  matriz <- as.matrix(c(1, 2, 3, 4, 5, 6, 7,8,9))
  
  is.matrix(matriz)
 
#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Criação de matrizes por composição de vetores
  
  vetor1 <- c(2, 1, -1, -1, 5, 8, 9, 0, 0, 1)
  
  vetor2 <- c(0, 1, -7, -1, 4, 4, 9, 3, 3, 2)
  
#Juntando os vetores como linhas (nomes dos vetores ficam nas linhas)
  
  rbind(vetor1, vetor2)
  
#Juntando os vetores como colunas (nomes dos vetores ficam nas colunas)
  
  cbind(vetor1, vetor2) 
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Criação de matrizes por composição de outras matrizes
  
  matriz1 <- matrix(vetor1, nrow = 5)
  
  matriz2 <- matrix(vetor2, nrow = 5)
  
#Por linha
  
  rbind(matriz1, matriz2)
  
#Por coluna
  
  cbind(matriz1, matriz2)  
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Construção da matriz
  
#Definir em que ordem são organizados os elementos na matriz
  
#Por linha
  
  matrix(c(1, 2, 3, 4, 5, 6, 7, 8), nrow = 2, ncol = 4, byrow = TRUE)

#Por coluna
  
  matrix(c(1, 2, 3, 4, 5, 6, 7, 8), nrow = 2, ncol = 4, byrow = FALSE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#DESFAZENDO UMA MATRIZ
  
#Tornado a matriz um vetor
  
  matriz <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8), nrow = 2, ncol = 4)

  vetor <- c(matriz)  
  
#Verificando o tipo de estrutura de dado resultante
  
  is.matrix(vetor)
  
  is.vector(vetor)
 
#-----------------------------------------------------------------------------------------------------------------------------------------------------  