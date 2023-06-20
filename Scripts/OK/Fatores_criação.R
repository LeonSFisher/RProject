######################################################################################################################################################
######################################################################################################################################################

#FATORES - CRIAÇÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#CRIAÇÃO DE NÍVEIS

#Níveis são os valores que uma variável categórica pode assumir. Eles são justamente os valores que são registrados quando da coleta dos dados.

#Gerando níveis para o fator

#CE - Ceará // PE - Pernambuco // SP - São Paulo // AM - Amazonas

  niveis <- c("PE", "CE", "SP", "AM")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Vetor de rótulos
  
#Os que os níveis significam. Servem como apelidos para facilitar a visualização pois muitas vezes os valores de uma variável categórica são apenas 
#códigos representando o que elas realmente significam.
  
#No vetor de rótulos, cada rótulo deve ficar na posição homóloga ao vetor de níveis
  
  rotulos <- c("Pernambuco", "Ceará", "São Paulo", "Amazonas")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#vetor de valores - os dados coletados
  
#Aqui são os valores coletados propriamente ditos
  
  valores <- c("PE", "CE", "SP", "SP", "PE", "SP", "AM", "AM", "PE", "SP", "CE")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#CRIAÇÃO DE FATORES

#Resultado da rotulação - cada valor na pesquisa (vetor valores) terá seu nível substituído pelo seu rótulo respectivo
  
#O parâmetro ordered como FALSE considerará que não existe relação de ordem por detrás dos valores (para categóricas ordinais)

  resultado <- factor(valores, labels = rotulos, ordered = FALSE, levels = niveis)

#O parâmetro ordered como TRUE mostrará a relação de ordem por detrás dos rótulos (para categóricas ordinais)

  resultado <- factor(valores, labels = rotulos, ordered = TRUE, levels = niveis)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#EXCLUSÃO DE NÍVEIS
  
#Excluindo níveis de um vetor de levels quando criar um conjunto de níveis a partir de um já existente. O parâmetro 'exclude' remove do vetor de 
#níveis os valores que estiverem nele especificados.
  
#Necessário que os rótulos sejam do mesmo tamanho que o vetor de níveis depois dos valores excluídos
  
  novos_rotulos <- c("Pernambuco", "Ceará")
  
  resultado <- factor(valores, labels = novos_rotulos, ordered = TRUE, levels = niveis, exclude = c("SP", "AM"))
  
#Com a exclusão, os valores cujos níveis correspondentes foram excluídos perderão também o rótulo associado e serão rotulados com NA's
  
  resultado 
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#GERANDO NÍVEIS PARA FATORES COM A FUNÇÃO gl()

#Repetir 4 vezes os 3 primeiros levels. Se tivermos mais níveis determinados, pega-se somente o suficiente. Assim, temos cinco níveis abaixo, mas só
#serão utilizados os três primeiros sendo que estes serão repetidos quatro vezes.
  
  niveis_fatores = gl(3, 4, labels = c("eu", "tu", "ele", "ela", "nós"))
  
#Podemos também definir se é ordenado
  
  niveis_fatores = gl(3, 4, labels = c("eu", "tu", "ele", "ela", "nós"), ordered = TRUE)
  
#Definindo um tamanho para o vetor de levels (pode ser igual, maior ou menor do que 3*4)
  
#Se o vetor de níveis for menor que as repetições, vai até preencher o vetor
  
  niveis_fatores = gl(3, 4, labels = c("eu", "tu", "ele", "ela", "nós"), ordered = TRUE, length = 10)
  
#Se o vetor de níveis for do mesmo tamanho que as repetições, tudo fica normal
  
  niveis_fatores = gl(3, 4, labels = c("eu", "tu", "ele", "ela", "nós"), ordered = TRUE, length = 12)
  
#Se o vetor de níveis for maior do que as repetições, haverá ciclagem dos valores das repetições até que o vetor de níveis seja preenchido
  
  niveis_fatores = gl(3, 4, labels = c("eu", "tu", "ele", "ela", "nós"), ordered = TRUE, length = 15)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------