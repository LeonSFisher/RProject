######################################################################################################################################################
######################################################################################################################################################

#PACOTES - CARREGAMENTO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#DEFINIÇÕES

#Pacotes são coleções de funções, dados e códigos compilados em um formato bem definido
#Uma biblioteca é o diretório onde os pacotes são armazenados

#Os pacotes podem ser de três tipos:

# (1) Pacotes que vêm instalados com o R e são carregados automaticamente
# (2) Pacotes que vêm instalados com o R, mas não são carregados automaticamente e precisam ser carregados
# (3) Pacotes que não vêm instalados com o R, e precisam ser instalados e depois carregados

#Para os pacotes que vêm instalados com o R e são carregados automaticamente, nada precisa ser feito (Exemplo: pacote base)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#VERIFICAÇÃO

#Verificar todos os pacotes disponíveis na nossa biblioteca

  library()

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Verificar quais pacotes já estão carregados

  (.packages())

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#CARREGAMENTO

#Para os pacotes que vêm instalados com o R, mas não são carregados automaticamente, é necessário fazê-lo
#Pode ser feito de duas formas: com library() e com require()
#Carregar um pacote específico

  library(graphics)

#Caso seja necessário dar à função library() um input advindo de uma string, fazemos:

  library("graphics")

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
  
#Vemos que ao introduzir o vetor diretamente na função, temos um aviso de que o comprimento do mesmo deve ser 1
  
  library(c("dplyr", "ggplot2", "e1071"))

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
  
  require("ggplot2", character.only = TRUE)
  
  require("ggplot2", character.only = FALSE)
  
  require(ggplot2, character.only = TRUE)
  
  require(ggplot2, character.only = FALSE)  
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Diminuir a quantidade de outputs
  
  require("agricolae", quietly = TRUE)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#FUNÇÕES DE PACOTES 

#Depois de carregados, os pacotes podem ser usados normalmente 
#No entanto, podemos buscar e usar funções de um pacote sem precisar carregá-lo diretamente
  
  agricolae::skewness(mtcars$hp)
  
#Que é equivalente ao seguinte código:
  
  library(agricolae)
  
  skewness(mtcars$hp)
  
  
  
  
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  