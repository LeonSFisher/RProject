######################################################################################################################################################
######################################################################################################################################################

#AJUDA - HELP

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#AJUDA PELA FUNÇÃO HELP

#Ajuda de uma função com a função help. Pode ser entre aspas ou não.

#Perceba que R mostra a ajuda para função relacionadas: trigonométricas, no caso.

  help("cos")
  
  help(cos)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Redundância na busca por ajuda

#Podemos usar a função help para saber sobre a funçã0o help

  help("help")
  
  help(help)

#Também podemos pesquisar sobre help() com o operador '?'

  ?help

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Para obtermos informações adicionais no console

  help(help, verbose = TRUE)

#Aqui não temos o parâmetro 'quietly', portanto, para reduzir os outputs no console, omitimos o parâmetro verbose ou o definimos como FALSE
  
  help(help, verbose = FALSE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Definindo o pacote no qual procurar a documentação (procurar ajuda para cosseno no pacote base)

#procurando a função 'cos' dentro do pacore 'base'

  help("cos", package = "base")

#Ou num vetor de pacotes a buscar

  help("cos", package = c("base", "ggplot2", "graphics")) 

#A função cosseno é do pacete base. Se o removermos, teremos um aviso

  help("cos", package = c("ggplot2", "graphics"))  

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Pesquisar em todos os pacotes

  help("cos", try.all.packages = TRUE)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Definindo o diretório a procurar
  
  help("cos", lib.loc = "C:\\Program Files\\R\\R-4.2.3\\library\\base\\help")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Pesquisar por tipo de arquivo de ajuda

#Podemos definir se queremos o arquivo de ajuda como html, texto ou pdf

#Quando baixados, por exemplo, pdf, eles são salvos na pasta de trabalho

  help("cos", help_type = "pdf")
  
  help("cos", help_type = "text")
  
  help("cos", help_type = "html")

#-----------------------------------------------------------------------------------------------------------------------------------------------------