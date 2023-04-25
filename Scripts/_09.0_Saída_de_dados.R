######################################################################################################################################################
######################################################################################################################################################

#SAÍDA DE DADOS

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#SAÍDA SIMPLES DE DADOS

#Impressão de dados
#Imprimindo constantes
#Basta usar a função print() com a constante

  print(5L)
  print(3.85)
  print('a')
  print("b")
  print(FALSE)
  print(1-3i)
  print(61E99)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Imprimindo variáveis
#Basta usar a função print() com a variável
  
  x <- 5L
  x <- 5.5
  x <- 'a'
  x <- "b"
  x <- "cachorro"
  x <- TRUE
  x <- 2-3i
  x <- 55E23

  print(x)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Imprimindo strings
#Diretamente
  
  print('Olá, mundo!')
  
  print("Olá, mundo!")
  
#Imprimindo strings por variável  
  
  msg1 <- "Nada a ver!"
    
  msg2 <- "Tudo a ver!"
  
  print(msg1)
  
  print(msg2)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Removendo as aspas
  
#Caso se queira imprimir uma string sem as aspas, podemos usar a função noquote()
  
  "Eu estou aqui!"
  
  print("Eu estou aqui!")
  
  print(noquote("Eu estou aqui!"))
  
#Ou usando noquote() sozinha
  
  noquote("Eu estou aqui!")
  
#Cuidado com a ordem das expressões
  
  noquote(print("Eu estou aqui!"))
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#SAÍDA CONCATENADA
  
#A função paste() exibe a forma concatenada das strings no console, mas pode ser necessário garantir a exibição
#Para isso, sempre combinamos a função paste() com a função print() quando queremos exibir  
  
  msg1 <- "Estamos aqui!"
  
  msg2 <- 'Venha você também.'
  
  paste(msg1, msg2)
  
  print(paste(msg1, msg2)) 

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#SAÍDA EXPRESSA
#Imprime automaticamente
  
  cat("O valor é:", 155)
  
  cat("O valor é:", 155, ", e nada menos!")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Linhas impressas separadamente
  
  cat("Estou","vendo", "uma linda", "nuvem", fill = 3) 
 
#Rótulos para as linhas impressas separadamente
  
  cat("Estou","vendo", "uma linda", "nuvem", fill = 2, labels = c("1", "2", "3", "4")) 

#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Concatena e cria um arquivo com os valores dentro dele
  
  cat("Estou","vendo", "uma linda", "nuvem", file = "E:\\GITHUB\\RProject\\Subdiretorios\\dir5\\bizu.txt", append = TRUE)
  
  cat("O valor é:", 155, ", bocó!", file = "E:\\GITHUB\\RProject\\Subdiretorios\\dir5\\bizu.txt", append = FALSE)
  
#Dando uma organização do arquivo em linhas
  
  cat("Estou","vendo", "uma linda", "nuvem", "\n", file = "E:\\GITHUB\\RProject\\Subdiretorios\\dir5\\bizu.txt", append = FALSE)
  
  cat("O valor é:", 155, ", bocó!", file = "E:\\GITHUB\\RProject\\Subdiretorios\\dir5\\bizu.txt", append = TRUE)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#concatenando várias variáveis  
  
  peso <- 399
  
  nome <- "Maria"
  
  cat(nome, "pesa", peso, "quilos!")
  

  
#-----------------------------------------------------------------------------------------------------------------------------------------------------