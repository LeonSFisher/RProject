######################################################################################################################################################
######################################################################################################################################################

#SAÍDA FORMATADA

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#FORMATAÇÃO DE STRINGS
  
#Com o parâmetro 'width' definimos o tamanho do espaço entre as aspas
  
#Quando utilizamos um tamanho menor ou igual ao da mensagem a ser exibida, há um ajuste automático
  
  format("Olá, mundo!", width = 2)
  
  format("Olá, mundo!", width = 11)
  
#Quando definimos um tamanho maior que o da string a exibir,percebemos a diferença
  
  format("Olá, mundo!", width = 20)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Com o parâmetro 'justify' podemos justificar o texto
  
#Esse efeito só é percebido para um tamanho maior do que o da string, obviamente
  
#Justificando texto à esquerda (left)

  format("Olá, mundo!", width = 20, justify = "l")

#Justificando texto à direita (right)
  
  format("Olá, mundo!", width = 20, justify = "r")

#Justificando texto ao centro (center)

  format("Olá, mundo!", width = 20, justify = "c")

#Sem justificação (none)  

  format("Olá, mundo!", width = 20, justify = "n")
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Maiúsculas e minúsculas  
  
#Para colocar uma string em maiúsculas
  
  toupper("Olá, mundo!")
  
#Para colocar uma string em minúsculas
  
  tolower("Olá, mundo!")  

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Formatação de números
  
#Perceba que os números são sempre justificados à direita
  
  mensagem = format(15.33 , width = 20, justify = "l")
  
  mensagem = format(15.33 , width = 20, justify = "c")
  
  mensagem = format(15.33 , width = 20, justify = "r")
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Definindo o número de dígitos significativos (para numeric e complex)
  
  format(3.345456, width = 20, digits = 3)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Definindo se quer a exibição em notação científica
  
  format(3.345456, width = 20, scientific = TRUE) 

#-----------------------------------------------------------------------------------------------------------------------------------------------------