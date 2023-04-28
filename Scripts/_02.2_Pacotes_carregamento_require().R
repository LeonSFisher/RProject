######################################################################################################################################################
######################################################################################################################################################

#PACOTES - CARREGAMENTO - require()

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#OUTRA FORMA DE CARREGAR PACOTES

#Podemos utilizar a função require() para carregar os pacotes
#A diferença entre as funções de carregamento library() e require() é a seguinte:
#Se o pacote não estiver instalado, a função library() emite uma mensagem de erro e finaliza a execução.
#Já a função require(), caso o pacote não esteja instalado, emite uma mensagem de erro e prossegue a execução

  require(ggplot2)
  
  require("agricolae")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#A função require() possui alguns argumentos semelhantes aos da função library()
#Exigir que o nome seja em caracteres
#Nomes fornecidos como caracteres

  require("ggplot2", character.only = TRUE)
  
  require("ggplot2", character.only = FALSE)

#Nomes fornecidos como nomes de pacotes normalmente

  require(ggplot2, character.only = TRUE)
  
  require(ggplot2, character.only = FALSE)  

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Diminuir a quantidade de outputs

  require("agricolae", quietly = TRUE)




#-----------------------------------------------------------------------------------------------------------------------------------------------------