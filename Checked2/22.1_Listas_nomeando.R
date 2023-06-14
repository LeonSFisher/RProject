######################################################################################################################################################
######################################################################################################################################################

#LISTAS - NOMEANDO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#NOMEANDO LISTAS E ELEMENTOS DA LISTA

#Criando uma lista de exemplo

  lista <- list("casa", 987, TRUE)

#Nomeando elementos da lista 
  
#Criando um vetor de nomes para a lista

  elementos <- c("objeto", "número", "tem_garagem")
  
#Realizando a atribuição dos nomes
  
  names(lista) <- elementos
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Nomeando apenas elementos de uma lista
  
#Podemos nomear apenas elementos que existem internamente numa lista como se estivéssemos os nomeando fora. Abaixo, nomearemos a matriz que é o
#terceiro elemento da lista2.
  
#Criando a matriz e a lista com a matriz internamente.
  
  matriz <- matrix(c(-1, 2, 0, 1, 2, 4, 5, -1, 4), nrow = 3)
  
  nova_lista <- list(TRUE, 876, matriz)
  
#criando nomes para a matriz 
  
  nomes_linhas <- c("linha1", "linha2", "linha3")
  
  nomes_colunas <- c("coluna1", "coluna2", "coluna3")
  
#Nomeando a matriz dentro da lista  
  
  colnames(nova_lista[[3]]) <- nomes_colunas
  
  rownames(nova_lista[[3]]) <- nomes_linhas

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Nomenado um elemento da lista, só verificamos o seu nome chamando o elemento diretamente na lista e não o elemento em si. Isso porque a matriz de 
#fora não foi nomeada, mas sim a que está dentro da lista que é idêntica à de fora. São, portanto, matrizes diferentes. Na criação da lista, uma
#cópia da matriz é criada como elemento da lista. Com efeito, nomear a matriz de dentro da lista não afeta a matriz de fora.
  
  nova_lista[[3]]
  
  matriz

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Para nomear a matriz de fora, devemos fazer a operação de nomeação nela mesma  
  
  colnames(matriz) <- valores_colunas
  
  rownames(matriz) <- valores_linhas  

#-----------------------------------------------------------------------------------------------------------------------------------------------------