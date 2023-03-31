######################################################################################################################################################
######################################################################################################################################################

#LISTAS - INDEXAÇÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#INDEXANDO LISTAS

  valor1 <- 55
  
  vetor1 <- c(-3i, 2i)
  
  matriz <- matrix(c(2, 3, 4, -1), nrow = 2)
  
  dataf1 <- cbind(c(1, 2, 3), c("leandro", "caio", "marcos"), c(TRUE, FALSE, FALSE))
  
  dataf2 <- mtcars
  
  lista1 <- list(-3, "a", 7, 8:12)  
  
  lista2 <- list(valor1, vetor1, matriz, dataf1, dataf2, lista1)

#Acessando valores na lista pelo índice
#Um só par de [] pode ser usados às vezes, mas os reservamos para os arrays

  lista2[6]

#Normalmente usa-se índices entre [[]] para listas

  lista2[[6]] 

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Indexando estruturas internas da lista
#Acessando o vetor da lista anterior com um para de []  

  lista2[2]  

#Acessando o vetor da lista anterior com [[]]  

  lista2[[2]]  

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Acessando subposições de elemntos da lista
#Acessando o primeiro valor do vetor da lista anterior  

  lista2[[2]][1]  

#Acessandoa todas as linhas e a terceira coluna do segundo dataframe da lista anterior

  lista2[[5]][,3]

#Acessando a quarta linha e todas as colunas do segundo dataframe da lista anterior

  lista2[[5]][4,]

#Acessando o elemento da segunda coluna e da quarta linha do segundo dataframe da lista anterior

  lista2[[5]][4, 2] 

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Acessando dataframes dentro de listas
#Através do nome da coluna com o nome $  

  lista2[[5]]$mpg

#Através do nome da coluna no indexador

  lista2[[5]]["hp"]

#Podemos fazer filtros análogos

  lista2[[5]][1:5, "hp"]

#Selecionando um único valor

  lista2[[5]][1, 3]

#Filtrando vários dados

  lista2[[5]][1:5, c("hp", "mpg")]

#Acessando valor do vetor pelo seu nome
#Primeiro precisamos nomear os elementos da lista
  
  names(lista2) <- c("valor", "vetor", "matriz", "data1", "data2", "lista")

  lista2[["vetor"]][1]

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#INSERINDO E MODIFICANDO VALORES E OBJETOS DA LISTA

#Modificando valores

  lista2[[5]][4, 2] = 0

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Incluindo novos elementos
#Inserindo nova coluna na matriz da lista

  nova_col <- c(4, 4)
  
  cbind(lista2[[3]], nova_col)
  

#-----------------------------------------------------------------------------------------------------------------------------------------------------