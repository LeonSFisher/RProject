######################################################################################################################################################
######################################################################################################################################################

#AVISOS

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#AVISOS

#Quando recebermos uma mensagem do R informando que nós temos avisos 'warnings' após alguma operação, podemos verificar quais são.

#Quando temos um erro, a função para a sua execução, mas quando temos um aviso, a função executa, mas alerta para algo errado que pode ter acontecido.

#Como exemplo, criaremos uma matriz e extrairemos a raiz quadrada de todas as entradas dessa matriz obtendo erros nos valores negativos.

  matriz <- matrix(c(-1, 0, 2, 4, 5, -9, 5, 5, -2), nrow = 3)
  
  sqrt(matriz)
  
#Alguns avisos aparecem. Os erros produzidos foram NaN's nos locais em que não se pôde calcular a raiz quadrada (números negativos).
  
#Para saber disso, usamos a função warnings(). Após chamarmos a função, R mostrará quais são os avisos.

  warnings()  
  
#Caso os avisos fossem de diversos tipos, poderíamos ver um resumo deles
  
  summary(warnings())
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------