######################################################################################################################################################
######################################################################################################################################################

#FAMÍLIA APPLY() - mapply()

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#mapply()  

#A função mapply é uma versão multivariada da função lapply e sapply. As funções lapply e sapply atuam somente sobre os elementos de uma única lista. 
#mapply() é aplicada sobre o primeiro elemento de cada um dos argumentos, em seguida ao segundo elemento, seguindo ao terceiro, e assim por diante.

#Em geral, cada elemento homólogo de cada input é utilizado como argumento da função a ser applicada na sua correspondente ordem.

#Unindo nomes e sobrenomes. 

#A função paste() une tantas strings quantas forem dadas de modo que aqui podemos passar tantas listas ou vetores quanto quisermos. As strings das
#posições homólogas são unidas para formar uma só.

  lista1 <- list(nomes=c("leandro", "marcos","paulo"))
  
  lista2 <- list(sobrenomes=c("luz", "silva","fernandes"))
  
  mapply(paste, lista1, lista2)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Calculando valores máximo e mínimos
  
#As funções max() e min() retornam o valor máximo e mínimo, respectivamente, de um conjunto de valores de tamanho arbitrário. Com isso, com elas 
#podemos passar tantos argumentos pudermos. As funções serão aplicadas a cada conjunto de valores homólogos.
  
  vetor1 <- c(-1, 7, 7, 4, -6)
  
  vetor2 <- c(-7, 17, 5, 1, -1)
  
  vetor3 <- c(11, 2, 87, -41, 8)
  
  mapply(max, vetor1, vetor2, vetor3)
  
  mapply(min, vetor1, vetor2, vetor3)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Algumas operações podem retornar matrizes
  
  mapply(rep, 1:5, times=6)
  
  mapply(rep, 1:5, 6:8, times=6)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
  
  
  mapply(sqrt, vetor1, vetor2, vetor3)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------