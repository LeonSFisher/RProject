######################################################################################################################################################
######################################################################################################################################################

#VETORES - VETORES DE CARACTERES - grep() e grepl()

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#grep()

  vetor_carac <- c("marcos", "marcela", "marcondes", "jucelino", "rodrigo","marcia", "leonardo", "francisco", "MARTINS", "jonas", "VaLdEmAr")
  
#Podemos realizar certas operações especiais com vetores de caracteres.
  
#Para filtrar por valores que se adequem a certo padrão, podemos utilizar a função grep()
  
  grep(pattern = "mar", vetor_carac)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Podemos também definir se o padrão deve ser encontrado pela caixa da letra 
  
#Se o argumento 'ignore.case' for TRUE (valor padrão), tanto o padrão em minúsculas quanto em maiúsculas será filtrado. Se for FALSE, apenas da forma
#como estiver colocado será considerada.
  
  grep(pattern = "mar", vetor_carac, ignore.case = TRUE)
  
  grep(pattern = "mar", vetor_carac, ignore.case = FALSE)
  
#Outro exemplo de aplicação
  
  grep(pattern = "MAR", vetor_carac, ignore.case = FALSE)
  
  grep(pattern = "mAr", vetor_carac, ignore.case = FALSE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Como podemos verificar, a função grep() retorna um vetor de índices dos valores que combinam com o padrão procurado. O parâmetro 'value' permite
#determinar este comportamento. Por padrão, seu valor é FALSE e produz a saída em índices. Para que a saída seja constituída pelos valores em si,
#mudamos seu valores para TRUE.
  
  grep(pattern = "mar", vetor_carac, value = FALSE)
  
  grep(pattern = "mar", vetor_carac, value = TRUE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Para retornar os elementos que não combinam com o padrão, usamos o parâmetro 'invert'  
  
#Retornando os valores que não combinam com o padrão como índices
  
  grep(pattern = "mar", vetor_carac, value = FALSE, invert = TRUE)
  
#Retornando os valores que não combinam com o padrão como strings
  
  grep(pattern = "mar", vetor_carac, value = TRUE, invert = TRUE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#A função grep() também pode ser utilizada com números, mas retornará sempre no formato de caracteres
  
  vetor_carac <- c(123, 111, 333, 452, 999, 453, 109, 606, 457, 330, 867)
  
  grep(pattern = 33, vetor_carac, value = TRUE)
  
#Como caracteres numéricos podem ser convertidos para números,podemos obter o vetor numérico correspondente:
  
  vetor_numeric <- as.numeric(grep(pattern = 33, vetor_carac, value = TRUE))
  
  typeof(vetor_numeric)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#grepl()
  
  vetor_carac <- c("marcos", "marcela", "marcondes", "jucelino", "rodrigo","marcia", "leonardo", "francisco", "MARTINS", "jonas", "VaLdEmAr")
  
#A função grepl() faz exatamente o que a função grep() faz, mas a diferença é que o retorno é feito em valores lógicos, não em índices.
  
#A função grepl() também não possui os parâmetros 'value' e 'invert'.
  
  grepl(pattern = "mar", vetor_carac)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Definindo se o padrão deve ser encontrado pela caixa da letra 
  
#Se o argumento 'ignore.case' for TRUE (valor padrão), tanto o padrão em minúsculas quanto em maiúsculas será filtrado. Se for FALSE, apenas da forma
#como estiver colocado será considerada.
  
  grepl(pattern = "mar", vetor_carac, ignore.case = TRUE)
  
  grepl(pattern = "mar", vetor_carac, ignore.case = FALSE)
  
#Outro exemplo de aplicação
  
  grepl(pattern = "MAR", vetor_carac, ignore.case = FALSE)
  
  grepl(pattern = "mAr", vetor_carac, ignore.case = FALSE)  
  
#----------------------------------------------------------------------------------------------------------------------------------------------------- 