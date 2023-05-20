######################################################################################################################################################
######################################################################################################################################################

#FAMÍLIA APPLY() - vapply()

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#vapply() 

#vapply() pode ser vista como uma outra forma de sappy(), mas com uma forma fixa de saída predeterminada. Com isso, pode ser mais segura de se
#utilizar.

  vetor1 <- c(1, 7, 7, 4, 6)
  
  vetor2 <- c(7, 17, 5, 1, 1)
  
  vetor3 <- c(11, 2, 87, 41, 8)
  
  lista_vetores <- list(vetor1, vetor2, vetor3)
  
#Aplicando as funções vapply() e sapply(). Note que em vapply() temos que informar o tipo de saída que desejamos.
  
  vapply(lista_vetores, min, FUN.VALUE = numeric(1))
  
  sapply(lista_vetores, min)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Quando utilizamos funções que,operando sobre os vetores retornam um só valor como as funções min() e max(), utilizamos numeric(1) pois retornaremos
#um único valor numérico. Se utilizarmos funções que, operandosobre vetores, retornam dois valores como a função range() que retorna um par de
#valores (o mínimo e o máximo),devemos utilizar numeric(2) pois agora queremos retornar dois valores numéricos. Assim, serão retornados dois valores
#numéricos para cada umdos três vetores, totalizando seis valores. Os retornos estão nas linhas e os vetores nas colunas e a saída tem a forma de uma
#matriz de tamanho 2x3.

  vapply(lista_vetores, range, FUN.VALUE = numeric(2))
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------