######################################################################################################################################################
######################################################################################################################################################

#VETORES - INDEXAÇÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#INDEXAÇÃO DE VETORES

#Para promover a indexação de vetores, podemos utilizar valores inteiros positivos, negativos, lógicos e caracteres

#Criando e nomeando o vetor

  vetor <- c(4, 5, -1, 0, 7)
  
  nomesvetor <- c("carros", "motos", "bicicletas", "aviões", "barcos")
  
  names(vetor) <- nomesvetor

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Indexação por posição 

#O indexador [] retorna o valor da posição correspondente no vetor

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
  
#Usando o nome no indexador
  
  vetor["motos"]
  
#Também é possível que o vetor seja indexado por um vetor de caracteres 
  
  nomes <- c("carros", "bicicletas")
  
  vetor[nomes]
  
#Ou diretamente no indexador
  
  vetor[c("carros", "bicicletas")]
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Indexação com posições vazias
  
#Ao deixar a posição vazia, todo o conteúdo do objeto é exibido
  
  vetor[]

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
#Sequência de valores alfabéticos
  
#O R reconhece sequência entre as letras

  vetor <- c(LETTERS, letters)
  
#Seguindo o procedimento acima, vamos indexar o vetor com um vetor de valores lógicos.No entanto desta vez, perceberemos a existência de uma
#hierarquia entre as letras e entre as letras maiúsculas e minúsculas. Desse modo, podemos compará-las.
  
  vetor[vetor > 'g']

#Para entendermos o resultdo acima, utilizaremos a função sort() para ordenar as letras maiúsculas e minúsculas e ver como elas se relacionam na sua
#estrutura hierárquica. Vejamos:

  sort(vetor)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Excluindo valores da filtragem
  
#Da mesma forma que podemos utilizar índices para obter certos valores numa filtragem,podemos excluir valores dessa filtragem. Aqui é importante
#saber que estamos apenas excluindo valores da própria filtragem, mas não do vetor em si que permanece inalterado.
  
#Através de valores negativos dentro do indexador
  
  vetor <- c(-1, -4, 3, 4, 9, 7, 99, -15)
  
#Excluindo apenas um elemento do vetor. 
#Queremos todos os valores do vetor exceto o segundo
  
  vetor[-2]
  
#Excluindo mais de um elemento do vetor
#Queremos todos os valores do vetor exceto o primeiro e o terceiro
  
  vetor[c(-1, -3)]
  
#Ou colocando o sinal de menos em evidência
  
  vetor[-c(1, 3)]
  
#Ou multiplicando o vetor por menos um
  
  vetor[-1*c(1, 3)]
  
#Através de sequências negativas crescentes e decrescentes
  
#Como os valores estão sendo excluídos e só os valores não excluídos serão exibidos, a ordem não importa
  
  vetor[-2:-5]
  
  vetor[-5:-2]
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Remoção de valores por nome com sinal negativo não funciona
  
#Poderia parecer intuitivo utilizar o sinal de menos para excluir um valor mesmo quando a filtragem é feita por nomes pois, no caso da filtragem, o
#sinal de menos significa exclusão e não uma operação aritmética nem um valor negativo. Infelizmente, isso não ocorre.
  
  vetor <- c(2, 1, 5)
  
  names(vetor) <- c("carros", "motos", "bicicletas")
  
  vetor[-"carros"]

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#BUSCA DE ÍNDICES
  
#Busca de índices cujos valores relativos obedeçam a certos critérios

  vetor <- c(2, 3, -1, c(7, 9, 0), 7, 1, 0)
  
#Para saber quais os índices dos valores que atendem à condição, usamos a função wich()
  
  which(vetor > 5)
  
#Com isso, alternativamente ao vetor de valores lógicos, podemos utilizar esse retorno no indexador do vetor para filtrar os valores correspondentes
#a esses índices e obter o mesmo resultado. Obviamente, a primeira forma exige menos digitação.
  
  vetor[vetor > 5]
  
  vetor[which(vetor > 5)]
  
#Podemos também utilizar a função which() com vetores que tenha sido nomeados. Para isso, utilizamos o parâmetro 'useNames' exibindo os nomes dos
#índices correspondentes ao resultado da filtragem
    
  vetor <- c(2, 1, 5)
  
  names(vetor) <- c("carros", "motos", "bicicletas")
  
  which(vetor < 3, useNames = TRUE)

#Retornando o índice de valores máximos e mínimos do vetor
  
#Retornando o índice do valor mínimo do vetor
  
  which.min(vetor)

#Retornando o índice do valor máximo do vetor

  which.max(vetor)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 
#COMPRIMENTO DO VETOR
  
#O "comprimento" de um vetor. Na verdade, seu número total de elementos
  
  length(vetor)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#USANDO ÍNDICES PARA ALTER VALORES DOS VETORES
  
#Uma vez que sabemos como encontrar determinado valor num vetor (indexar o vetor), podemos utilizar essa técnica para substituir valores do vetor
  
  vetor <- c(2, 3, -1, c(7, 9, 0), 7, 1, 0)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Substituindo um só valor
  
  vetor[1] <- 0

#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Vários valores

  vetor[c(1, 2, 3)] <- c(-1, -1, -1)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#EXPANDINDO VETOR
  
#Também podemos adicionar valores a um vetor já existente
  
  vetor <- c(-1, -4, 3, 4, 9, 7, 99, -15)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Adicionando o novo valor na posição seguinte do último valor do vetor
  
  vetor[9] <- 1999
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Adicionando valores em posições distantes do último valor do vetor produz NA's
  
  vetor[15] <- 77
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------