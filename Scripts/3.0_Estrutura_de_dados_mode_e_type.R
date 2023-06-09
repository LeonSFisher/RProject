######################################################################################################################################################
######################################################################################################################################################

#TIPOS DE DADOS - TIPOS BÁSICOS

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#OBJETOS EM R E CLASSES ATÔMICAS

#Em R tudo são objetos. Esses objetos podem ser de diversas classes que determinam a forma de armazenamento interna desses objetos, bem como suas
#propriedades, atributos, formas com que serão impressos etc. 

#A forma básica de armazenamento interno de um objeto é o seu 'mode' que pode ser verificado com a função mode(). O mode de um objeto pode ser dos 
#seguintes tipos (classes atômicas): character, numeric, logical, complex.

#O tipo (type) de armazenamento de um objeto é a forma como esse objeto é representado. Pode ser verificado com a função typeof(). Para o mode
#'numeric' nós temos dois 'types', o integer, que representa os inteiros, e o 'double' que repesenta os números em ponto flutuante. Para os outros
#modes de classes atômicas, o type coincidirá com o mode pois eles possuem apenas um type para aquele mode.

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#TIPO CHARACTER

#O mode character só tem um type que é o próprio character. Ele sempre é representado entre aspas e corresponde a frases, palavras, símbolos ou 
#simples letras.
  
#Representando caracteres com aspas duplas

  "casa"

  mode("casa")
  
  storage.mode("casa")
  
  typeof("casa")
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Representando caracteres com aspas simples
  
  'ferragem'
  
  mode('ferragem')
  
  storage.mode('ferragem')
  
  typeof('ferragem')

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#TIPO NUMERIC
 
#O mode numeric possui dois types: integer (números inteiros) e double (ponto flutuante)
  
#Por padrão, caso não especificarmos que o número deve ser representado como inteiro, valores numéricos serão armazenados com precisão dupla (double) 

  5
  
  mode(5)
  
  storage.mode(5)
  
  typeof(5)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#É preciso notar que para garantir que um número seja tratado como inteiro, devemos utilizar o L depois do número  
  
  5L
  
  mode(5L)
  
  storage.mode(5L)
  
  typeof(5L)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Números com o ponto decimal sempre serão double
  
  4.4
  
  mode(4.4)
  
  storage.mode(4.4)
  
  typeof(4.4)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#TIPO LOGICAL
  
#O mode logical só possui o type logical. Os tipos de dados logical servem para avaliar valores de afirmações lógicas sobre expressões e valores.
#Podemos representá-los pelas palavras-chave TRUE e FALSE.
  
#Para um valor verdadeiro, usamos TRUE
  
  TRUE
  
  mode(TRUE)
  
  storage.mode(TRUE)
  
  typeof(TRUE)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Para um valor falso, usamos FALSE 
  
  FALSE
  
  mode(FALSE)
  
  storage.mode(FALSE)
  
  typeof(FALSE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Podemos representar os valores lógicos por sua forma abreviada
  
  T   #Equivale a TRUE
  
  F   #Equivale a FALSE
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#TIPO COMPLEX
  
#O mode complex só possui o type complex
  
#Usa-se i para a parte imaginária
  
  5 - 3i
  
  mode(5 - 3i)
  
  storage.mode(5 - 3i)
  
  typeof(8 + 2i)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#O i sozinho não é identificado como complexo (unidade imaginária)
  
  i
 
#-----------------------------------------------------------------------------------------------------------------------------------------------------   
#Para representar a unidade imaginária usamos 1i
  
  1i
  
  mode(1i)
  
  storage.mode(1i)
  
  typeof(1i)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------