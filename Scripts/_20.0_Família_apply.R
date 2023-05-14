######################################################################################################################################################
######################################################################################################################################################

#FAMÍLIA APPLY() - apply()

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#apply()

#A técnica de evitar lações de repetição utilizando funções otimizadas que atuam em todos os elementos de um objeto simulataneamente é chaamada de 
#vetorização. A vetorização não serve apenas para evitar o uso de laços de repetição, mas de fato para obter ganhos de performance sensíveis.

#Muitas funções em R possibilitam o uso de vetorização. Agora veremos um conjunto de funções com essa capacidade conhecido como família apply

#A primeira função da família aplly que utilizaremosé a função base dessa família - a função apply()

#Recebe um dataframe, matriz ou array multidimensional. Dependendo do input, retorna um vetor, lista, matriz ou array. 
#No parâmetro de margem usamos 1 para linhas, 2 para colinas e c(1, 2) para ambos

  vetor <- c(3, 4, 9)

  matriz <- matrix((1:12), nrow=3)
  
  array_novo <- array(mtcars$mpg, dim = c(2, 2, 3))

#Aplicar a função às linhas. Queremos o máximo de cada linha

  apply(matriz, 1, FUN = max)

#Aplicar a função às colunas. Queremos o máximo de  cada coluna

  apply(matriz, 2, FUN = max)

#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Nos exemplos acima, a entrada foi um matriz e saída um vetor
#Vejamos agora uma matriz de entrada resultando numa matriz de saída
  
#Soma acumulada das colunas
  
  apply(matriz, 2, FUN = cumsum)  
  
#Soma acumulada das linhas
#Exibe a matriz na forma transposta
  
  apply(matriz, 1, FUN = cumsum)   
  
#A matriz de saída não precisa ser do mesmo tamanho que a original
  
  apply(matriz, 2, range)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------