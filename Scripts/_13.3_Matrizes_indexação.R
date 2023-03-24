######################################################################################################################################################
######################################################################################################################################################

#MATRIZES - INDEXAÇÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#INDEXAÇÃO DE MATRIZES 

#Criando uma matriz para trabalhar os índices

  matriz <- matrix(c(18, 41, 24, 77, 86, 69, 1.70, 1.81, 1.69), byrow = FALSE, nrow = 3)
  
#Nomeando as linhas e as colunas
  
  linhas <- c("alberto", "francisco", "helder")
  
  colunas <- c("idade", "peso", "altura")
  
#Realizando a atribuição
  
  rownames(matriz) <- linhas
  
  colnames(matriz) <- colunas

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Indexando por posição

  matriz[3, 3]

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Indexando a matriz pelos nomes
  
  matriz["francisco", "idade"]

#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Indexação mista

  matriz[1, "peso"]
  
  matriz["helder", 2]

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Indexação por linha inteira

  matriz[2, ]
  
  matriz["francisco", ]

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Indexação por coluna inteira

  matriz[ ,3]
  
  matriz[ ,"idade"]

#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Indexação por vetor de linhas

  lin_sel <- c(1, 2)
  
  matriz[lin_sel, ]  
  
#Indexação por vetor de linhas
    
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
  
#Indexação das colunas
  
  matriz[ ,c(TRUE, FALSE, TRUE)]
  
#Indexação de ambos
  
  matriz[c(TRUE, FALSE, TRUE), c(TRUE, FALSE, TRUE)]

#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Removendo partes de uma matriz através de indexação por valores negativos
#Removendo a primeira linha

  matriz[-1, ]

#Removendo a segunda coluna

  matriz[ ,-2]

#Removendo a primeira linha e a primeira coluna simultaneamente (não remove apenas o elemento mx[-1, -1])

  matriz[-1, -1] 

#-----------------------------------------------------------------------------------------------------------------------------------------------------