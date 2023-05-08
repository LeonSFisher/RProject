######################################################################################################################################################
######################################################################################################################################################

#VETORES - COERÇÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#COERÇÃO EM VETORES

#Coerção é o processo de converter tipos de dados (mode) para manter a homegeneidade de estruturas de dados homogêneas. A coerção segue a seguinte
#hierarquia: logical > integer > numeric > complex > character.

  vetor <- c("a", 2.2, 3L, TRUE)
  
  typeof(vetor)
  
#Perceba que o mode de menor prioridade é o logical. Isso significa que ele pode sofrer coerção para qualquer outro mode .Com isso, podemos usar a 
#função vector() para criar um vetor vazio a ser preenchido pois ela cria um vetor de mode lógico. Assim, quando atribuirmos valores para o vetor, 
#qualquer que seja ele, o vetor será todo convertido para o mode adequado.
  
  vetor <- vector()
  
  mode(vetor)
  
  vetor[1] <- 55
  
  mode(vetor)
  
  vetor[2] <- TRUE
  
  mode(vetor)
  
  vetor[3] <- "casa"
  
  mode(vetor)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Efeito da coerção nos valores do vetor
  
#Prevalência do character
  
#Apenas um valor do tipo caracter converte todos os demais para caracter

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
  
#Sem um valor do tipo caracter, o tipo complex domina a coerção dos demais

  vetorComplex <- c(3+2i, 4.4, 2L, FALSE)
  
  typeof(vetorComplex[1])
  typeof(vetorComplex[2])
  typeof(vetorComplex[3])
  typeof(vetorComplex[4])
  
  vetorComplex[1]
  vetorComplex[2]
  vetorComplex[3]
  vetorComplex[4]

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Prevalência do numeric
  
#Sem caracteres nem valores complexos, o tipo numérico domina a coerção

  vetorNum <- c(4.4, 2L, FALSE)
  
  typeof(vetorNum[1])
  typeof(vetorNum[2])
  typeof(vetorNum[3])
  
  vetorNum[1]
  vetorNum[2]
  vetorNum[3]

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Prevalência do integer
  
#Sem valores de ponto decimal 'double', valores inteiros explícitos (com o L no final) dominam sobre o valor do tipo logical

  vetorInt <- c(2L, FALSE)
  
  typeof(vetorInt[1])
  typeof(vetorInt[2])
  
  vetorInt[1]
  vetorInt[2]

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Prevalência do logic
  
#Valores lógicos são o de menor prioridade na coeção. Numa estrutura de dados homogênea, só existem como tal entre si.

  vetorLog <- c(FALSE)
  
  typeof(vetorLog[1])
  
  vetorLog[1]

#-----------------------------------------------------------------------------------------------------------------------------------------------------