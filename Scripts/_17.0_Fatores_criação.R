######################################################################################################################################################
######################################################################################################################################################

#FATORES - CRIAÇÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#CRIAÇÃO DE NÍVEIS

#Gerando níveis para o fator

#CE - Ceará // PE - Pernambuco // SP - São Paulo // AM - Amazonas
#Vetor de níveis - como as variáveis serão marcadas na pesquisa (devem ser como os valores de input)

  niveis <- c("PE", "CE", "SP", "AM")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Vetor de rótulos - o que os níveis significam (mesma ordem que os níveis)
  
  rotulos <- c("Pernambuco", "Ceará", "São Paulo", "Amazonas")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#vetor de valores - os dados coletados
  
  valores <- c("PE", "CE", "SP", "SP", "PE", "SP", "AM", "AM", "PE", "SP", "CE")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#CRIAÇÃO DE FATORES

#Resultado da rotulação - cada valor na pesquisa (vetor valores) terá seu nível substituído pelo seu rótulo respectivo
#O parâmetro ordered como FALSE considerará que não existe relação de ordem por detrás (para categóricas ordinais)

  resultado <- factor(valores, labels = rotulos, ordered = FALSE, levels = niveis)

#O parâmetro ordered como TRUE mostrará a relação de ordem por detrás dos rótulos (para categóricas ordinais)

  resultado <- factor(valores, labels = rotulos, ordered = TRUE, levels = niveis)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#VERIFICANDO NÍVEIS DE UM FATOR
  
#Saber o número de níveis
  
  nlevels(resultado)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Saber quais são os níveis
  
  levels(resultado)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Determinando a categoria mais baixa (necessário ser ordinal)
  
  min(resultado)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Determinando a caregoria mais alta (necessário ser ordinal)
  
  max(resultado) 
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Verificando se é ordenado
  
  is.ordered(resultado)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#EXCLUSÃO DE NÍVEIS
  
#Excluindo níveis de um vetor de levels quando criar um conjunto de níveis a partir de um já existente  
#Necessário que os rótulos sejam do mesmo tamanho que o vetor de níveis depois dos valores excluídos
  
  rotulos <- c("Pernambuco", "Ceará")
  
  resultado <- factor(valores, labels = rotulos, ordered = TRUE, levels = niveis, exclude = c("SP", "AM"))
  
#Com a exclusão, os valores cujos níveis correspondestes foram excluídos perderão também o rótulo associaso e serão rotulados como NA
  
  resultado 
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#GERANDO NÍVEIS PARA FATORES COM A FUNÇÃO gl()

#Repetir 4 vezes os 3 primeiros levels
  
  niveis_fatores = gl(3, 4, labels = c("eu", "tu", "ele"))
  
#SE tivermos mais níveis determinados, pega-se somente o suficiente
  
  niveis_fatores = gl(3, 4, labels = c("eu", "tu", "ele", "ela", "nós"))
  
#Podemos também definir se é ordenado
  
  niveis_fatores = gl(3, 4, labels = c("eu", "tu", "ele", "ela", "nós"), ordered = TRUE)
  
#Definindo um tamanho para o vetor de levels (pode ser igual, maior ou menor do que 3*4)
  
  niveis_fatores = gl(3, 4, labels = c("eu", "tu", "ele", "ela", "nós"), ordered = TRUE, length = 10)
  
  niveis_fatores = gl(3, 4, labels = c("eu", "tu", "ele", "ela", "nós"), ordered = TRUE, length = 12)
  
  niveis_fatores = gl(3, 4, labels = c("eu", "tu", "ele", "ela", "nós"), ordered = TRUE, length = 15)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#VERIFICANDO SE É FATOR
  
#Dados que são fatores
  
  is.factor(resultado)
  
  class(resultado)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Dados que não são fatores
  
  is.factor(mtcars$gear)
  
  class(mtcars$gear)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#CONVERTENDO PARA FATOR
  
#Transformando os valores em fatores com a função factor()
  
  dados1 <- factor(mtcars$gear)
  
  is.factor(dados1)
  
  class(dados1)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Convertendo para fator com uma função de coerção
  
  dados2 <- as.factor(mtcars$gear)
  
  is.factor(dados2)
  
  class(dados2)
  
  #ptint para fatores

#-----------------------------------------------------------------------------------------------------------------------------------------------------  