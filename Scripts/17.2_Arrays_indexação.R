######################################################################################################################################################
######################################################################################################################################################

#ARRAYS - INDEXAÇÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#INDEXAÇÃO DE ARRAYS

#A indexação de arrays é feita da mesma forma que se faz para matrizes e vetores com a diferença de que agora teremos tantos índices quantas forem as 
#dimensões do array.

  linhas = c("marcelo", "thiago", "roberta")
  
  colunas = c("suco", "refrigerante", "chá")
  
  folhas = c("ficha1", "ficha2", "ficha3", "ficha4", "ficha5")
  
  array_novo <- array(mtcars$wt, dim = c(3, 3, 5), dimnames = list(linhas, colunas, folhas)) 

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Indexando arrays por posição
  
#Segunda linha, terceira coluna, primeira folha  

  array_novo[2, 3, 1]

#Terceira linha, primeira coluna, primeira folha

  array_novo[2, 1, 1]
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Indexação por variável
  
  lin <- 2
  
  col <- 3
  
  fol <- 1
  
  array_novo[lin, col, fol]

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Indexação por vetor de posições
  
#Vetor de linhas
  
  lin <- c(1, 2)
  
  array_novo[lin, 1, 1]
  
#Vetor de colunas
  
  col <- c(2, 3)
  
  array_novo[1, col, 1]
  
#Vetor de folhas
  
  fol <- c(2, 3)
  
  array_novo[1, 1, fol]
  
#Indexação por vetor de linhas, colunas e folhas
  
  array_novo[lin, col, fol]
  
#Ou diretamente no indexador

  array_novo[c(1, 2), 1, 1]
  
  array_novo[1 , c(2, 3), 1]
  
  array_novo[1, 1, c(2, 3)]
  
  array_novo[c(1, 2), c(2, 3), c(2, 3)]
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Indexação por sequência
  
#Podemos utilizar uma sequência para indexar um array
  
#Na ordem direta
  
  array_novo[1:2, 1:3, 2:4]
  
#Na ordem inversa
  
  array_novo[2:1, 3:1, 4:2]
  
#Ou com a função seq() (ideal para indexação de matrizes muito grandes)
  
  array_novo[seq(1, 2), seq(1, 3, 1), seq(2, 4)]

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Indexação por nome
  
#Arrays nomeados podem sofrer filtragem semelhante às das matrizes
  
  array_novo["thiago", "refrigernate", "ficha2"]
  
#Também é possível que o array seja indexado por um vetor de caracteres 
  
  lin <- c("marcelo", "thiago")
  
  col <- c("refrigerante", "chá")
  
  fol <- c("ficha4", "ficha5")
  
  array_novo[lin, col, fol]
  
#Ou diretamente no indexador
  
  array_novo[c("marcelo", "thiago"), c("refrigerante", "chá"), c("ficha4", "ficha5")]

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Acessando uma matriz inteira
  
#Apenas uma linha
  
  array_novo[1, , ]
  
  array_novo["marcelo", , ]
  
  array_novo[c(1, 3), , ]
  
  array_novo[c("marcelo","roberta"), , ]
  
#Apenas uma coluna
  
  array_novo[, 2, ]
  
  array_novo[, "refrigerante", ]
  
  array_novo[, c(2, 3), ]
  
  array_novo[, c("refrigerante", "chá"), ]
  
#Filtrando nas folhas
  
  array_novo[, , 3]
  
  array_novo[, , "ficha3"]
  
  array_novo[, , c(1, 3)]
  
  array_novo[, , c("ficha1", "ficha3")]
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Indexação por filtro lógico
  
#De modo análogo, podemos utilizar fltros lógicos para indexar os arrays
  
#Primeira e terceira linha
  
  lin <- c(TRUE, FALSE, TRUE)
  
#Terceira coluna
  
  col <- c(FALSE, FALSE, TRUE)
  
#Primeira e terceira folha
  
  fol <- c(TRUE, FALSE, TRUE, FALSE, FALSE)
  
#Realizando a filtragem
  
  array_novo[lin, col, fol]
  
#Obviamente, tudo pode ser feito diretamente no indexador. No entanto, tratando-se arrays, por possuírem muitas dimensões, recomenda-se utilizar
#vetores externos para filtragem pois a expressão resultante pode ficar muito grande e diminuir a clareza.
  
  array_novo[c(TRUE, FALSE, TRUE), c(FALSE, FALSE, TRUE), c(TRUE, FALSE, TRUE, FALSE, FALSE)]
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Indexação mista
  
#Assim como nas matrizes, podemos misturar as formas de realizar a indexação
  
  array_novo[c(1, 2), c("refrigerante","chá"), c(TRUE, FALSE, FALSE, TRUE, TRUE)]
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Excluindo elementos de uma filtragem
  
#Removendo primeira linha, terceira coluna e removendo a primeira, segunda e terceira folha
  
  array_novo[-1, -3, c(-1, -2, -3)]
  
#Através de vetores de números negativos
  
  array_novo[c(-1, -3), c(-1, -2), c(-1, -2, -3)]
  
  array_novo[-c(1, 3), -c(1, 2), -c(1, 2, 3)]
  
  array_novo[-1*c(1, 3), -1*c(1, 2), -1*c(1, 2, 3)]
  
#Através de sequências de números negativos
  
#Como os valores estão sendo excluídos e só os valores não excluídos serão exibidos, a ordem não importa
  
  array_novo[-1:-2, , -1:-3]
  
  array_novo[-2:-1, , -3:-1]

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Busca de índices
  
#Se quisermos buscar num array que valores obedecem a certo filtro lógico,podemos fazer
  
  which(array_novo > 3)
  
#No entanto, a forma acima devolve apenas os índices gerais dos valores sendo difícil saber quem são. Utilizando o parâmetro 'arr.ind' podemos saber
#quais são os índices dos valores que correspondem ao filtro. Por padrão, seu valor é FALSE.
  
  which(array_novo > 3, arr.ind = FALSE)
  
  which(array_novo > 3, arr.ind = TRUE)
  
#Retornando o índice de valores máximos e mínimos do array
  
#O índice que retorna é relativo à ordem no vetor de dados quando da criação do array
  
  which.min(array_novo)
  
#Retornando o índice do valor máximo do vetor
  
  which.max(array_novo)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#O "comprimento" de um array. Na verdade, seu número total de elementos
  
  length(array_novo)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------