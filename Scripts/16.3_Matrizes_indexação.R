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
#Indexação por variável
  
  lin <- 3
  
  col <- 3
  
  matriz[lin, col]
  
#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Indexação por vetor de posições
  
#Indexação por vetor de linhas
  
  lin_sel <- c(1, 2)
  
  matriz[lin_sel, 1]  
  
#Indexação por vetor de colunas
  
  col_sel <- c(2, 3)
  
  matriz[1 ,col_sel]
  
#Indexação por vetor de linhas e colunas  
  
  matriz[lin_sel, col_sel]
  
#Ou diretamente no indexador
  
  matriz[c(1, 2), 1]
  
  matriz1[1 ,c(2, 3)]
  
  matriz[c(1, 2), c(2, 3)] 
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Indexação por sequência
  
#Podemos utilizar uma sequência para indexar uma matriz
  
#Na ordem direta
  
  matriz[1:2, 1:3]
  
#Ou na ordem inversa
  
  matriz[2:1, 3:1]
  
#Ou com a função seq() (ideal para indexação de matrizes muito grandes)
  
  matriz[seq(1, 2), seq(1, 3, 1)]

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Indexando a matriz pelos nomes
  
#Uma vez que a matriz tenha sido nomeada, utilizamos seus nomes para filtragens
  
  matriz["francisco", "idade"]
  
#Também é possível que a matriz seja indexada por um vetor de caracteres 
  
  lin_sel <- c("alberto", "francisco")
  
  col_sel <- c("peso", "idade")
  
  matriz[lin_sel, col_sel]
  
#Ou diretamente no indexador
  
  matriz[c("alberto", "francisco"), c("peso", "idade")] 

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Indexação com posições vazias
  
#Deixar o indexador totalmente vazio retorna a matriz inteira
  
  matriz[ , ]
  
#Indexação por linha inteira
  
#Deixar o indexador de colunas vazio tem o efeito de capturar todas as colunas

  matriz[2, ]
  
  matriz["francisco", ]
  
  matriz[c(2, 3), ]
  
  matriz[c("francisco","helder"), ]

#Indexação por coluna inteira
  
#Deixar o indexador de linhas vazio tem o efeito de capturar todas as linhas

  matriz[ ,3]
  
  matriz[ ,"idade"]
  
  matriz[ , c(1, 2)]
  
  matriz[ ,c("idade", "peso")]

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
  
  matriz[c(TRUE, FALSE, TRUE), c(TRUE, FALSE, TRUE)]
  
#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Indexação mista
  
#Os métodos de filtragem podem ser combinados
  
  matriz[1, "peso"]
  
  matriz[c(TRUE, TRUE, FALSE), 2]
  
  matriz["francisco", c(TRUE, TRUE, FALSE)]

#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Removendo valores de uma matriz numa filtragem
  
#Removendo a primeira linha

  matriz[-1, ]

#Removendo a segunda coluna

  matriz[ ,-2]

#Removendo a primeira linha e a primeira coluna simultaneamente
  
#Perceba que isto não está removendo apenas o elemnto [1, 1], mas a primeira linha e a primeira coluna

  matriz[-1, -1] 
  
#Através de vetores de números negativos
  
  matriz[c(-1, -2), c(-1, -2)] 
  
  matriz[-c(1, 2), -c(1, 2)]
  
  matriz[-1*c(1, 2), -1*c(1, 2)]
  
#Através de sequências de números negativos
  
#Como os valores estão sendo excluídos e só os valores não excluídos serão exibidos, a ordem não importa
  
  matriz[-1:-2, -1:-2]
  
  matriz[-2:-1, -2:-1]

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Busca de índices
  
#Busca de índices cujos valores relativos obedeçam a certos critérios
  
#Para saber quais os índices dos valores que atendem à condição, usamos a função wich()
  
  which(matriz > 5)
  
#No entanto, a forma acima devolve apenas os índices gerais dos valores sendo difícil saber quem são. Utilizando o parâmetro 'arr.ind' podemos saber
#quais são os índices dos valores que correspondem ao filtro. Por padrão, seu valor é FALSE.
  
  which(matriz > 3, arr.ind = FALSE)
  
  which(matriz > 3, arr.ind = TRUE)
  
#Retornando o índice de valores máximos e mínimos da matriz
  
#O índice que retorna é relativo à ordem no vetor de dados quando da criação da matriz
  
  which.min(matriz)
  
#Retornando o índice do valor máximo do vetor
  
  which.max(matriz)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#O "comprimento" de uma matriz. Na verdade, seu número total de elementos
  
  length(matriz)
  
#----------------------------------------------------------------------------------------------------------------------------------------------------- 