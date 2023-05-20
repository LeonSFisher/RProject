######################################################################################################################################################
######################################################################################################################################################

#VARIÁVEIS

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#IDENTIFICADORES

#São os nomes que atribuiremos às variáveis
#Podem ser uma combinação de letras, números, pontos (.) e underscores (_)
#Deve começar com uma letra ou com o ponto
#Se começado com o ponto, não deve ser seguido de um número
#Palavras reservadas não podem ser utilizadas como identificadores

#Identificadores válidos

  valor

  Total

  .comprimento
  
  tamanho_total
  
  variavel3

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Identificadores inválidos
  
  #v@alor
  
  #3_caso
  
  #_numero
  
  #FALSE
  
  #.7tipo

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Assim como palavras reservadas, devemos evitar dar aos nossos objetos, nomes de funções em R
#Para evitar isso, digitamos o nome do objeto no prompt. Por exemplo, existe a função c() para saber se podemos criar o objeto c, fazemos:
  
  c

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Camel case
  
#Caso se queira evitar o uso de pontos e underscores nos identificadores compostos, uma alternativa é utilizar 'camel case'
  
  TotalDisponivel
  
  AreaDaEsfera
  
  ValorRestante

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#OPERADORES DE ATRIBUIÇÃO

#Há dois tipos de operadores de atribuição básicos

  variavel <- 34
  
  variavel = 34
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Para fazer uma atribuição a variáveis globais
  
#Atribuindo dessa forma, podemos acessar essas variáveis dentro do escopo das funções
  
  variavel <<- 44
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Cuidado para não confundir acrescentando espaços
  
  x <- 5 #(Atribuição o valor 5 à variável x)
  
  x < -5 #(Comparando se a variável x é menor do que o valor -5)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#FORMAS DE ATRIBUIR

#Em R, a atribuição é direcional, mas devemos tomar cuidado com a direção do operador
  
#Atribuição simples
  
#Formas de atribuição válidas
  
  a = 3 
  
  a <- 3 
  
  7 -> a 
  
  a <<- 3
  
  7 ->> a
  
#Formas de atribuição inválidas
  
  a -> 1 
  
  4 <- a
  
  a ->> 3
  
  7 <<- a
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Atribuição múltipla com a seta
  
#Formas válidas
  
  a <- b <- c <- 0
  
  0 -> a -> b -> c
  
#Formas inválidas
  
  a -> b -> c -> 0
  
  0 <- a <-  b <- c  

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Atribuição múltipla com o sinal de igualdade
  
#Forma válida
  
  a = b = c = 1 

#Forma inválida
  
#Inverter a ordem com a seta funciona, mas com o sinal de igual, não.  
    
  1 = a = b = c

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Atribuição com a função assign()
  
#Atribuindo a raiz quadrada de 25, isto é, 5, à variável z
  
  assign("z", sqrt(25))
  
  z
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Atribuir uma variável e já imprimir
  
  (x <- 15)
  
#Que equivale a duas declarações separadas
  
  x <- 15
  
  print(x)
  
#Ou equivalente a usar a forma diretamente no argumento da função
  
  print(x <- 15)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#VARIÁVEIS OCULTAS
  
#Assim como vimos que em R temos arquivos e diretórios ocultos, também podemos ter variáveis ocultas
  
#As variáveis ocultas não aparecem no ambiente de trabalho
  
  .valor <- 100
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#FORMA ALTERNATIVA DE CRIAR IDENTIFICADORES
  
#Caso o identificador necessite espaço em branco, ele precisa ser envolvido por aspas simples ou duplas
  
  `turma do barulho` <- "A3"
  
  `turma do barulho`
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Também podemos usar apóstrofos como aspas, mas, nesse caso, não podemos usar essa forma para chamar a variável
  
#Se chamarmos a variável com apóstrofos como aspas simples ou duplas, eles serão confundidos com strings
  
  'numero bom' <- 7
  
  'numero bom'
  
  "numero ruim" <- 13
  
  "numero ruim"
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#No entanto, após nomeá-las com apóstrofo, podemos chamá-las com aspas
    
  `numero bom` * `numero ruim`
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  