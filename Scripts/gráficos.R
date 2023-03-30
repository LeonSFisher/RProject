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
#TIPOS DE FUN"CÕES DE PLOTAGEM

#Funções de plotagem de alto nível
#Produzem gráficos completos através de dados passados como parâmetros para ela
  
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
#Uma de suas principais funções é a função plot()
#A forma de plotagem de plot() depende de que parâmetros informamos
#Informando dois conjuntos de dados do mesmo tamanho, produz um scatter plot (gráfico de dispersão) com os dados
#O primeiro parâmtero coloca a primmeira série de dados na horizontal e a segunda na vertical
  
  serie1 <- runif(150)
  
  serie2 <- runif(150)
  
  plot(serie1, serie2)
  
#Informando apaenas uma série de dados, produz um gráfico de dispersão com os índices em x e os valores em y
  
  serie3 <- mtcars$wt
  
  plot(serie3)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Função pairs()
#Produz todos os pares de uma matriz ou coluna de dataframe
#Por exemplo, abaixo plotaremos x contra y e y contra x num mesmo gráfico
#Comosão apenas duas colunas, produzirá apenas dois gráficos
  
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
  
#Usamos as funções de plotagem de baixo nível para acerscentar detalhes aos gráficos
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
  
#Função locator()  
  
#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Função identify()  
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#PLOTAGEM DINÂMICA
  
#Necessário instalar as ferramentas do sistema XGobi em http://www.research.att.com/areas/stat/xgobi/.
#Uma vez instaladas,elas podemser acessadas diretamente do R  
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#Criando o necessário para gerar o gráfico

  base = c(21, 22, 0 , 13, 14)
  
  rotulos = c("Rio","Sampa" ,"Floripa" ,"Recife" ,"Brasilia")

#Gerando o gráfico colorido 1
  
  pie(base, rotulos, main = "Cidades", col = rainbow(base))

#Gerando o gráfico colorido 2
  
  pie(base, rotulos,main = "Cidades", col = rainbow(length(base)))

#calculando a porcentagem
  
  porcentagem = round(100*base/sum(base))
  
  pie(base, porcentagem, main = "cidades", col = rainbow(base))

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  
#GRÁFICOS DE BARRAS
  
  sal = arquivo$sal_xmin
  
  barplot(sal,main = "Salários", xlab = "x Sal Min", ylab = "quantidade", col = "blue", border = "green")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  
#GRÁFICOS DE DISPERSÃO
  
#gerando o gráfico
  
  dados2 = arquivo$idade_anos
  
  plot(dados2)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#GRÁFICOS DE LINHAS
  
#gerando o gráfico
  
  dados2 = arquivo$idade_anos
  
  plot(dados2, type = "o", main = "idades", col = "red", xlab = "idades", ylab = "numero")

#gerando um segundo gráfico por cima
  
  dados3 = mtcars$hp
  
  lines(dados3 + 20, type = "o", col = "blue")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#HISTOGRAMA
  
  rotulos <- c("navio", "avião", "moto", "carro", "canoa", "bike")
  hist(dados3, main = "Gráfico", col = "blue", xlab = "salarios", ylab = "freq", xlim = c(40, 400), ylim = c(0, 0.007), breaks = 8, prob = TRUE, text(c(75, 125, 175, 225, 275, 325), 0.001, rotulos, col = "red"))

#salvando gráfico como objeto e verificando que ele é uma lista de parâmteros
  
  h <- hist(dados3, main = "Gráfico", col = "blue", xlab = "salarios", ylab = "freq", xlim = c(40, 400), ylim = c(0, 0.007), breaks = 8, prob = TRUE, text(c(75, 125, 175, 225, 275, 325), 0.001, rotulos))
  
  h[1]
  h[2]
  h[3]
  h[4]
  h[5]
  h[6]
  
  v1 <- unlist(h[4])
  v2 <- unlist(h[3])
  
  plot(v1, v2)

#linhas retas na plotagem verticais
  
  hist(mtcars$hp)
  abline(v=c(quantile(mtcars$hp, 0.25), quantile(mtcars$hp, 0.50), quantile(mtcars$hp, 0.75)), lty=2, col="red", lwd=0.5)

#linhas retas na plotagem horizontais
  
  h1 <- hist(mtcars$hp)
  abline(h=mean(unlist(h1[2])))

#linhas horizontais e verticais num mesmo gráfico
  
  abline(v=c(quantile(mtcars$hp, 0.25), quantile(mtcars$hp, 0.50), quantile(mtcars$hp, 0.75)), lty=2, col="red", lwd=0.5, h=mean(unlist(h1[2])))

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#GRÁFICOS BOX-PLOT
  
#gerando o gráfico
  
  boxplot(dados3)

#quantil-quantil
  
  qqnorm(mtcars$mpg)
  qqline(mtcars$mpg)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#FAZENDO GRÁFICOS COM INTERVALOS CRIADOS
  
#após criar os intervalos com cut()
  
  cut(mtcars$mpg, seq(10, 35, 5))

#faz-se a tabela de distribuição dos valores por intervalo
  
  table(cut(mtcars$mpg, seq(10, 35, 5)))

#com isso podemos plotar a tabela como gráfico de barras

  barplot(table(cut(mtcars$mpg, seq(10, 35, 5))))

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#GRÁFICOS DE FATORES
  
#fazendo um gráfico de barras
    
  barplot(table(dados))
  
  barplot(as.integer(table(dados3)), names.arg = nivel)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------