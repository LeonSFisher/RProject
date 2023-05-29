######################################################################################################################################################
######################################################################################################################################################

#TIPOS DE DADOS - ESTRUTURA

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#ESTRUTURA DOS DADOS

#Criando matriz de exemplo

  matriz <- matrix(1:9, nrow = 3)

#Tudo no R são objetos. Objetos no sentido da programação orientada a objetos. Isso significa que cada objeto do R foi programado para pertencer a 
#determinada classe e, junto com ela, herdar certas propriedades. Por exemplo, a classe 'matrix' ou, em português, matriz, possui propriedades como
#a forma como elas devem ser multiplicadas, somadas, impressas na tela etc. Além disso, essa classe possui atributos como linhas, colunas, vetor de
#nomes e outras.
  
#Para verificar a classe a que pertence determinado objeto, utilizamos a função class()

  class(matriz)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Verificando a estrutura do objeto
  
#Cada objeto possui uma estrutura definida segundo sua classe. Para verificar essa estrutura, utilizamos a função str()
  
  str(matriz) 

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Verificando o modo de armazenamento de dados do objeto
  
#Para verificar o modo de armazenamneto, utilizamos a função mode()
  
  mode(matriz)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Verificando o tipo de dado armazenado
  
#Sabendo o modo de armazenamento, podemos verificar o tipo do dado em si. Para isso, utilizamos a função typeof()
   
  typeof(matriz)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------