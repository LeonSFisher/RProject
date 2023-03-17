######################################################################################################################################################
######################################################################################################################################################

#SEQUÊNCIAS DE ESCAPE 

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#SEQUÊNCIAS DE ESCAPE COMUNS

#Imprimingo uma aspa: sequência \'
#Com a sequência \' não haverá conflito entre as aspas da string e o apóstrofo da palavra d'água

  cat('Marca d\'água')

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Imprimindo uma barra invertida 'backslash' 
#Uma barra invertida pode ser mal interpretada como uma sequência de escape. Para representar a barra invertida, usamos \\

  cat("C:\\Users\\Leandro Luz\\Desktop\\RProject\\Scripts")  

#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Pulando linhas
#O caractere de nova linha \n segmenta a string em duas

  cat("Primeira linha\nSegunda linha")

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Inserindo tabulação
#As tabulações são recuos dados toda vez que se encontra o caractere \t (tab)

  cat("Casa\tCarro\tLivro\tBicicleta")

#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Backspace
#Para cada caractere \b um salto para trás na string é dado (recuo do prompt)

  cat("Nova frase\bcachorro")
  
  cat("Nova frase\b\b\b\b\bcachorro")
  
#Uma forma mais útil de usar o \b é para remover o espaço antes da vírgula
  
  cat("O valor é:", 155, "\b, e nada menos!")

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Retrocendo o prompt
#O carcatere \r 'carriage return' é semelhante ao \b, mas leva o prompt de volta ao começo da string
#Ao se escrever outra frase depois de \r, esta substituirá os caracteres que já foram escritos a partir do começo
#Os caracteres que não foram sobrescritos serão preservados

  cat("Voltando\rLeandro")


  
  
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------