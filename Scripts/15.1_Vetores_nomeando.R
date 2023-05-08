######################################################################################################################################################
######################################################################################################################################################

#VETORES - NOMEAÇÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#NOMEANDO POSIÇÕES DOS VETORES

#Criando um vetor para nomear
  
  vetor <- c(4, 3, 1)
  
#Criando nomes para o vetor
  
  nomesvetor <- c("casas", "carros", "motos")

#Atribuição dos nomes

  names(vetor) <- nomesvetor

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Adionando valores a um vetor
  
#Se adicionarmos mais um valor, a nova posição do vetor fica sem nome

  vetor[4] <- 5

#Corrigimos isso adicionando um novo nome

  nomesvetor[4] <- "aviões" 
  
#Reatribuindo os nomes
  
  names(vetor) <- nomesvetor

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Menos nomes do que casas faz com que as casas restantes do vetor fiquem nomeadas como NA

  vetor <- c(2, 5, 7, 5, 7, 7)
  
  nomesvetor <- c("asa", "cauda", "bico")
  
  names(vetor) <- nomesvetor

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Mais nomes do que casas não são permitidos

  vetor <- c(2, 5, 7)
  
  nomesvetor <- c("asa", "cauda", "bico", "penas", "olhos")
  
  names(vetor) <- nomesvetor

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Removendo nomes do vetor
  
#Para remover os nomes de um vetor, não basta remover o vetor de nomes que lhe fora atribuído, pois uma vez que isso seja feito, apenas o vetor de
#nomes que foi criado é apagado. Os nomes persistem no vetor nomeado como atributo.
  
  vetor <- c(2, 5, 7)
  
  nomesvetor <- c("asa", "cauda", "bico")
  
  names(vetor) <- nomesvetor
  
  rm(nomesvetor)
  
  vetor
  
#Para eliminar os nomes de um vetor, reatribuímos a ele seus próprios valores com a função as.vector()
  
  vetor <- as.vector(vetor)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Herança dos nomes de vetores combinados
  
  vetor1 <- c(1, 2, 3)
  
  vetor2 <- c(4, 5, 6)
  
  names(vetor1) <- c("casas", "carros", "aviões")
  
  names(vetor2) <- c("barcos", "castelos", "lojas")
  
  vetor <- c(vetor1, vetor2)
  
#Percebemos acima, que uma vez que tenhamos concatenado vetores, o vetor resultante herda os nomes dos vetores que o compõe nas posições respectivas.
#Podemos definir se esse comportamento deve prevalecer ou não. Para isso, utilizamos o parâmetro 'use.names'. 
  
#Explicitando o parâmetro com seu valor padrão, TRUE, obtemoso mesmo efeito anterior  
  
  vetor <- c(vetor1, vetor2, use.names = TRUE)
  
#Usando o valor FALSE, o vetor resultante da concatenação não herda os nomes dos vetores que o compõe
  
  vetor <- c(vetor1, vetor2, use.names = FALSE)  
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------