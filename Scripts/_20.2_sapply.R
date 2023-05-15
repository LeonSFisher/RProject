######################################################################################################################################################
######################################################################################################################################################

#FAMÍLIA APPLY() - sapply()

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#sapply()  

#É uma forma simplificada de lapply(). Tem a mesma sintaxe da função laplly(). Recebe um vetor, uma lista ou um dataframe e retorna um vetor ou 
#matriz. Tenta reduzir o objeto de output para o formato mais simples possível, ou seja, simplifica um vetor para vetor, uma lista para lista e um
#dataframe para matriz.

#Aplicando a um vetor

  vetor <- c(3, 3, 6, 7, 9)
  
  novo_vetor <- sapply(vetor, sqrt)
  
  is.vector(novo_vetor)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Aplicando a uma lista  
  
  lista <- list(4, 5, TRUE, FALSE, 16)
  
  novo_vetor <- sapply(lista, sqrt)
  
  is.vector(novo_vetor)
  
  is.list(novo_vetor)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Aplicado a um dataframe
  
  tabela <- data.frame(vetor, vetor*5, vetor*10)
  
  nova_matriz <- sapply(tabela, sqrt)
  
  is.data.frame(nova_matriz)
  
  is.matrix(nova_matriz)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Tornando sapply() idêntica a lapply()
  
#A função sapply() tem um parâmetro chamado 'simplify' que por padrão é TRUe. Caso seja posto como FALSE, a função sapply() não irá mais tentar
#simplificar o resultado, de modo que ela se tornará idêntica à função sapply().
  
  novo_vetor <- sapply(vetor, sqrt, simplify = FALSE)
  is.list(novo_vetor)  
  is.vector(novo_vetor)
  
  novo_vetor <- sapply(lista, sqrt, simplify = FALSE)
  is.vector(novo_vetor)
  is.list(novo_vetor)
  
  nova_matriz <- sapply(tabela, sqrt, simplify = FALSE)
  is.matrix(nova_matriz)
  is.data.frame(nova_matriz)
  is.list(nova_matriz)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------