######################################################################################################################################################
######################################################################################################################################################

#VETORES - INDEXAÇÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#INDEXAÇÃO DE VETORES

#Para promover a indexação de vetores, podemos utilizar valores inteiros positivos, negativos, lógicos e caracteres

#Indexação por posição 

#O indexador [] retorna o valor da posição correspondente no vetor

  vetor <- c(4, 5, -1, 0, 7)
  
  vetor[3]

#Perceba que no vetor criado a partir da concatenação de outro vetor com alguns valores, a ordem é mantida como definida

  vetor <- c(2, 3, -1, c(7, 9, 0))
  
  vetor[3]
  
  vetor[5]

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Indexação por variável
  
#Podemos criar uma variável e usar seu valor como indexador

  indice <- 2
  
  vetor[indice]

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Indexação por vetor de posições
  
#Cada posição do vetor de índicer refere-se à posição do vetor do qual se quer extrair os valores

  indices <- c(1, 3, 5)
  
  vetor[indices]

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Indexação por sequência
  
#Uma sequência também pode ser usada para indexar valores de um vetor
  
#Ordem direta

  vetor[1:3]

#Ordem inversa

  vetor[3:1]
  
#Ou com a função seq()
  
  vetor[seq(1, 6, 2)]

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Indexação por nome (Uma vez que o vetor tenha sido nomeado, é claro)
  
#Criando e nomeando o vetor
  
  vetor <- c(2, 1, 5)
  
  nomesvetor <- c("carros", "motos", "bicicletas")
  
  names(vetor) <- nomesvetor
  
#Usando o nome no indexador
  
#Uma vez nomeado, o vetor responde com cada posição sendo referida pelo seu nome correspondente
  
  vetor["motos"]
  
  vetor[c("carros", "bicicletas")]

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Indexação por filtro lógico
  
#Utilizando um vetor de valores lógicos, todos os valores TRUE homólogos às posições do vetor que se quer inedxar serão entendidos como valores a 
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
#Indexação por meio de operações relacionais
  
#Ao realizarmos uma comparação, sabemos que nos é retornado um valor lógico. Se essa comparação ocorrer sobre um vetor, um vetor de valores lógicos
#será retornado com cada posição do vetor armazenando TRUE ou FALSE dependendo de o valor da posição passar ou não no teste de comparação.
  
#Feito isso, podemos utilizar o próprio vetor de lógicos oriundo de uma comparação sobre um vetor como indexador desse mesmo vetor. Isso nos retorna 
#todos os valores do vetor que satisfazem a condição
  
#Criando um vetor
  
  vetor <- c(2, 3, -1, c(7, 9, 0), 7, 1, 0)
  
#Realizando uma comparação

  vetor > 2
  
#Utilizando o resultado da comparação no indexador do vetor
  
  vetor[vetor > 2]
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------

#O R reconhece sequência entre as letras

  vetor5 <- c(LETTERS, letters)
  
  vetor5[vetor5 > 'g']

#Para entendermos o resultdo acima, vejamos:

  sort(vetor5)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#BUSCA DE ÍNDICES  
  
#Busca de índices cujos valores relativos obedeçam a certos critérios

  vetor6 <- c(-1, -4, 3, 4, 9, 7, 99, -15)
  
  which(vetor6 > 7)

#Retornando o índice do valor mínimo
  
  which.min(vetor6)

#Retornando o índice do valor máximo

  which.max(vetor6)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#USANDO ÍNDICES PARA ALTER VALORES DOS VETORES

#Um só valor
  
  vetor6[1] <- 0

#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Vários valores

  vetor6[c(1, 2, 3)] <- c(-1, -1, -1)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#EXCLUINDO VALORES DE VETORES  
  
  vetor7 <- c(-1, -4, 3, 4, 9, 7, 99, -15)
  
#Através de valores negativos dentro do indexador
  
  vetor7[c(-1, -3)]
  
#Ou colocando o sinal de menos em evidência
  
  vetor7[-c(1, 3)]
  
#Ou multiplicando o vetor por menos um
  
  vetor7[-1*c(1, 3)]

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Através de vetor de valores lógicos

  vetor7[c(FALSE, TRUE, FALSE, TRUE, TRUE, TRUE)]

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Através de sequências negativas crescentes e decrescentes
#Como os valores estão sendo excluídos e só os valores não excluídos serão exibidos, a ordem não importa

  vetor7[-2:-5]
  
  vetor7[-5:-2]

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Remoção de valores por nome com sinal negativo não funciona

  vetor7[-"João"]
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Podemos criar um vetor de tamanho zero excluindo o único valor de um vetor de tamanho 1
  
  y <- 5
  
  z <- y[-1]
  
  length(z)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#EXPANDINDO VETOR
  
#Da mesma forma que podemos remover elementos de um vetor, também podemos adicioná-los
#Adicionando valor em posição seguinte do vetor
  
  vetor7[9] <- 1999
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Adicionando valores em posições distantes do vetor (NA's são introduzidos)
  
  vetor7[15] <- 77
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------