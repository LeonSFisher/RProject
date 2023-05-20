######################################################################################################################################################
######################################################################################################################################################

#AJUDA - HELP

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#BUSCA POR TÓPICOS AVULSOS

#Imagine que você se esqueceu do nome exato de uma função ou quer buscar um tópico específico. Podemos buscar por:

  help.search('random')

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Podemos dar dicas do que o termo a ser buscado significa

#Usamos 'name' para nos referir ao nome da página de ajuda
#Usamos 'title' para o título da página
#Usamos 'alias' é um apelido, outra forma de chmar a mesma função
#Usamos 'concept' para os conceitos
#Usamos 'keyword' para palavras-chave

  help.search('random', fields = c("name","title", "alias", "concept", "keyword"))

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Podemos definir se a busca deve ser case-sensitive ou não

#Considerará maiúsculas e minúsculas como sendo iguais

  help.search('random', ignore.case = TRUE)

#Diferencia a caixa das letras

  help.search('random', ignore.case = TRUE)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Se nos lembrarmos em que pacote se encontra o termo,podemos fornecê-lo
  
  help.search('random', package = "base")
  
#Ou um vetor de caracteres
  
  help.search('random', package = c("base", "ggplot2", "dplyr"))
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Definindo a biblioteca em que buscar
  
  help.search('random', lib.loc = "E:\\GITHUB\\RProject\\Biblioteca\\dir3")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Aumentando os outputs de informação no console

  help.search('random', verbose = TRUE)

#Aqui não temos o parâmetro 'quietly', assim, para diminuir os outputs no cansole, omitimos o parâmetro ou passamos FALSE para ele

  help.search('random', verbose = FALSE)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Definir em que tipos de arquivos buscar
  
#Pode ser 'vingnette', 'help', 'demo'  
  
  help.search('random', types = c("vignette", "help", "demo"))

#-----------------------------------------------------------------------------------------------------------------------------------------------------