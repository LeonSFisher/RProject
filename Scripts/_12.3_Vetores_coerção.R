######################################################################################################################################################
######################################################################################################################################################

#VETORES - COERÇÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#COERÇÃO EM VETORES

#Coerção é o processo de converter tipos de dados (mode) para manter a homegeneidade de estruturas de dados homogêneas
#A coerção segue a seguinte hierarquia: logical > integer > numeric > complex > character

  vetor <- c("a", 2.2, 3L, TRUE)
  
  typeof(vetor)
  
#Perceba que o mode de menor prioridade é o logical. Isso significa que ele pode sofrer coerção para qualquer outro mode
#Com isso,podemos usaar a função vector() para criar um vetor vazio a ser preenchido pois ela cria um vetor de mode lógico
#Assim, quando atribuirmos valores para o vetor, ualque seja ele, o vetor será todo convertido para o mode adequado
  
  y <- vector()
  
  mode(y)
  
  y[1] <- "casa"
  
  y[2] <- "carro"
  
  mode(y)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  

  vetor1 <- c(2.2, 3L, TRUE) 
  
  typeof(vetor1)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  

  vetor1 <- c(3L, TRUE)  
  
  typeof(vetor1)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Efeito da coerção nos valores do vetor
#Prevalência do character

  vetorChar <- c("a", 3+2i, 4.4, 2L, FALSE)
  
  typeof(vetorChar[1])
  typeof(vetorChar[2])
  typeof(vetorChar[3])
  typeof(vetorChar[4])
  typeof(vetorChar[5])
  
  vetorChar[1]
  vetorChar[2]
  vetorChar[3]
  vetorChar[4]
  vetorChar[5]

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Prevalência do complexo

  vetorComplex <- c(3+2i, 4.4, 2L, FALSE)
  
  typeof(vetorComplex[1])
  typeofe(vetorComplex[2])
  typeof(vetorComplex[3])
  typeof(vetorComplex[4])
  
  vetorComplex[1]
  vetorComplex[2]
  vetorComplex[3]
  vetorComplex[4]

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Prevalência do numeric

  vetorNum <- c(4.4, 2L, FALSE)
  
  typeof(vetorNum[1])
  typeof(vetorNum[2])
  typeof(vetorNum[3])
  
  vetorNum[1]
  vetorNum[2]
  vetorNum[3]

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Prevalência do integer

  vetorInt <- c(2L, FALSE)
  
  typeof(vetorInt[1])
  typeof(vetorInt[2])
  
  vetorInt[1]
  vetorInt[2]

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Prevalência do logic

  vetorLog <- c(FALSE)
  
  typeof(vetorLog[1])
  
  vetorLog[1]

#-----------------------------------------------------------------------------------------------------------------------------------------------------