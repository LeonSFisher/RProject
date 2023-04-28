######################################################################################################################################################
######################################################################################################################################################

#PACOTES - CARREGAMENTO - library()

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#VERIFICAÇÃO

#Verificar todos os pacotes disponíveis

  library()

#Lista todos os pacotes disponíveis na biblioteca padrão

  library(lib.loc = .Library)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Verificar quais pacotes já estão carregados

  (.packages())

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Verificar quais pacotes e dataframes estão ativos

  search()

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#CARREGAMENTO

#Para os pacotes que vêm instalados com o R, mas não são carregados automaticamente, é necessário fazê-lo
#Carregar um pacote específico

  library(graphics)

#Caso seja necessário dar à função library() um input advindo de uma string, fazemos:

  library("graphics")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Carregamento da ajuda (documentação do pacote) com informações sobre ele

  library(help = splines) 

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Determinar de onde carregar o pacote

#Aqui, carregaremos o pacote 'dplyr' que está numa pasta diferente

  library("dplyr", lib.loc = "E:\\GITHUB\\RProject\\Subdiretorios\\dir3")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Podemos usar um parâmetro em library() para exigir a entreda em caracteres
#Testando com entrada como nome do pacote

  library(graphics, character.only = FALSE)
  
  library(graphics, character.only = TRUE)

#Testando com entrada como caractere
  
  library("graphics", character.only = FALSE)
  
  library("graphics", character.only = TRUE)  

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Carregar todas as dependências do pacote automaticamente
#Alguns pacotes dependem de outros, assim estes precisam ser carregados também
#Por padrão, attach.required = FALSE

  library("raster", attach.required = FALSE)

  library("raster", attach.required = TRUE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Retornar um valor se ocorrer o carregamento com sucesso
#Por padrão, logical.return = FALSE

  library(graphics, logical.return = FALSE)

  library(graphics, logical.return = TRUE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Decidindo se deve avisar sobre conflitos

#Conflitos podem acontecer, por exemplo, quando dois pacotes carregados possuem funções com mesmo nome.

#Por padrão, é TRUE e sempre mostra os conflitos

  library("graphics", warn.conflicts = TRUE)

#Para ocultar os avisos, mudamos o valor para FALSE
  
  library("graphics", warn.conflicts = FALSE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Para diagnósticos adicionais

  library(graphics, verbose = FALSE)

  library(graphics, verbose = TRUE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Para reduzir a quantidade de outputs

  library(graphics, quietly = TRUE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#A função library não aceita carregamento em lotes com vetores

  pacotes <- c("dplyr", "ggplot2", "e1071")
  
  library(pacotes)
  
#Vemos que ao introduzir o vetor diretamente na função, temos um aviso dizendo que o comprimento do mesmo deve ser 1
  
  library(c("dplyr", "ggplot2", "e1071"))
  
#----------------------------------------------------------------------------------------------------------------------------------------------------- 