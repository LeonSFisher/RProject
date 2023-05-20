######################################################################################################################################################
######################################################################################################################################################

#CONSTANTES ESPECIAIS

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#ALGUMAS CONSTANTES ESPECIAIS

#Valor nulo (NULL)
#É um valor não inicializado como uma lista vazia, por exemplo (Objeto nulo)

  NULL

#Converter para objeto nulo

  as.null(3)

#Verificar se é nulo

  is.null(3)
  
  is.null(NULL)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Valor não disponível ou perdido (Not available)

  NA

#Verificar se é NA

  is.na(2)
  
  is.na(NA)
  
#NA's também podem ser gerados quando tentamos inverter a hierarquia de coerção
#Por exemplo, podemos converter um dado numérico para character, mas não podemos converter um character não numérico para numeric
  
  palavra <- "casa"
  
  variavel <- as.numeric(palavra)
  
  variavel <- as.integer(palavra)
  
  variavel <- as.double(palavra)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Infinitos
  
#Representar infinito positivo

  Inf

#Algumas formas de se obter infinito
  
  1/0
  2/0
  3.35/0
  (2-2i)/0
  TRUE/0
  TRUE/FALSE
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Representar infinito negativo

  -Inf
  
#Algumas formas de se obter infinito negativo

  -1/0
  -2/0
  -3.35/0
  -(2-2i)/0
  -TRUE/0
  -TRUE/FALSE

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Inf e -Inf são tratadios como números (números reais extendidos)
  
  is.numeric(Inf)
  
  is.numeric(-Inf)
  
#Não só isso como numéricos do tipo double
  
  is.double(Inf)
  
  is.double(-Inf)
  
#E não são inteiros
  
  is.integer(Inf)
  
  is.integer(-Inf)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Outros exemplos de operações envolvendo infinito
  
  exp(-Inf)
  
  0/Inf
  
  (0:3)^Inf

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Not-a-number
  
#Representa um valor numérico não definido

  NaN
  
#Algumas formas de se obter um valor numérico não definido

  0/0
  -0/0
  0.0/0
  0.0/0.0
  (0-0i)/0
  0/FALSE
  FALSE/FALSE
  Inf-Inf
  Inf/Inf

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#DISTINGUINDO NA, NaN e INF
  
  valores <- c(NA, 0 / 0, Inf - Inf, Inf, 5)
  
#Utilizando funções para verificar os NA's, os NaN's e os Inf's
 
#Para verificar se são NA's 
#Com a função is.na() os valores NA e NaN são identificados todos como NA, assim como INF - INF
  
  is.na(valores)
 
#Para verificar se são NaN's 
#A função is.nan() distingue NA's de NaN's e interpreta INF - INF como NaN
  
  is.nan(valores)

#Para verificar se são valores finitos
#INF - INF é identificado como infinito com a função is.finite()
  
  is.finite(valores)

#Para verificar se são valores infinitos  
#Mas é identificado como finito com a função is.infinite()
  
  is.infinite(valores)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  