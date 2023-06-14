######################################################################################################################################################
######################################################################################################################################################

#GRÁFICOS BÁSICOS

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#ÁREA DE PLOTAGEM

#Algumas funções abrem a área gráfica por si mesmas, outras não
#Quando a área gráfica estiver vazia

  plot.new()

#Originalmente no UNIX

  x11()
  
#No windows
  
  windows()

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#TIPOS DE FUNÇÕES DE PLOTAGEM

#Funções de plotagem de alto nível
#Produzem gráficos completos através de dados passados como parâmetros para elas
  
#Funções de plotagem de baixo nível
#Permitem que adicionemaos informações aos gráficos como textos, introduzir linhas, pontos etc.
  
#Funções de plotagem interativa  
#Permitem, por exemplo, adicionar ou remover dados
  
#Funções de plotagem dinâmica
#Permitem mexer com o gráfico como, por exemplo, promover rotações etc.
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#FUNÇÕES DE PLOTAGEM DE ALTO NÏVEL
  
#Produzem gráficos completos 
#Se uma janela de plotagem não estiver aberta, elas abrem uma. 
#Se uma janela de plotagem já estiver aberta, elas apagam o que já estiver plotado e plotam na mesma
  
#Uma de suas principais funções é a função plot()
#A forma de plotagem de plot() depende de que parâmetros informamos
#Informando dois conjuntos de dados do mesmo tamanho, produz um scatter plot (gráfico de dispersão) com os dados
#O primeiro parâmtero coloca a primmeira série de dados na horizontal e a segunda na vertical
  
  serie1 <- runif(150)
  
  serie2 <- runif(150)
  
  plot(serie1, serie2)
  
#Informando apenas uma série de dados, produz um gráfico de dispersão com os índices em x e os valores em y
  
  serie3 <- mtcars$wt
  
  plot(serie3)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Função pairs()
#Produz todos os pares de plotagem das colunas de uma matriz ou de um dataframe
#Por exemplo, abaixo plotaremos x contra y e y contra x num mesmo gráfico
#Como são apenas duas colunas, produzirá apenas dois gráficos
  
  pairs(cbind(mtcars$hp, mtcars$wt))
  
#Com mais colunas produz todos os gráficos possíveis delas dois a dois
  
  pairs(mtcars)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Função coplot()
  
  ?coplot
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Função hist()
  
  ?hist()
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Função Perspective()  
  
  ?perspective()

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#FUNÇÕES DE PLOTAGEM DE BAIXO NÏVEL
  
#Usamos as funções de plotagem de baixo nível para acrescentar detalhes aos gráficos
#Função lines()
  
  lines(serie1, serie2)

#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Função points()
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Função polygon()
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Função legend()
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#FUNÇÕES DE PLOTAGEM INTERATIVA  
  
#Permite identificar dados na plotagem, adicioná-los ou removê-los e anotar na plotagem
  
#Função locator()  
  
#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Função identify()  
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#PLOTAGEM DINÂMICA

#Permite, por exemplo, promover a rotação 3D de uma plotagem 
#Necessário instalar as ferramentas do sistema XGobi em http://www.research.att.com/areas/stat/xgobi/.
#Uma vez instaladas, elas podem ser acessadas diretamente do R  
  
  par()
  
  points()
  
  tiff()
  