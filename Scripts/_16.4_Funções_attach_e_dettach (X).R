######################################################################################################################################################
######################################################################################################################################################

#FUNÇÕES ATTACH() E DETACH()

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#USANDO EM DIMENSÕES NOMEADAS

#Geralmente para chamarmos elementos nomeados de uma estrutura como dataframes e listas, usamos o operador $

  mtcars$mpg

#Para evitar o uso do operador $ e utilizarmos o nome da dimensão diretamente, usamos a função attach()

  attach(mtcars)

  sum(mpg)

#Após a execução dos comandos desejados,para salvar memória,podemos nos livrar do dataframe com a função detach()
  
  detach(mtcars)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Ordem de prioridade
  
#Suponha que tenhamos dois dataframes que possuem colunas de mesmo nome. Como fazer para diferenciá-las?
#Com a função attach() podemos estabelecer uma ordem definida

  dataframe_1 <- mtcars
  
  dataframe_2 <- mtcars[1:10, ]

#Calculando a soma dos valores da coluna 'mpg' para dataframe_1
  
  sum(dataframe_1$mpg)

#Calculando a soma dos valores da coluna 'mpg' para dataframe_1
  
  sum(dataframe_2$mpg)
  
#Vamos restringir os nomes das colunas ao dataframe_2
#Perceba que a soma será feita sobre os valores de dataframe_2 apesar dedataframe_1 também ter um atributo 'mpg'
#Apesar de dataframe_1 ter sido 'atachado' depois, dataframe_2 tem prioridade mais alta e o cálculo será feito sobre os atributos dele
#Não é possível determinar a prioridade como sendo 1
  
  attach(dataframe_2, pos = 2)
  
  attach(dataframe_1, pos = 3)

  sum(mpg)  
  
#Após isso...
  
  detach(dataframe_1)
  
  detach(dataframe_2)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------