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

#Exemplo de erro simples. Perceba que a variável valor_1 não foi criada. Isso acontece porque não é possível calcular a raiz quadrada da letra 'a'.

  valor_1 <- sqrt("a")

#Exemplo de aviso simples. A variável valor_2 é criada apesar do aviso, muito embora seu valor não seja o esperado número complexo 1i.

  valor_2 <- sqrt(-1)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Como outro exemplo, criaremos uma matriz e extrairemos a raiz quadrada de todas as entradas dessa matriz obtendo erros nos valores negativos.

  matriz <- matrix(c(-1, 0, 2, 4, 5, -9, 5, 5, -2), nrow = 3)
  
  sqrt(matriz)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Alguns avisos aparecem. Os erros produzidos foram NaN's nos locais em que não se pôde calcular a raiz quadrada (números negativos).
  
#Para saber quais foramos erros, usamos a função warnings(). Após chamarmos a função, R mostrará quais são os avisos.

  warnings()  
 
#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Caso os avisos fossem de diversos tipos, poderíamos ver um resumo deles
  
  summary(warnings())
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------