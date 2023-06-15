######################################################################################################################################################
######################################################################################################################################################

#PACOTES - CARREGAMENTO - require()

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#OUTRA FORMA DE CARREGAR PACOTES

#Podemos também utilizar a função require() para carregar os pacotes

#A função require() possui alguns argumentos semelhantes aos da função library()

#A diferença entre as funções de carregamento library() e require() é a seguinte:
#Se o pacote não estiver instalado, a função library() emite uma mensagem de erro e finaliza a execução do script onde ela estiver
#Já a função require(), caso o pacote não esteja instalado, emite uma mensagem de erro e prossegue a execução do script em que ela estiver

  require(ggplot2)
  
  require("agricolae")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Exigir que o nome seja em caracteres

#Nomes fornecidos como caracteres

  require("ggplot2", character.only = TRUE)
  
  require("ggplot2", character.only = FALSE)

#Nomes fornecidos como nomes de pacotes normalmente

  require(ggplot2, character.only = TRUE)
  
  require(ggplot2, character.only = FALSE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Determinar de onde carregar o pacote

#Aqui, carregaremos o pacote 'dplyr' que está numa pasta diferente

  require("dplyr", lib.loc = "E:\\GITHUB\\RProject\\Biblioteca\\dir3")

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Diminuir a quantidade de outputs durante o carregamento

#Perceba que que require() não dispõe do argumento 'verbose'

  require("agricolae", quietly = TRUE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Decidindo se deve avisar sobre conflitos

#Por padrão, é TRUE e sempre mostra os conflitos

  require("graphics", warn.conflicts = TRUE)

#Para ocultar os avisos, mudamos o valor para FALSE

  require("graphics", warn.conflicts = FALSE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Carregar todas as dependências do pacote automaticamente

#A exemplo da função library(), também podemos usar o parâmetro 'attach.required' para carregar todas as dependências do pacote que queremos carregar

  library("raster", attach.required = TRUE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------