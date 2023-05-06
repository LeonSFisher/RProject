######################################################################################################################################################
######################################################################################################################################################

#VETORES - CRIAÇÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#CRIAÇÃO DE VETORES

#Tudo no R é um vetor, até mesmo simples variáveis
#Vetores são estruturas de dados homogêneas onde todos elementos possuem o mesmo 'mode'
#Verificando se um objeto é um vetor
  
  is.vector(2-3i)
  
  is.vector(90)
  
  is.vector(TRUE)
  
  is.vector("Olá, meu nobre!")
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Criação de vetores vazios
#Por concatenação
  
  vetor <- c()
  
#Com a função vetor
#Cria um vetor vazio como mode lógico
  
  vetor <- vector()
  
#Para criar um vetor vazio deum certo tipo de mode, usamos o mode como uma função
#Podemos também da um tamanho para o vetor
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
  
#Vetor de dados 'raw'
  
  vetor <- raw()
  
  vetor <- raw(length = 10)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Criação de vetores por inputs sucessivos no teclado
#Para finalizar o comando é só apertar ENTER de novo em vez de fornecer mais uma entrada
  
  vetor <- scan()
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Criação de vetor por concatenação de elementos com a função combine c()

  vetor1 <- c(1, 2, 3)
  
  vetor1 <- c("c", "b", "a")
  
  vetor1 <- c(TRUE, FALSE, FALSE)
  
  is.vector(vetor1)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Criação de vetores a partir de valores repetidos
#Podemos repetir um valor
  
  vetor2 <- rep(1, 5)
  
  vetor2 <- rep("casa", 5)
  
#Repetindo mais de um valor
  
  vetor2 <- c(rep("homem", 3), rep("mulher", 5))

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Criação de vetores a partir da repetição de outros vetores
#Repetindo vetores inteiros para criar outro vetor
  
  vetor3 <- c(1, 2, 3)
  
  vetor4 <- c(-1,-2,-3)
  
  vetor5 <- c(0, 4, 9)
  
  vetor2 <- c(rep(vetor3, 3), rep(vetor4, 5), rep(vetor5, 2))
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Criação de vetores por composição não repetida de outros vetores
#É o mesmo que "repetir" os vetores uma só vez
  
  vetor6 <- c(-1, 2, -7, 11)
  
  vetor7 <- c(8, 4, 4, -3, 15, 15, 33, -77)
  
  vetor8 <- c(vetor6, vetor7)
  
#Podemos fazer isso também diretamente:
  
  vetor9 <- c(c(-1, 2, -7, 11), c(8, 4, 4, -3, 15, 15, 33, -77))

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Concatenando vetores e valores simples
#Como tudo no R são vetores, inclusive valores simples, podemos concatená-los da mesma forma anterior
  
  vetor1 <- c(0, 1, 0, 3, c(-1, -2, -9)) 
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------