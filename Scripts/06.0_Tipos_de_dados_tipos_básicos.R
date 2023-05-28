######################################################################################################################################################
######################################################################################################################################################

#TIPOS DE DADOS - TIPOS BÁSICOS

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#OBJETOS EM R E CLASSES ATÔMICAS

#Em R tudo são objetos. Esses objetos podem ser de diversas classes que determinam a forma de armazenamento interna desses objetos.

#A forma básica de armazenamento interno de um objeto é o seu 'mode' que pode ser verificado com a função mode() ou com storage.mode()

#O mode de um objeto pode ser dos tipos (classes atômicas): character, numeric, logical, complex.

#O tipo (type) de armazenamento de um objeto é a forma como esse objeto é representado. Pode ser verificado com a função typeof()

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#TIPO CHARACTER

#O mode character só temum type que é o próprio character
  
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
  
#Por padrão, valores numéricos são armazenados com precisão dupla (double) 

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
#Números com o ponto decimal
  
  4.4
  
  mode(4.4)
  
  storage.mode(4.4)
  
  typeof(4.4)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#TIPO LOGICAL
  
#O mode logical só possui o type logical
  
#Os tipos de dados logical servem para avaliar valores de afirmações lógicas
  
#Podemos representá-los pelas palavras-chave TRUE e FALSE
  
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
#Cuidados com a forma abreviada
  
#Recomenda-se evitar o uso das formas abreviadas, pois 'T' e 'F' podem ser utilizadas como variáveis. 
  
#Por exemplo, podemos fazer o seguinte:
  
  T <- 7
  
  F <- 0
  
#Assim, o vetor abaixo não equivale a c(TRUE, TRUE, TRUE, FALSE, FALSE), mas a c(7, 7, 7, 0, 0)
  
  c(T, T, T, F, F)  
  
#Já TRUE e FALSE são palavras reservadas e R não permitirá atribuições a elas.
  
#Por exemplo, as atribuições abaixo não são permitidas
  
  TRUE <- 7
  
  FALSE <- 0
  
#Portanto, o vetor abaixo produz o resultado desejado
  
  c(TRUE, TRUE, TRUE, FALSE, FALSE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Operações com o tipo lógico 
  
#Do ponto de vista numérico, TRUE representa 1 e FALSE representa 0
  
#Isto significa que podemos fazer cálculos com eles. Segue alguns exemplos:
  
#Operações aritméticas simples
  
  TRUE + FALSE
  
  TRUE + TRUE + TRUE
  
  TRUE/2
  
  TRUE - 5
  
#Comparações lógicas com os valores lógicos
  
  TRUE < FALSE
  
  FALSE < TRUE

#Podemos até mesmo usá-los em argumentos de funções
  
  cos((TRUE + TRUE + TRUE)^(TRUE-FALSE))

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