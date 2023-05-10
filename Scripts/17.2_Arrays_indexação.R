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

  resultado <- array(mtcars$wt, dim = c(2, 3, 4))

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Indexando arrays por posição

#Acessando elementos de matrizes geradas por arrays
  
#Segunda linha, terceira coluna, primeira folha  

  resultado[2, 3, 1]

#Terceira linha, primeira coluna, primeira folha

  resultado[2, 1, 1]
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Indexação por variável
  
  lin <- 2
  
  col <- 3
  
  fol <- 1
  
  resultado[lin, col, fol]

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Indexação por vetor de posições
  
#Primeira e segunda linha e segunda e terceira coluna da segunda e terceira folha

  resultado[c(1, 2), c(2, 3), c(2, 3)]
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Indexação por sequência
  
#Podemos utilizar uma sequência para indexar um array
  
#Na ordem direta
  
  resultado[1:2, 1:3, 2:4]
  
#Na ordem inversa
  
  resultado[2:1, 3:1, 4:2]
  
#Ou com a função seq() (ideal para indexação de matrizes muito grandes)
  
  resultado[seq(1, 2), seq(1, 3, 1), seq(2, 4)]

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Indexação por nome
  
#Arrays nomeados podem sofrer filtragem semelhante às das matrizes
  
#Criando array e nomeando-o
  
  linhas = c("marcelo", "thiago", "roberta")
  
  colunas = c("suco", "refrigerante", "chá")
  
  folhas = c("ficha1", "ficha2", "ficha3", "ficha4", "ficha5")
  
  array_novo <- array(mtcars$wt, dim = c(3, 3, 5), dimnames = list(linhas, colunas, folhas))  
  
#Realizando filtragens por nome  
  
#Todas as colunas de todas a s folhas referentes à linha 'thiago'
  
  array_novo["thiago", , ]
  
#Todas a linhas e folhas da coluna 'chá' 
  
  array_novo[ ,"chá" , ]
  
#Todas as linhas e colunas da folha 'ficha2'  
  
  array_novo[ , ,"ficha2"]
  
#Todas as linhas referentes a suco e chá das folhas 1 e 5  
  
  array_novo[ ,c("suco", "chá") ,c("ficha1", "ficha5")]

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Acessando uma matriz inteira
  
#Terceira folha
  
  resultado[, , 3]
  
#Primeira e terceira folhas
  
  resultado[, , c(1, 3)]
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Excluindo elementos de uma filtragem
  
#Removendo primeira linha, terceira coluna e removendo a primeira, segunda e terceira folha
  
  resultado[-1, -3, c(-1, -2, -3)]
  
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
  
  array_novo["marcelo", c("suco","chá"), 5]

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#O "comprimento" de um array. Na verdade, seu número total de elementos

  length(resultado)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Verificando valores
  
#Se quisermos buscar num array que valores obedecem a certo filtro lógico,podemos fazer
  
  which(array_novo > 3)
  
#No entanto, a forma acima devolve apenas os índices gerais dos valores sendo difícil saber quem são. Utilizando o parâmetro 'arr.ind' podemos saber
#quais são os índices dos valores que correspondem ao filtro. Por padrão, seu valor é FALSE.
  
  which(array_novo > 3, arr.ind = FALSE)
  
  which(array_novo > 3, arr.ind = TRUE)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------