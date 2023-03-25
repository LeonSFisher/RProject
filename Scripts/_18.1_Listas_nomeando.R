######################################################################################################################################################
######################################################################################################################################################

#LISTAS - NOMEANDO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#NOMEANDO LISTAS E ELEMENTOS DA LISTA

  lista1 <- list("casa", 987, TRUE)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Nomeando elementos da lista 

  elementos <- c("objeto", "número", "tem_garagem")
  
  names(lista1) <- elementos
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Nomeando subpartes de elementos de uma lista
  
  matriz <- matrix(c(-1, 2, 0, 1, 2, 4, 5, -1, 4), nrow = 3)
  
  lista2 <- list(TRUE, 876, matriz)
  
#criando nomes para a matriz  
  
  valores_colunas <- c("coluna1", "coluna2", "coluna3")
  
  valores_linhas <- c("linha1", "linha2", "linha3")
  
#Nomeando a matriz dentro da lista  
  
  colnames(lista2[[3]]) <- valores_colunas
  
  rownames(lista2[[3]]) <- valores_linhas

#Nomenado um elemento da lista só verificamos o seu nome chamando o elemento diretamente na lista e não a matriz em si
#A matriz de fora não foi nomeada, mas sim a que está dentro da lista que é idêntica à de fora
  
  lista2[[3]]
  
  matriz
  
#Para nomear a matriz em si, devemos fazer a operação de nomeação nela mesma  
  
  colnames(matriz) <- valores_colunas
  
  rownames(matriz) <- valores_linhas  
  

#-----------------------------------------------------------------------------------------------------------------------------------------------------