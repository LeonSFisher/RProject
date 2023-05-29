######################################################################################################################################################
######################################################################################################################################################

#VETORES - CRIAÇÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#CRIAÇÃO DE VETORES

#Tudo no R é um vetor, até mesmo simples variáveis. Vetores são estruturas de dados homogêneas onde todos elementos possuem o mesmo 'mode'

#Verificando se um objeto é um vetor
  
  is.vector(2-3i)
  
  is.vector(90)
  
  is.vector(TRUE)
  
  is.vector("Olá, meu nobre!")
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Criação de vetores vazios
  
#Por concatenação (função combine)
  
  vetor <- c()
  
#Com a função vector()
  
#Cria um vetor vazio como mode lógico
  
  vetor <- vector()
  
#Para criar um vetor vazio de um certo mode, usamos o mode como uma função. Podemos, inclusive, também dar um tamanho para o vetor
  
#Vetor de caracteres
  
  vetor <- character()
  
  vetor <- character(length = 10)
  
#Vetor de lógicos
  
  vetor <- logical()
  
  vetor <- logical(length = 10)  
  
#Vetor de double
  
  vetor <- double()
  
  vetor <- double(length = 10)  
  
#Vetor de inteiros
  
  vetor <- integer()
  
  vetor <- integer(length = 10)
  
#Vetor de complexos
  
  vetor <- complex()
  
  vetor <- complex(length = 10)
  
#O tipo de dado também pode vir interno à função vector()
  
  vector("character", length = 10)
  
  vector("logical", length = 10)
  
  vector("double", length = 10)
  
  vector("integer", length = 10)
  
  vector("complex", length = 10)
  
  vector("raw", length = 10)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Criação de vetores por inputs sucessivos no teclado
  
#Podemos utilizar a função scan() para realizar a captura de valores sucessivos do teclado e armazená-los num vetor
  
  vetor <- scan()
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Criação de vetor por concatenação de elementos com a função combine c()

  vetor <- c(1, 2, 3)
  
  vetor <- c("c", "b", "a")
  
  vetor <- c(TRUE, FALSE, FALSE)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Criação de vetores a partir de valores repetidos
  
#Podemos repetir um valor com a função rep()
  
  vetor <- rep(1, 5)
  
  vetor <- rep("casa", 5)
  
#Repetindo mais de um valor
  
  vetor <- c(rep("homem", 3), rep("mulher", 5))

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Criação de vetores a partir da repetição de outros vetores
  
#Repetindo vetores inteiros para criar outro vetor
  
  vetor1 <- c(1, 2, 3)
  
  vetor2 <- c(-1,-2,-3)
  
  vetor3 <- c(0, 4, 9)
  
  vetor <- c(rep(vetor1, 3), rep(vetor2, 5), rep(vetor3, 2))
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Criação de vetores por composição não repetida de outros vetores
  
#É o mesmo que "repetir" os vetores uma só vez
  
  vetor1 <- c(-1, 2, -7, 11)
  
  vetor2 <- c(8, 4, 4, -3, 15, 15, 33, -77)
  
  vetor <- c(vetor1, vetor2)
  
#Podemos fazer isso também diretamente:
  
  vetor <- c(c(-1, 2, -7, 11), c(8, 4, 4, -3, 15, 15, 33, -77))

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Concatenando vetores e valores simples
  
#Como tudo no R são vetores, inclusive valores simples, podemos concatená-los da mesma forma anterior
  
  vetor <- c(0, 1, 0, 3, c(-1, -2, -9)) 

#-----------------------------------------------------------------------------------------------------------------------------------------------------  