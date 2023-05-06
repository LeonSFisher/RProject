######################################################################################################################################################
######################################################################################################################################################

#STRINGS

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#CONCEITO

#As strings são sequências de caracteres

#Assim como os caracteres, podemos representá-las com aspas duplas ou simples

  'Olá, mundo!'

  "Olá, mundo!"

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Podemos também armazená-las numa variável

  msg1 <- 'Olá, mundo!'
  
  msg2 <- "Olá, mundo!"

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#CONCATENAÇÃO

#Concatenação é o processo de juntar strings para produzir novas strings
  
#Para concatenar, podemos usar a função paste() 
  
  paste("Está um dia", "muito chuvoso")
  
#A função paste() aceita múltiplas concatenações, não apenas duas
  
  paste("Tudo", "vai ficar bem", "novamente", "um dia")
  
#Podemos também concatenar tipos de dados distintos. A concatenação converte todos os tipos de dados concatenados em caracteres.

  paste("Olá", TRUE, 2, "z", 3-2i)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Concatenando strings com uma variável
  
  idade <- "Eu tenho"
  
  paste(idade, "anos")

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Atribuindo um separador
  
#A concatenação com paste() insere automaticamente um espaço em branco entre os objetos concatenados, mas podemos definir um outro separador
  
#Usando a variável anterior
  
  x <- "15 carros novos"

  paste(idade, x, sep = ": ")
  
#Colocando a string diretamente na função
  
  paste("Eu tenho", x, sep = ": ")
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#QUANTIDADE DE CARACTERES
  
#Descobrir a quantidade de caracteres numa string
  
  texto = "Olá, a todos os 123 mundos!!!!"
  
  nchar(texto)
  
#Ou diretamente colocando a string no argumento da função
  
  nchar("Olá, a todos os 123 mundos!!!!") 

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Definindo o que contar
  
#Número de caracteres (inclui espaços em branco, vírgulas etc)  
  
  nchar(texto, type = "chars")
  
#O tamanho do objeto em bytes necessários para armazenar a string
  
  nchar(texto, type = "bytes")
  
#Comprimento do objeto. O número de colunas que 'cat' utiliza para imprimir a string com caracteres monoespaçados
#Na maior parte das vezes, será igual à opção 'char'
  
  nchar(texto, type = "width")
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Contando caracteres num vetor
  
#Retorna o número de caracteres de casa posição respectiva de um vetor como um vetor
  
  nchar(c("A", "casa", "nova", 5))
   
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#SUBSTRINGS
  
#A função substring() divide uma string a partir de uma valor de começo e fim
  
  substring("Olá, mundo!", 6, 8)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Outra opção é a função substr()
  
  substr("Olá, mundo!", 6, 8)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Para pegar o fim da string podemos usar a função nchar() para pegar o número total de caracteres da string
  
  texto <- "Olá, mundo!"
  
  substring(texto, 6, nchar(texto))
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------