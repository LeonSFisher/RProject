######################################################################################################################################################
######################################################################################################################################################

#LISTAS - CRIAÇÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#CRIANDO LISTAS

#Listas são coleções ordenadas de objetos arbitrários
#Para criar uma lista usamos a função list()
#Listas podem ser criadas compondo todos os tipos de dados e estruturas disponíveis
#As listas manterão a estrutura original dos objetos que lhe servem de elementos
#Podemos ter valores inteiros, lógicos, double, complex, vetores, matrizes, dataframes e até outras listas dentro de uma lista

  valor1 <- 55
  
  vetor1 <- c(-3i, 2i)
  
  matriz <- matrix(c(2, 3, 4, -1), nrow = 2)
  
  dataf1 <- cbind(c(1, 2, 3), c("leandro", "caio", "marcos"), c(TRUE, FALSE, FALSE))
  
  dataf2 <- mtcars
  
  lista1 <- list(-3, "a", 7, 8:12)  
  
  lista2 <- list(valor1, vetor1, matriz, dataf1, dataf2, lista1)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#DIFERENÇA DE COMPORTAMENTO ENTRE LISTAS E VETORES

#Quanto à integridade das substruturas
#Vetores dão continuidade numa sequência
#Vemos que 8:12 não é convertido para "8:12" mas para "8", "9", "10", "11", "12".
#A expansão ocorre antes da conversão

  vetor2 = c(999, "6", 7, 8:12)
 
#Listas mantêm a sequência como um vetor com unidade de valor próprio dentro da lista
  
  lista3 = list(999, "6", 7, 8:12)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Quanto à integridade dos tipos de dados
  
  typeof(vetor2[1])
  
  typeof(lista2[[1]])
 
  typeof(vetor2[4])
  
  typeof(lista3[[4]])
  
  
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------