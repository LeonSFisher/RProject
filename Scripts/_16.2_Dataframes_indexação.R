######################################################################################################################################################
######################################################################################################################################################

#DATAFRAMES - INDEXAÇÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#INDEXANDO DATAFRAMES

  numeros = c(1, 2, 3, -1, -4)
  objetos = c("carro", "casa", "faca", "bola", "foice")
  salario = c(500, 550, 600, 900, 630)
  valores = c(1.2, 2.5, 6.7, 4.4, 9.0)
  classes = c(3, 3, 4, 3, 5)
  
  tabela = data.frame(numeros, objetos, salario, valores, classes, row.names = c("tico", "teco", "monte", "geninha", "bzum"))

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#De forma análoga aos vetores, matrizes e arrays

#Indexação por posição
  
#Todas as linhas da segunda e terceira coluna

  tabela[2, 3]
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Indexação por variável
  
  linha <- 4
  
  coluna <- "valores"
  
  tabela[linha, coluna]
  
  tabela[linha, linha]

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Com o operador de coluna nomeada $

  tabela$numeros
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Indexação com vetores de índices
  
  linha <- c(1, 2)
  
  coluna <- c(2, 3)
  
  tabela[linha, coluna]
  
#Ou diretamente no indexador do dataframe
  
  tabela[c(1, 2), c(2, 3)]
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Indexação com sequências
  
#Podemos utilizar uma sequência para indexar um dataframe
  
#Na ordem direta
  
  tabela[1:2, 1:3]
  
#Ou na ordem inversa
  
  tabela[2:1, 3:1]
  
#Ou com a função seq() (ideal para indexação de matrizes muito grandes)
  
  tabela[seq(1, 2), seq(1, 3, 1)]

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Indexação pelo nome
  
#Apenas um nome no indexador pega a coluna
  
  tabela["valores"]
  
#Também podemos pesquisar como nas matrizes, mas, nesse caso, retorna os resultados como linha e não nomeados
  
  tabela[ ,"valores"]
  
#Também é possível que o dataframe seja indexada por um vetor de caracteres 
  
#Apenas um vetor sem identificação de posição no indexador, filtra as colunas
  
  atributos <- c("objetos","salario","classes")
  
  tabela[atributos]
  
#Também podemos discrimonar o vetor por linhas e colunas
  
  personagens <- c("teco","geninha")
  
  tabela[personagens, atributos]
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Indexador vazio
  
#O nome do dataframe com o indexador vazio retorna o dataframe inteiro
  
  tabela[]
  
#Utilizar o nome do dataframe sem indexador resulta no mesmo  
  
  tabela
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Indexação por filtro lógico
  
#Utilizando um vetor de valores lógicos, todos os valores TRUE homólogos às posições do vetor que se quer indexar serão entendidos como valores a 
#capturar e os valores FALSE homólogos serão entendidos como valores a ignorar.
  
#Criando um vetor para utilizar de exemplo 
  
  vetor <- c(2, 3, -1, c(7, 9, 0))
  
#Criando um vetor de valores lógicos
  
  selecao <- c(TRUE, FALSE, FALSE, TRUE, TRUE, FALSE)
  
#Realizando a indexação
  
  vetor[selecao]
  
#Ou colocando o vetor de valores lógicos diretamente no indexador
  
  vetor[c(TRUE, FALSE, FALSE, TRUE, TRUE, FALSE)] 
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Indexação mista
  
  tabela[3, 'valores']

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Indexação por condicionais

  tabela[tabela$sal > 600, ]

#Extraindo dados com base em múltiplas condições e um vetor de valores lógicos

  selecao <- (mtcars$mpg > 17)&(mtcars$gear == 4)
  
  mtcars[selecao,]

#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Usando valores de uma coluna como linhas a selecionar
  
#Os valores da coluna servirão com índice das linhas que devem ser exibidas

  mtcars[mtcars[,"gear"], ]

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Para evitar usar um vetor de lógicos no indexador, usamos a funcão subset

  subset(mtcars, selecao)

#Subset com colunas específicas pelo índice

  subset(mtcars, selecao, c(1, 3, 5))

#Subset com colunas específicas pelo nome

  subset(mtcars, selecao, select = c(hp, wt, vs))

  subset(mtcars, selecao, select = c("hp", "wt", "vs"))  

#-----------------------------------------------------------------------------------------------------------------------------------------------------