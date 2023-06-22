######################################################################################################################################################
######################################################################################################################################################

#LISTAS - DESFAZENDO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#DESFAZENDO LISTAS

#Desfazer uma lista é segmentar novamente seus elementos de forma a quebrar o comportamento heterogêneo. Portanto, ao se desfazer uma lista, obtemos,
#automaticamente, um vetor.

  lista1 <- list("casa", FALSE, 35)

  lista2 <- list("a", "b", TRUE, 4:8, lista1)
  
  lista_desfeita <- unlist(lista2)
  
#Após acabarmos com a lista, os elementos, agora pertencentes a um vetor, sofrem coerção.
  
  typeof(lista_desfeita)

#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Podemos desfazer a lista preservando as estruturas internas. Nesse caso, as listas internas são quebradas, mas prevalece a lista de fora com seu 
#comportamento heterogêneo.

  lista_desfeita <- unlist(lista2, recursive = FALSE)
  
  typeof(lista_desfeita)
  
#Perceba que os valores não sofreram coerção pois ainda existe uma lista maior mantendo a heterogeneidade
  
  typeof(lista_desfeita[[9]])
  
  typeof(lista_desfeita[[8]])
  
  typeof(lista_desfeita[[10]])
  
#Se o parâmetro 'recursive' for TRUE, a lista será recursivamente desfeita e isso inclui a lista externa. Assim, o comportamento heterogêneo é
#desfeito e o cunjunto de valores se torna um vetor.
  
  lista_desfeita <- unlist(lista2, recursive = TRUE)
  
  typeof(lista_desfeita)
  
#Perceba que, agora, todos os valores sofreram coerção 
  
  typeof(lista_desfeita[[9]])
  
  typeof(lista_desfeita[[8]])
  
  typeof(lista_desfeita[[10]])

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Desfazendo a lista e decidindo se os nomes devem ser preservados
  
#Possa ser que a lista a ser desfeita possua um vetor de nomes. Podemos decidir se queremos que esse vetor de nomes prevaleça ou não.
  
  names(lista2) <- c("letra1", "letra2", "logico", "sequencia", "outra_lista")
  
#Com a lista sendo recursivamente desfeita
  
  lista_desf_com_nomes <- unlist(lista2, use.names = TRUE, recursive = TRUE) 
  
  lista_desf_sem_nomes <- unlist(lista2, use.names = FALSE, recursive = TRUE)
  
#Com a lista preservando a heterogeneidade externa 
  
  lista_desf_com_nomes <- unlist(lista2, use.names = TRUE, recursive = FALSE) 

  lista_desf_sem_nomes <- unlist(lista2, use.names = FALSE, recursive = FALSE)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------