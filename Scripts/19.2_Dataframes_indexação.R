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
  
#Criando um vetor de valores lógicos para selecionar as colunas
  
  colunas <- c(TRUE, FALSE, FALSE, TRUE, TRUE)
  
  tabela[colunas]
  
  tabela[ ,colunas]
  
#Agora indexando as linhas
  
  linhas <- c(TRUE, FALSE, FALSE, TRUE, TRUE)
  
  tabela[linhas, ]
  
#Selecionando linhas e colunas
  
  tabela[linhas, colunas]
  
#Ou colocando o vetor de valores lógicos diretamente no indexador
  
  tabela[c(TRUE, FALSE, FALSE, TRUE, TRUE), c(TRUE, FALSE, FALSE, TRUE, TRUE)] 
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Indexação mista
  
  tabela[3, 'valores']

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Indexação por condicionais
  
#O mesmo princípio de saber que o retorno de uma comparação é um vetor de lógicos pode ser usado para filtragem

  tabela[tabela$sal > 600, ]
  
  tabela[tabela$sal > 600, c("classes","numeros")]
  
#Abaixo, selecionamos todos os carros do dataframe mtcars que possuem mpg > 17 e gear igual a 4

  selecao <- (mtcars$mpg > 15) & (mtcars$gear == 4)
  
  mtcars[selecao, ]
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Filtrando comparações com sequências de alfanuméricos  
  
#A sequência predefinida em R para a ordem dos caracteres alfabéticos pode ser usada para estabelecer uma busca ordenada em atributos que recebem 
#strings como seus valores
  
  tabela[tabela$objetos > "casa", ]
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Excluindo valores de uma filtragem
  
#Da mesma forma como acontece com vetores, matrizes e arrays, podemos utilizar valores negativos para excluir as linhas e colunas que não queremos 
#exibir durante a filtragem de valores num dataframe
  
  tabela[c(-1, -2), c(-4,-5)]
  
  tabela[-c(1, 2), -c(4,5)]
  
  tabela[-1*c(1, 2), -1*c(4, 5)]
  
#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Usando valores de uma coluna como linhas a selecionar
  
#Os valores da coluna servirão com índice das linhas que devem ser exibidas

  mtcars[mtcars[,"gear"], ]
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Aletrando valores de um dataframe
  
#Podemos utilizar a indexação para alterar valores de um dataframe
  
#Alterando um só valor
  
  tabela[1, "numeros"] <- 999
  
#Alterando vários valores
  
  tabela[1:5, "numeros"] <- c(0, 0, 0, 0, 0)
  
#Lembrando da propriedade de ciclagem dos vetores, podemos repetir apenas uma vez o valor a substituir
  
  tabela[1:5, "numeros"] <- c(1)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Para evitar usar um vetor de lógicos no indexador, podemos usar a funcão subset
  
  selecao <- (mtcars$mpg > 15) & (mtcars$gear == 4)

  subset(mtcars, selecao)

#Subset com colunas específicas pelo índice

  subset(mtcars, selecao, c(1, 3, 5))

#Subset com colunas específicas pelo nome

  subset(mtcars, selecao, select = c(hp, wt, vs))

  subset(mtcars, selecao, select = c("hp", "wt", "vs"))  

#-----------------------------------------------------------------------------------------------------------------------------------------------------