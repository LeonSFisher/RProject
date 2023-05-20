######################################################################################################################################################
######################################################################################################################################################

#PACOTES - CARREGAMENTO - library()

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#VERIFICAÇÃO

#Verificar todos os pacotes disponíveis no computador

#Perceba que eles serão separados pela versão do R sendo que cada versão num diretório diferente

  library()

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Verificar quais pacotes já estão carregados

#Podem ser verificados na aba 'packages' do RStudio

  (.packages())

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Pacotes carregados por padrão

  getOption("defaultPackages")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Lista todos os pacotes disponíveis na biblioteca padrão

#Podemos verificar o caminho da biblioteca padrão assim:

  .Library

#Portanto, para verificarmos todos os pacotes na biblioteca padrão, podemos fazer
  
  library(lib.loc = .Library)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Verificar quais pacotes estão carregados de uma biblioteca particular

#O parâmetro all.available busca por todos os pacotes disponíveis em lib.loc. 

#Apesar de não fazer muito sentido utilizar o parâmetro para não fazer nada, por padrão, é FALSE

  .packages(all.available = FALSE, lib.loc = "E:\\GITHUB\\RProject\\Biblioteca\\dir3")

  .packages(all.available = TRUE, lib.loc = "E:\\GITHUB\\RProject\\Biblioteca\\dir3")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Verificar quais pacotes e dataframes estão ativos
  
#Na forma vazia, mostra os pacotes que ficam ativos por padrão junto com o R

  search()

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#CARREGAMENTO

#Para os pacotes que vêm instalados com o R, mas não são carregados automaticamente, é necessário fazê-lo
  
#Carregar um pacote específico

  library(graphics)

#Caso seja necessário dar à função library() um input advindo de uma string, fazemos:

  library("graphics")
  
#Podemos usar um parâmetro em library() para exigir a entreda em caracteres
  
#Testando com entrada como nome do pacote
  
  library(graphics, character.only = FALSE)
  
  library(graphics, character.only = TRUE)
  
#Testando com entrada como caractere
  
  library("graphics", character.only = FALSE)
  
  library("graphics", character.only = TRUE)  

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#A função library não aceita carregamento em lotes com vetores

  pacotes <- c("dplyr", "ggplot2", "e1071")
  
  library(pacotes)

#Vemos que ao introduzir o vetor diretamente na função, temos um aviso dizendo que o comprimento do mesmo deve ser 1

  library(c("dplyr", "ggplot2", "e1071"))

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Carregamento da ajuda (documentação do pacote) com informações sobre ele

  library(help = splines) 

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Determinar de onde carregar o pacote

#Aqui, carregaremos o pacote 'dplyr' que está numa pasta diferente

  library("dplyr", lib.loc = "E:\\GITHUB\\RProject\\Biblioteca\\dir3")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Retornar um valor se ocorrer o carregamento com sucesso
  
#Por padrão, logical.return = FALSE

  library(graphics, logical.return = FALSE)
  
#Mas, se quisermos o aviso...
  
  library(graphics, logical.return = TRUE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Decidindo se deve avisar sobre conflitos

#Conflitos podem acontecer, por exemplo, quando dois pacotes carregados possuem funções com mesmo nome.

#Por padrão, é TRUE e sempre mostra os conflitos

  library("graphics", warn.conflicts = TRUE)

#Para ocultar os avisos, mudamos o valor para FALSE

  library("graphics", warn.conflicts = FALSE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Para reduzir a quantidade de outputs
  
#Pacotes podem mostrar uma grande quandidade de informações quando carregados. Para evitar poluição no console, podemos usar o parâmtero 'quietly'
#que, por padrão, é FALSE
  
  library(graphics, quietly = TRUE)
  
#Para reduzir a quandidade de informação, mudamos seu valor para TRUE

  library(graphics, quietly = TRUE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Para diagnósticos adicionais
  
#Contrariamnete, alguns pacotes podem omitir informações durante o carregamento. Se quisermos que eles mostrem todas as informações possíveis,
#podemos usar o parâmetro 'verbose'.
  
  library(graphics, verbose = TRUE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Carregar todas as dependências do pacote automaticamente
  
#Alguns pacotes dependem de outros, assim estes pacotes precisam ser carregados também. Para isso, utilizamos o parâmetro 'attach.required'
  
#Feito,isso, a instalação demorará mais, porém, todos os pacotes dos quais o pacote que se quer carregar é dependente, serão carregados

  library("raster", attach.required = TRUE)

#----------------------------------------------------------------------------------------------------------------------------------------------------- 