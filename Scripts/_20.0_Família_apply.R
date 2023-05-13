######################################################################################################################################################
######################################################################################################################################################

#FAMÍLIA APPLY() - apply()

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#apply()

#As funçõs da família apply() servem para substituir operações onde seriam necessárias laços de repetição
#Recebe um dataframe, matriz ou array multidimensional
#Dependendo do input, retorna um vetor, lista, matriz ou array
#No parâmetro de margem usamos 1 para linhas, 2 para colinas e c(1, 2) para ambos

#Usando uma matriz de input

  matriz <- matrix((1:12), nrow=3)

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