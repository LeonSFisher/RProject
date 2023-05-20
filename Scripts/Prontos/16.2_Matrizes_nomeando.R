######################################################################################################################################################
######################################################################################################################################################

#MATRIZES - NOMEANDO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#NOMEANDO AS DIMENSÕES DA MATRIZ

#Nomes das coluna

  colunas = c("altura", "peso", "idade")

#Nomes das linhas

  linhas = c("alberto", "francisco", "helder")

#Vetor de dados

  vetor =  c(1.78, 1.69, 1.88, 65, 70, 80, 17, 35, 44)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Criação de uma matriz nomeada internamente
  
#Para nomear a matriz utilizamos o parâmetro 'dimnames' que recebe uma lista com o que serão os nomes das linhas e colunas, respectivamente

  matriz <- matrix(vetor, nrow = 3, ncol = 3, byrow = FALSE, dimnames = list(linhas, colunas))

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Criação de uma matriz nomeada externamente
  
#Em vez de usar um parâmetro dimnames da função matrix(), usar as funções rownames() e colnames()
  
  matriz <- matrix(vetor, nrow = 3, ncol = 3, byrow = FALSE)

  rownames(matriz) <- c("alberto", "francisco", "helder")
  
  colnames(matriz) <- c("altura", "peso", "idade")
  
#Outra opção é usar uma operação com vetores usando paste() para nomear matrizes cujas linhas e/ou colunas possuam nomes que obedeçam a certo padrão
  
  rownames(matriz) <- paste("linha", c(1, 2, 3), sep = "_")
  
  colnames(matriz) <- paste("coluna", c(1, 2, 3), sep = "_")  

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Criação de uma matriz nomeada com uma função de atributo
  
#Podemos também nomear uma matriz com uma lista com os nomes

  dimnames(matriz) <- list(c("alberto", "francisco", "helder"), c("altura", "peso", "idade"))
  
#Ou, equivalentemente
  
  dimnames(matriz) <- list(linhas, colunas)

#-----------------------------------------------------------------------------------------------------------------------------------------------------