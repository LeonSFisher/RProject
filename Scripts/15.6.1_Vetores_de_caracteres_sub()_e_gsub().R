######################################################################################################################################################
######################################################################################################################################################

#VETORES - VETORES DE CARACTERES sub() e gsub()

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#sub()

  texto <- c("BrXil, oficialmente República Federativa do BrXil, é o maior país da América do Sul. É um país de extremos")
  
#A função sub() serve para substituir um determinado valor que combine com o padrão, mas a substituição será feita apenas na primeira ocorrência.
  
  sub(pattern = "X", replacement = "as", texto, ignore.case = FALSE)
  
#Para substituir todas as ocorrências, utilizamos a função gsub()
  
  gsub(pattern = "X", replacement = "as", texto, ignore.case = FALSE)  
  
#Caso utilizássemos ignore.case como sendo TRUE, haveria substituição indevida na palavra 'extremos' que possui um 'x' minúsculo.
  
  gsub(pattern = "X", replacement = "as", texto, ignore.case = TRUE) 
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------