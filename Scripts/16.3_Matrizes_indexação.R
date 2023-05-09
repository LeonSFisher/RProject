######################################################################################################################################################
######################################################################################################################################################

#MATRIZES - INDEXAÇÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#INDEXAÇÃO DE MATRIZES 

#Com as matrizes, trabalhamos com dois índices

#Criando uma matriz para trabalhar os índices

  matriz <- matrix(c(18, 41, 24, 77, 86, 69, 1.70, 1.81, 1.69), byrow = FALSE, nrow = 3)
  
#Criando um vetor de nomes das linhas e das colunas da matriz
  
  linhas <- c("alberto", "francisco", "helder")
  
  colunas <- c("idade", "peso", "altura")
  
#Realizando a atribuição dos nomes
  
  rownames(matriz) <- linhas
  
  colnames(matriz) <- colunas

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Indexando por posição
  
#Assim como nos vetores, usamos números inteiros no indexador da matriz para filtrar dados

  matriz[3, 3]

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Indexando a matriz pelos nomes
  
#Uma vez que a matriz tenha sido nomeada, utilizamos seus nomes para filtragens
  
  matriz["francisco", "idade"]

#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Indexação mista
  
#Os dois métodos de filtragem podem ser combinados

  matriz[1, "peso"]
  
  matriz["helder", 2]

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Indexação por linha inteira
  
#Deixar o indexador de colunas vazio tem o efeito de capturar todas as colunas

  matriz[2, ]
  
  matriz["francisco", ]

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Indexação por coluna inteira
  
#Deixar o indexador de linhas vazio tem o efeito de capturar todas as linhas

  matriz[ ,3]
  
  matriz[ ,"idade"]

#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Podemos filtrar grupos de linhas e colunas com um vetor de índices 
  
#Indexação por vetor de linhas

  lin_sel <- c(1, 2)
  
  matriz[lin_sel, ]  
  
#Indexação por vetor de colunas
    
  col_sel <- c(2, 3)
  
  matriz[ ,col_sel]
  
#Indexação por vetor de linhas e colunas  
  
  matriz[lin_sel, col_sel]
  
#Ou diretamente no indexador
  
  matriz[c(1, 2), ]
  
  matriz[ ,c(2, 3)]
  
  matriz[c(1, 2), c(2, 3)] 

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Também é possível que a matriz seja indexada por um vetor de caracteres (nomes)
  
#Para as linhas nomeadas

  lin_sel <- c("alberto", "francisco")
  
  matriz[lin_sel, ]
  
#Ou para as colunas nomeadas
  
  col_sel <- c("peso", "idade")
  
  matriz[ ,col_sel]
  
#Para linhas e colunas nomeadas
  
  matriz[lin_sel, col_sel]
  
#Ou diretamente no indexador
  
  matriz[c("alberto", "francisco"), ]
  
  matriz[ ,c("peso", "idade")]
  
  matriz[c("alberto", "francisco"), c("peso", "idade")] 

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Indexação por vetor de valores lógicos
  
#Os valores lógicos também podem ser usados para indexar linhas e colunas da mesma forma que os vetores

  logvec <- c(TRUE, FALSE, TRUE)
  
#Para as linhas
  
  matriz[logvec, ]
  
#Para as colunas
  
  matriz[ ,logvec]
  
#Ou para ambos
  
  matriz[logvec, logvec]

#Ou diretamente no indexador da matriz
  
#Indexação das linhas

  matriz[c(TRUE, FALSE, TRUE), ]
  
  matriz[ ,c(TRUE, FALSE, TRUE)]
  
  matriz[c(TRUE, FALSE, TRUE), c(TRUE, FALSE, TRUE)]

#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Removendo valores de uma matriz numa filtragem
  
#Removendo a primeira linha

  matriz[-1, ]

#Removendo a segunda coluna

  matriz[ ,-2]

#Removendo a primeira linha e a primeira coluna simultaneamente
  
#Perceba que isto não está removendo apenas o elemnto [1, 1], mas a primeira linha e a primeira coluna

  matriz[-1, -1] 

#-----------------------------------------------------------------------------------------------------------------------------------------------------