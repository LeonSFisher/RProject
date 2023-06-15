######################################################################################################################################################
######################################################################################################################################################

#FAMÍLIA APPLY() - apply()

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#apply()

#A técnica de evitar lações de repetição utilizando funções otimizadas que atuam em todos os elementos de um objeto simulataneamente é chaamada de 
#vetorização. A vetorização não serve apenas para evitar o uso de laços de repetição, mas de fato para obter ganhos de performance sensíveis. Muitas
#funções em R possibilitam o uso de vetorização. Agora veremos um conjunto de funções com essa capacidade conhecido como família apply
  
  matriz <- matrix((1:12), nrow = 3)
  
  array_novo <- array(mtcars$mpg, dim = c(2, 2, 3))

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#A primeira função da família aplly que utilizaremos é a função base dessa família - a função apply()
  
#Recebe uma matriz, dataframe ou array. Dependendo do input, retorna um vetor, matriz, lista ou array. 
#No parâmetro de margem usamos 1 para linhas, 2 para colinas e c(1, 2) para ambos.
  
#Aplicando a função a uma matriz e retornando uma matriz
  
#Aqui, aplicaremoa a função sqrt() às linhas e à medida que são computadas elas são organizadas nas linhas ma matriz de saída
  
  apply(matriz, 1, sqrt)
  
#Com isso, se escolhermos para a função ser aplicada pelas colunas, obteremos a matriz transposta da matriz resultado
  
  apply(matriz, 2, sqrt)
  
#Obviamente, se aplicarmos a função pelas linhas e colunas, é como se aplicarmos normalmente às linahs pois agora não faz diferença
  
  apply(matriz, c(1, 2), sqrt)

#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Aplicando uma função à uma matriz e retornando um vetor  
  
#Algumas funções, por sua natureza, devem retornar um vetor ao serem aplicadas sobre uma matriz como a função max()
  
#Aplicando a função sobre as linhas

  apply(matriz, 1, FUN = max)
  
#Aplicando as funções sobre as colunas

  apply(matriz, 2, FUN = max)
  
#Ao se pedir para se aplicar em ambas as linahs e colunas, o que se obtém é a própria matriz pois só existe um único valor que é ao mesmo tempo de 
#uma mesma linha e de uma mesma coluna numa matriz. 
  
  apply(matriz, c(1, 2), FUN = max)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Aplicando a um dataframe
  
#Se o dataframe for numérico, as operações com funções matemáticas são possíveis
  
  col1 <- c(1, 2, 3)
  
  col2 <- c(4, 5, 6)
  
  col3 <- c(7, 8, 9)
  
  tabela <- data.frame(col1, col2, col3)
  
  apply(tabela, 2, sum)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------