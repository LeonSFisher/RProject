######################################################################################################################################################
######################################################################################################################################################

#VETORES - OPERAÇÕES

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#OPERAçÕES ENTRE VETORES

#Criando dois vetores para o exemplo

  vetor1 <- c(1, 2, 3, -1, -5)
  
  vetor2 <- c(1, 2, 3, -4, 2)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Operação de soma

  vetor = vetor1 + vetor2

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Operação de subtração

  vetor = vetor1 - vetor2

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Multiplicação termo-a-termo

  vetor = vetor1 * vetor2

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Divisão termo-a-termo

  vetor = vetor1 / vetor2

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Potenciação termo-a-termo

  vetor = vetor1 ^ vetor2
  
  vetor = vetor1 ** vetor2
  
  vetor = '^'(vetor1, vetor2)
  
  vetor = `^`(vetor1, vetor2)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Obtenção do resto da divisão termo-a-termo

  vetor = vetor1 %% vetor2

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#obtenção do quociente inteiro termo-a-termo

  vetor = vetor1 %/% vetor2

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Expressão qualquer termo-a-termo

  vetor <- vetor1^2 + 2*vetor2
  
  vetor <- (vetor2 - vetor1)^2

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#OPERAçÕES ENTRE VETORES E CONSTANTES

#As operações com constantes são feitas termo-a-termo como se a constante fosse um vetor com todos os valores iguais à constante

  vetor1 <- c(2, 3, 4, 4)
  
  vetor2 <- c(10, 10, 10, 10)
 
#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Exemplo com a soma
  
  vetor1 + vetor2
  
  vetor1 + 10

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Exemplo com a multiplicação
  
  vetor1 * vetor2  

  vetor1 * 10
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#APLICAÇÃO DE FUNÇÕES SOBRE VETORES
  
#A aplicação de funções também ocorre em cada termo do vetor

  sqrt(vetor1)
  
  cos(vetor1)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Não só constantes numéricas operam com os elementos dos vetores termo-a-termo:
  
#A função paste() também pode concatenar strings com um vetor

  amostras <- c(10, 25, 27, 17, 19)

#nomeando os elementos 

  names(amostras) <- paste("Amostra", 1:length(amostras), sep = "_")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#OPERAÇÕES ENTRE VETORES DE TAMANHOS DIFERENTES
  
  vetor1 <- c(1, 2, 3, 4, 5, 8)
  
  vetor2 <- c(3, 5)

#Se a dimensão dos vetores forem múltiplos, R repete o vetor menor até que fique com o mesmo tamanho do maior

  vetor = vetor1 * vetor2
  
  vetor = vetor1 / vetor2
  
  vetor = vetor1 - vetor2

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Se as dimensões dos vetores não forem múltiplos, funciona, mas o R reclama.
  
#R irá repetir os valores do vetor menor até completar o tamanho do vetor maior.

  vetor1 <- c(1, 2, 3) 
  
  vetor2 <- c(-1, 3)
  
  vetor = vetor1 * vetor2
  
#O mesmo acontece se for o primeiro vetor o menor. Nesse caso, seu tamanho será extendido ciclando seus valores.
  
  vetor1 <- c(-1, 3)
  
  vetor2 <- c(1, 2, 3, -4, 7) 
  
  vetor <- vetor2/vetor1
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#OUTRAS OPERAÇÕES SOBRE VETORES
  
  vetor <- c(2, 4, 5,-6, -3,-3, 11, 5)

#saber o tamanho do vetor
  
  length(vetor)

#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Amplitude (valor mínimo e máximo, respectivamente)
  
#Produz um vetor de duas posições correspondendo ao mínimo e ao máximo respectivamente

  range(vetor)
  
#Quando um vetor possui NA's seu range será NA
  
  vetor <- c(NA, NA, 3, 5, -1, NA, 5.5, NA, 77, 11)
  
  range(vetor)
  
#Para eliminar esse efeito, podemos utilizar o parâmetro 'na.rm'
  
#Por padrão, seu valor é FALSE
  
  range(vetor, na.rm = FALSE)
  
#Utilizando o valor TRUE os NA's serão desconsiderados
  
  range(vetor, na.rm = TRUE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Converter um vetor em um objeto nulo

  vetor2 <- NULL

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Soma cumulativa
  
#Produz um vetor de somas cumulativas em cada estágio do somatório
  
  cumsum(vetor)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Produto cumulativo
  
#Produz um vetor de produtos cumulativos em cada estágio do produtório
  
  cumprod(vetor)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Máximo cumulativo
  
#Produz um vetor de máximos cumulativos de todos os elementos até aquela posição
  
  cummax(vetor)  
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Mínimo cumulativo
  
#Produz um vetor de mínimos cumulativos de todos os elementos até aquela posição
  
  cummin(vetor)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Máximos e mínimos paralelos
  
#Os máximos e mínimos paralelos são os valores máximos e mínimos das posições homólogas dos vetores considerados. Caso os vetores tenham tamanhos
#diferentes, os vetores irão ciclar seus valores até atingirem o tamanhos do maior vetor da comparação. Feito isso, os valores máximos ou mínimos
#serão tomados de cada posição gerando um vetor de máximos ou mínimos do tamanho do maior dos vetores.
  
  v1 <- c(2, 4, -1)
  
  v2 <- c(0, 1, 7, 7, 11, -2)
  
  v3 <- c(4, 4, 4, 4)
  
#Máximo paralelo
  
  pmax(v1, v2, v3)
  
#Mínimo paralelo 
  
  pmin(v1, v2, v3)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
  
  
  #Criando uama sequência do mesmo tamanho que um outro objeto
  
  #Utilizando o parâmetro 'along.with' podemos criar, entre os extremos definidos, tantos valores quanto a quantidade de valores do objeto informado
  
  vetor <- c(2, 3, 5, -1)
  
  seq(1, 30, along.with = vetor) 
  
  #Num dataframe, a dimensão referida aqui é a quantidade de colunas que ele possui. Assim, sabendo que o dataframe mtcars possui 11 colunas, podemos
  #obter 11 números numa sequência que corresponda a cada posição respectiva de cada coluna.
  
  seq(1, 30, along.with = mtcars) 
  
  #-----------------------------------------------------------------------------------------------------------------------------------------------------
  
  #-----------------------------------------------------------------------------------------------------------------------------------------------------  
  #Produtório
  
  #Usando o produtório com um vetor
  
  vetor <- c(2, 3, 8, 9, 4, 1, 2, 2)
  
  prod(vetor)
  
  #Ou diretamente
  
  prod(c(2, 3, 8, 9, 4, 1, 2, 2))
  
  #Usando o produtório com uma matriz
  
  matriz <- matrix(vetor, nrow = 2)
  
  prod(matriz)
  
  #Usando o produtório com um array
  
  array_novo <- array(vetor, dim = c(2, 2, 2))
  
  prod(array_novo)
  
  #Caso haja NA's no objeto no qual se deseja avaliar o produtório, podemos usar o parâmetro 'na.rm' para removê-los
  
  vetor <- c(NaN, 2, 3, 8, NA, 9, 4, NA, 1, 2, 2, NA, NA)
  
  prod(vetor)
  
  prod(vetor, na.rm = TRUE)
  
  #-----------------------------------------------------------------------------------------------------------------------------------------------------
  #Somatório
  
  #Somatório usado com vetor
  
  sum(vetor)
  
  #Ou diretamente
  
  sum(c(2, 3, 8, 9, 4, 1, 2, 2))
  
  #Somatório usado com matriz
  
  sum(matriz)
  
  #Somatório usado como array
  
  sum(array_novo)
  
  #Caso haja NA's no objeto no qual se deseja avaliar o somatório, podemos usar o parâmetro 'na.rm' para removê-los
  
  vetor <- c(NaN, 2, 3, 8, NA, 9, 4, NA, 1, 2, 2, NA, NA)
  
  sum(vetor)
  
  sum(vetor, na.rm = TRUE)
  
  
  #-----------------------------------------------------------------------------------------------------------------------------------------------------
  #Valores máximos e mínimos
  
  #Valor máximo de um conjunto de dados
  
  max(vetor)
  
  #Valor mínimo de um conjunto de dados
  
  min(vetor)
  
  #Caso hajam NA's, podemos eliminá-los
  
  vetor <- c(NaN, 2, 3, 8, NA, 9, 4, NA, 1, 2, 2, NA, NA)
  
  max(vetor)
  
  max(vetor, na.rm = TRUE)
  
  min(vetor)
  
  min(vetor, na.rm = TRUE)
  
  #-----------------------------------------------------------------------------------------------------------------------------------------------------  
  #Diferença consecultiva
  
  diff(vetor)
  
  #Diferença entre cada valor e outro valor duas casas depois de cada um deles (por padrão é 1)
  
  diff(vetor, lag = 2)
  
  #Podemos definir também quantas rodadas de diferença queremos
  
  diff(vetor, differences = 2)
  
  diff(vetor, differences = 3)
  