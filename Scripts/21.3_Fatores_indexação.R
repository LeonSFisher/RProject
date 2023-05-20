######################################################################################################################################################
######################################################################################################################################################

#FATORES - INDEXAÇÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#INDEXAÇÃO DE FATORES
  
  niveis <- c("PE", "CE", "SP", "AM")
  
  rotulos <- c("Pernambuco", "Ceará", "São Paulo", "Amazonas")
  
  valores <- c("PE", "CE", "SP", "SP", "PE", "SP", "AM", "AM", "PE", "SP", "CE")
  
  resultado <- factor(valores, labels = rotulos, ordered = FALSE, levels = niveis)
  
  resultado <- factor(valores, labels = rotulos, ordered = TRUE, levels = niveis)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Acessando um elemento do vetor de fatores

  resultado[3]

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Alterando com um valor que está nos níveis
  
#A alteração de um valor de um vetor de fatores pode ocorrer normalmente se o novo valor estiver no vetor de níveis

  resultado[3] <- "Ceará"

#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Tentando alterar com um valor que não está nos níveis (gera um NA na posição)

  resultado[3] <- "DF"

#Como pode ser visto, se o novo valor não estiver no vetor de níveis, ele não pode ser introduzido no lugar de um valor existente no vetor de fatores.
#Para isso, é preciso acrescentar o novo valor no vetor de níveis e depois efetuar a substituição no vetor de fatores.
  
#Acrescentando um novo vaolor no vetor de níveis

  levels(resultado) <- c(levels(resultado), "DF")
  
  resultado
  
  resultado[3] <- "DF"
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#COMPARANDO FATORES
  
#Podemos indexar valores para efetuar comparações
  
#Para o caso em que ordered = TRUE faz sentido perguntar o seguinte:
  
  resultado[1] < resultado[2]
  
  resultado[1] > resultado[4]
  
  resultado[1] == resultado[1]
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Para o caso em que ordered = FALSE não faz sentido perguntar o seguinte:
  
  resultado[1] < resultado[2]
  
  resultado[1] > resultado[4]
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Mesmo não sendo classes ordinais, isto faz sentido
  
  resultado[1] == resultado[1]   
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------