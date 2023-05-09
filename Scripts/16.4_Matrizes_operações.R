######################################################################################################################################################
######################################################################################################################################################

#MATRIZES - OPERAÇÕES

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#ALGUMAS PROPRIEDADES DA ÁLGEBRA MATRICIAL

  matriz <- matrix(c(1, -1, 1, -2, 2, 2, 3, 3, -3), nrow = 3)

#Operações de matrizes por constantes equivalem a operar a matriz termo-a-termo com outra matriz cujas entradas são todas iguais à constante
  
#Somar uma constante à matriz toda

  matriz + 2

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#O"comprimento" de uma matriz. Na verdade, seu número de elementos
  
  length(matriz)

#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Transposta de uma matriz

  t(matriz)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Dividir os elementos termo-a-termo

  matriz / t(matriz) 

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Multiplicação de matrizes termo-a-termo

  matriz * t(matriz)  

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Multiplicação usual de matrizes

  matriz %*% matriz

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Soma dos valores das colunas
  
#Soma tudo o que tem nas colunas para produzir um vetor linha

  colSums(matriz)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Soma dos valores das linhas
  
#Soma tudo o que tem nas linhas para produzir umv etor coluna

  rowSums(matriz)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Média dos valores das linhas
  
#Tira a média dos valores das linhas para produzir um vetor coluna de médias

  rowMeans(matriz)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Média dos valores das colunas
  
#Tira a média dos valores das colunas para produzir um vetor linha de médias
  
  colMeans(matriz) 
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Quando temos NA's e NaN's numa matriz, podemos ter problemas
  
  matriz <- matrix(c(1, -1, NA, -2, 2, NaN, 3, 3, -3), nrow = 3)

#A linha ou coluna respectiva que possui um NA ou NaN provocará na operação um retorno de NA's ou NaN's  
  
  rowSums(matriz)
  
  colSums(matriz)
  
  rowMeans(matriz)
  
  colMeans(matriz)
  
#Pra evitar isso, podemos remover os NA's ou NaN's dos cálculos com o parâmetro 'na.rm'. Por padrão, seu valor é FALSE
  
  rowSums(matriz, na.rm = FALSE)
  
  colSums(matriz, na.rm = FALSE)
  
  rowMeans(matriz, na.rm = FALSE)
  
  colMeans(matriz, na.rm = FALSE)
  
#Agora removendo os valores indesejados
  
  rowSums(matriz, na.rm = TRUE)
  
  colSums(matriz, na.rm = TRUE)
  
  rowMeans(matriz, na.rm = TRUE)
  
  colMeans(matriz, na.rm = TRUE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Dimensões da matriz  
  
#Retorna um vetor com o número de linhas e o número de colunas da matriz
  
  dim(matriz)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Operador de produto externo
  
  matriz %o% matriz
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Operador de produto de Kronecker
  
  matriz %x% matriz

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Diagonal da matriz
  
#Retorna um vetor com os valores da diagonal da matriz
  
  diag(matriz)
  
#Substituindo a diagonal de uma matriz
  
  diag(matriz) <- c(99, 99, 99)
  
#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Cálculo do determinante
  
#Atente para o fato de que a matriz precisa ser quadrada
  
  det(matriz)  

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Inverter matriz
  
#Retorna a inversa da matriz caso ela seja quadrada e seu determinante não seja zero

  solve(matriz)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Resolução de sistema linear
  
#Quando o b está ausente no solve(), ele é substituído por uma matriz identidade e a função solve() retorna a inversa da matriz de entrada
#Caso informemos o b, o solve() resolve o sistema
  
  b <- c(-8, 3, 5)
  
  solve(matriz, b)

#-----------------------------------------------------------------------------------------------------------------------------------------------------