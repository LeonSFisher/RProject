######################################################################################################################################################
######################################################################################################################################################

#VARIÁVEIS - Conversão

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#COERÇÃO

#Em R, o processo de converter uma variável de um tipo em outro tipo chama-se coerção. A coerção não pode ser executada de qualquer forma, mas obedece
#a seguinte lógica de prioridades: logical > integer > numeric > complex > character. Com efeito, cada valor mais à esquerda pode ser convertido para
#qualquer um que se encontre mais à direita, mas a conversão não pode ocorrer no sentido oposto. 

#VALORES PARA EXEMPLO

  x <- 2L         #integer / numeric
  y <- 5.7        #double / numeric 
  z <- "casa"     #caracter
  w <- TRUE       #logical
  m <- 44E110     #double / numeric
  n <- 4-3i       #complex
 
#-----------------------------------------------------------------------------------------------------------------------------------------------------   
#Converter para character
  
  as.character(x)
  as.character(y)
  as.character(z)
  as.character(w)
  as.character(m)
  as.character(n)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------   
#Converter para character
  
  as.complex(x)
  as.complex(y)
  as.complex(z)
  as.complex(w)
  as.complex(m)
  as.complex(n)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------    
#Converter para numeric
  
  as.numeric(x)
  as.numeric(y)
  as.numeric(z) #character não pode ser convertido para numeric. Introduz-se NA's
  as.numeric(w) #valores lógicos são 1 ou 0 como numeric
  as.numeric(m)
  as.numeric(n) #complexo é convertido para numeric eliminando a parte imaginária
  
#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Converter para inteiro
  
  as.integer(x)
  as.integer(y)
  as.integer(z) #character não pode ser convertido para inteiro. Introduz-se NA's
  as.integer(w) #valores lógicos são 1 ou 0 como inteiros
  as.integer(m) #double é muito grande para o tipo inteiro
  as.integer(n) #complexo é convertido para inteiro eliminando a parte imaginária
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Converter para double
  
  as.double(x)
  as.double(y)  
  as.double(z)  #character não pode ser convertido para double. Introduz-se NA's
  as.double(w)  #Valores lógicos TRUE são 1 como double e FALSE é 0
  as.double(m) 
  as.double(n)  #complex são convertidos para double sem a parte imaginária
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Converter para logical
  
  as.logical(z) #caractere não pode ser convertido para lógico
  as.logical(w)
  
  as.logical(x) #inteiros diferentes de zero são TRUE e iguais a zero são FALSE
  x <- 4L
  x <- 0L
  
  as.logical(y) #numerics diferentes de zero são TRUE e iguais a zero são FALSE
  y <- 4.5
  y <- 0.0
  
  as.logical(m) #double diferentes de zero são TRUE e iguais a zero são FALSE
  m <- 55E88
  m <- 0E88
  
  as.logical(n) #complex diferentes de zero são TRUE e iguais a zero são FALSE
  n <- 3-4i
  n <- 0-3i
  n <- 0-0i
  n <- 3-0i
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#Outra forma de promover a conversão de classes de objetos
  
#A função mode() também podem ser usada para converter
  
  valor <- 45
  
  mode(valor)
  
  mode(valor) <- "character"
  
  valor
  
  mode(valor)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#O mesmo pode ser feito com a função storage.mode()
  
  valor <- 77
  
  storage.mode(valor)
  
  storage.mode(valor) <- "character"
  
  valor
  
  storage.mode(valor) 
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#PERDA DE PRECISÃO NA CONVERSÃO
  
#Algumas vezes vamos querer converter um dado numérico para caractere. Nessa conversão, a string resultante não será representada com toda a precisão 
#interna do valor original. Isso significa que ao convertermos de volta a string numérica para um tipo numérico perderemos precisão. O dado terá a 
#precisão representada anteriormente na string
  
  valor <- sqrt(pi/17)  
  
  string <- as.character(valor)
  
  valor <- as.numeric(string)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  