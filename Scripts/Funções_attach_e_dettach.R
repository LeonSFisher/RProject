######################################################################################################################################################
######################################################################################################################################################

#FUNÇÕES ATTACH() E DETACH()

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#USANDO EM DIMENSÕES NOMEADAS

#Geralmente para chamarmos elementos nomeados de uma estrutura como dataframes e listas, usamos o operador $

  mtcars$mpg

#Para evitar o uso do operador $ e utilizarmos o nome da dimensão diretamente, usamos a função attach().

  attach(mtcars)

#Podemos explicitar o parâmetro

  attach(what = mtcars)

#Após isso, podemos nos referir às colunas do dataframe pelo nome sem problemas

  mpg

  sum(mpg)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
##Podemos definir se desejamos verificar conflitos
  
#Por padrão, R mostra uma série de conflitos possíveis, podemos definir que isso sempre aconteça explicitando o parâmetro 'warn.conflicts' que é o
#responsável por isso com o valor TRUE.
  
  attach(what = mtcars, warn.conflicts = TRUE)
  
#Ou para ignorar os avisos
  
  attach(what = mtcars, warn.conflicts = FALSE)
  
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
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Após todo os trabalhos executados, descarregamos os dataframes utilizados
  
  detach(dataframe_1)
  
  detach(dataframe_2)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------