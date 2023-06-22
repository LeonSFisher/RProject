######################################################################################################################################################
######################################################################################################################################################

#LISTAS - INDEXAÇÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#INDEXANDO LISTAS

  valor1 <- 55
  
  valor2 <- TRUE
  
  vetor1 <- c(-3i, 2i)
  
  matriz <- matrix(c(2, 3, 4, -1), nrow = 2)
  
  dataf1 <- cbind(c(1, 2, 3), c("leandro", "caio", "marcos"), c(TRUE, FALSE, FALSE))
  
  dataf2 <- mtcars
  
  lista1 <- list(-3, "a", 7, 8:12)  
  
  lista2 <- list(valor1, valor2, vetor1, matriz, dataf1, dataf2, lista1)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Acessando valores na lista pelo índice
  
#Um só par de [] pode ser usados às vezes, mas os reservamos para os arrays

  lista2[6]

#Normalmente usa-se índices entre [[]] para listas

  lista2[[6]] 

#O terceiro e segundo componentes com []
  
  lista2[c(2, 3)]
  
#O segundo elemento do terceiro componente da lista com [[]] 

  lista2[[c(3, 2)]]

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Indexando estruturas internas da lista
  
#Acessando o vetor da lista anterior com um para de []  

  lista2[3]  

#Acessando o vetor da lista anterior com [[]]  

  lista2[[3]]  

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Acessando subposições de elemntos da lista
  
#Acessando o primeiro valor do vetor da lista anterior  

  lista2[[3]][1]  

#Acessandoa todas as linhas e a terceira coluna do segundo dataframe da lista anterior

  lista2[[6]][,3]

#Acessando a quarta linha e todas as colunas do segundo dataframe da lista anterior

  lista2[[6]][4,]

#Acessando o elemento da quarta linha e segunda coluna do segundo dataframe da lista anterior

  lista2[[6]][4, 2] 

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Acessando dataframes dentro de listas
  
#Através do operador de coluna nomeada $  

  lista2[[6]]$mpg

#Através do nome da coluna no indexador

  lista2[[6]]["hp"]

#Podemos fazer filtros análogos

  lista2[[6]][1:5, c("hp", "mpg")]

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Acessando valores de estruturas nomeadas do dataframe
  
#Nomeando a matriz da lista
  
  nomes_linhas <- c("linha1", "linha2")
  
  nomes_colunas <- c("coluna1", "coluna2")
  
  rownames(lista2[[4]]) <- nomes_linhas
    
  colnames(lista2[[4]]) <- nomes_colunas
  
#Agora acessando o valor
  
  lista2[[4]]["linha2","coluna1"]

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Acessando elementos nomeados da própria lista
  
#Como de praxe, precisamos criar um vetor de nomes e atribuí-lo à lista.
  
  names(lista2) <- c("real", "lógico", "vetor_complexo", "matriz", "tabela2", "tabela", "lista")
  
#Realizando a atribuição

  lista2[["vetor_complexo"]][1]

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#INSERINDO E MODIFICANDO VALORES E OBJETOS DA LISTA

#Modificando valores

  lista2[[6]][4, ] = 0

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Incluindo novos elementos
  
#Inserindo nova coluna na matriz da lista

  nova_col_mat <- c(4, 4)
  
  cbind(lista2[[4]], nova_col_mat)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------