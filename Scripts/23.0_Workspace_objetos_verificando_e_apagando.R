######################################################################################################################################################
######################################################################################################################################################

#WORKSPACE (ENVIRONMENT) - OBJETOS

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#O WORKSPACE

#O workspace nada mais é do que o conjunto de todos os objetos ativos com os quais estamos trabalhando. Assim que fechamos a nossa sessão, o R 
#perguntará se queremos salvar o nosso workspace. Caso a resposta seja afirmativa, nosso workspace será salvo no arquivo .RData

#Criando objetos para exemplo

  visivel <- c(2, -3, 5)
  
  fantasmas <- 44
  
  .oculta <- 55
  
  .nada <- TRUE
  
  casas <- "amarelas"
  
  arvores <- 3
  
  asas <- 17
  
  .sas_software <- 5

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Verificar as variáveis criadas
  
#Para verificar todas as variáveis que foram criadas, mas sem exibir as variáveis ocultas
  
  ls()

#Verifica todas as variáveis criadas inclusive ocultas. O parâmetro 'all' é um alias para 'all.names'
  
  ls(all.names = TRUE)  
  
  ls(all = TRUE)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Verificar os nomes em ordem alfabética
  
  ls(sorted = TRUE, all.names = FALSE)
  
  ls(sorted = TRUE, all.names = TRUE)
  
#Ou fora de ordem
  
  ls(sorted = FALSE, all.names = FALSE)
  
  ls(sorted = FALSE, all.names = TRUE)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Verificar os nomes com certa combinação de caracteres
  
#Expressões regulres podem ser utilizadas para filtrar variáveis
  
  ls(pattern = "sas")
  
  ls(pattern = "sas", all.names = TRUE)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#A função objects()
  
#Tudo o que for feito com a função ls() pode ser efeito coma função objects() que possui os mesmos parâmetros e serve para o mesmo fim
  
#Verificar as variáveis
  
  objects()
  
#Verificar as variáveis incluindo as ocultas
  
  objects(all.names = TRUE)  
  
  objects(all = TRUE)
  
#Retornaar as variáveis em ordem alfabétca  
  
  objects(sorted = TRUE, all.names = FALSE)
  
  objects(sorted = TRUE, all.names = TRUE)
  
#Ou fora de ordem
  
  objects(sorted = FALSE, all.names = FALSE)
  
  objects(sorted = FALSE, all.names = TRUE)
  
#Verificar segundo um padrão
  
  objects(pattern = "sas")
  
  objects(pattern = "sas", all.names = TRUE)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Verificando a existência de objetos
  
#Podemos verificar se um determinado objeto de nome conhecido existe no workspace com a função exists  
  
#Verificando um objeto que não existe
  
  exists("a")
  
#Verificando um objeto que existe
  
  exists("casas")
  
#Verificando a existência de uma variável oculta conhecida
  
  exists(".nada")
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#REMOVENDO OBJETOS
  
#Para remover objetos do workspace, utilizamos a função remove() ou, o que é equivalente, seu alias rm()
  
#Removendo objetos específicos
  
  rm(visivel)
  
  remove(visivel)
  
#Inclusive variáveis ocultas
  
  rm(.oculta)
  
  remove(.oculta)
  
#Podemos colocar uma lista de variáveis a remover. Isso é feito colocando todos os nomes de variáveis a remover em sequência
  
  rm(visivel, .nada, casas)
  
  rm("visivel", ".nada", "casas")

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Limpar todas as variáveis
  
#Cria um vetor de caracteres com os nomes das variáveis criadas e as apaga
  
#Preserva o vetor criado
  
  apagar = ls()
  
  typeof(apagar)
  
#Se colocarmos o vetor 'apagar' no arguemnto de rm() só o vetor será a pagado
  
  rm(apagar)
  
#Portanto,para a pagarmos todos as variáveis que são os elementos do vetor, precisamos fornecesr para rm() uma lista com esses valores. Lembrando que
#uma lista pode receber como valores um vetor, mas o contráriio não ocorre.
  
  rm(list = apagar)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Apagar todas diretamente
  
#Sem criar lista
  
#No processo anterior, criamos um vetor e depois apagamos as variáveis que são os elementos do vetor. Feito isso, todas elas eram apagadas, mas o
#próprio vetor prevalecia. Caso queiramos limpara o workspace totalmente, fazemos o seguinte: em vez de criarmos um vetor com os nomes das variáveis,
#fornecemos a rm() a lista de variáveis diretamente através da função ls() no parâmetro 'list'
  
  rm(list = ls())

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Apagar as variáveis ocultas
  
#Nos procedimentoas acima, as variáveis ocultas são preservadas. Para incluí-las na exclusão, é só utilizar o parâmetro 'all.names' de ls()
  
#Utilizando o primeiro procedimento que preserva o vetor de variáveis
  
  apagar = ls(all.names = TRUE)
  
  rm(list = apagar)
  
#Utilizando o segundo procedimento que apaga tudo  
  
  rm(list = ls(all.names = TRUE))
  
#Ou coma  afunção objects() no lugar de ls()
  
  rm(list = objects(all.names = TRUE))
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------