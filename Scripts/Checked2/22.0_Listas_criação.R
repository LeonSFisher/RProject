######################################################################################################################################################
######################################################################################################################################################

#LISTAS - CRIAÇÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#CRIANDO LISTAS

#Listas são coleções ordenadas de objetos arbitrários. Elas são estruturas de dados heterogêneas o que significa que objetos com modes distintos 
#podem fazer parte de uma mesma lista sem sofrer coerção. Para criar uma lista usamos a função list()

#Por serem estruturas de dados heterogênas, listas podem ser criadas compondo todos os tipos de dados e estruturas disponíveis. As listas manterão a 
#estrutura original dos objetos que lhe servem de elementos. Podemos ter valores inteiros, lógicos, double, complex, vetores, matrizes, dataframes e
#até outras listas compostas por todos esses elementos dentro de uma lista.

  valor1 <- 55
  
  valor2 <- TRUE
  
  vetor1 <- c(-3i, 2i)
  
  matriz <- matrix(c(2, 3, 4, -1), nrow = 2)
  
  dataf1 <- cbind(c(1, 2, 3), c("leandro", "caio", "marcos"), c(TRUE, FALSE, FALSE))
  
  dataf2 <- mtcars
  
  lista1 <- list(-3, "a", 7, 8:12)  
  
  lista2 <- list(valor1, valor2, vetor1, matriz, dataf1, dataf2, lista1)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------