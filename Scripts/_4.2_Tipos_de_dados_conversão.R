######################################################################################################################################################
######################################################################################################################################################

#TIPOS DE DADOS - CONVERSÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#VALORES PARA EXEMPLO

  x <- 2L         #integer / numeric
  y <- 5.7        #numeric / double   
  z <- "casa"     #caracter
  w <- TRUE       #logical
  m <- 44E110     #numeric / double
  n <- 4-3i       #complex

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#FUNÇÕES PARA CONVERTER O TIPO DE DADO
  
#Para converter um tipo de dado para outro, podemos usar as chamadas funções de coerção
#A coerção obedece a sequinte hierarquia: character > complex > numeric > integer > logical 
#Converter para inteiro

  as.integer(x)
  as.integer(y)
  as.integer(z) #character não pode ser convertido para inteiro. Introduz-se NA's
  as.integer(w) #valores lógicos são 1 ou 0 como inteiros
  as.integer(m) #double é muito grande para o tipo inteiro
  as.integer(n) #complexo é convertido para inteiro eliminando a parte imaginária

#-----------------------------------------------------------------------------------------------------------------------------------------------------    
#Converter para numeric

  as.numeric(x)
  as.numeric(y)
  as.numeric(z) #character não pode ser convertido para numeric. Introduz-se NA's
  as.numeric(w) #valores lógicos são 1 ou 0 como numeric
  as.numeric(m)
  as.numeric(n) #complexo é convertido para numeric eliminando a parte imaginária

#-----------------------------------------------------------------------------------------------------------------------------------------------------   
#Converter para character

  as.character(x)
  as.character(y)
  as.character(z)
  as.character(w)
  as.character(m)
  as.character(n)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Converter para double

  as.double(x)
  as.double(y)  
  as.double(z)  #character não pode ser convertido para double. Introduz-se NA's
  as.double(w)  #Valores lógicos TRUE são 1 como double e 0 como FALSE
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
#PERDA DE PRECISÃO NA CONVERSÃO
    
#Algumas vezes vamos requerer converter um dado numérico para caractere
#Nessa conversão, a string resultante não será representada com toda a precisão interna do valor original
#Isso significa que ao convertermos de volta a string numérica para um tipo numérico perderemos precisão
#O dado terá a precisão representada anteriormente na string
    
  valor <- sqrt(pi/17)  

  string <- as.character(valor)
  
  valor <- as.numeric(string)
    
    
#-----------------------------------------------------------------------------------------------------------------------------------------------------