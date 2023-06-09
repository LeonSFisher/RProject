######################################################################################################################################################
######################################################################################################################################################

#SAÍDA DE DADOS

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#SAÍDA SIMPLES DE DADOS

#Impressão de dados

#Para exibirmos os valores das variáveis, podemos utilizar dois métodos: 1-Digitar o nome da variável no console pressionar ENTER (ou dar um 'run' no 
#nome da variável no script), o que é chamado de autoimpressão, e 2-utilizar a função print() com a variável no argumento da função desta função. No 
#modo interativo, que é a impressão através do console, geralmente não utilizamos a função print() porque é mais fácil utilizar a autoimpressão. No 
#entanto, ao criarmos scripts, funções e códigos mais longos, utilizaremos, necessariamente, a função print() porque o recurso da autoimpressão não 
#funciona nestes casos.

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
  
#Diretamente na função
  
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
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#SAÍDA CONCATENADA
  
#A função paste() exibe a forma concatenada das strings no console, mas pode ser necessário garantir a exibição. Isto é especialmente verdade
#quando rodamos um script com source(). Nestas situações convém utilizar a combinação de print() e paste()
  
  msg1 <- "Estamos aqui!"
  
  msg2 <- 'Venha você também.'
  
  paste(msg1, msg2)
  
  print(paste(msg1, msg2)) 

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#SAÍDA EXPRESSA
  
#Imprime e concatena automaticamente
  
  cat("O valor é:", 155)
  
  cat("O valor é:", 155, ", e nada menos!")
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Definindo um separador para a função 'cat'
  
#Perceba a diferença de uso com e sem o separador
  
#Com o separador
  
  cat("O valor é", 155, sep = ": ")
  
#Sem o separador
  
  cat("O valor é:", 155)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Linhas impressas separadamente
  
  cat("Estou","vendo", "uma linda", "nuvem", fill = 3) 
 
#Rótulos para as linhas impressas separadamente
  
  cat("Estou","vendo", "uma linda", "nuvem", fill = 2, labels = c("1", "2", "3", "4")) 

#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Concatena e cria um arquivo com os valores dentro dele
  
  cat("Estou","vendo", "uma linda", "nuvem", file = "E:\\GITHUB\\RProject\\Arquivos\\Arquivos_criados_scripts\\frase1.txt", append = TRUE)
  
  cat("O valor é:", 155, ", bocó!", file = "E:\\GITHUB\\RProject\\Arquivos\\Arquivos_criados_scripts\\frase1.txt", append = FALSE)
  
#Dando uma organização do arquivo em linhas com o caractere de nova linha '\n'
  
  cat("Estou","vendo", "uma linda", "nuvem", "\n", file = "E:\\GITHUB\\RProject\\Arquivos\\Arquivos_criados_scripts\\frase1.txt", append = FALSE)
  
  cat("O valor é:", 155, ", bocó!", file = "E:\\GITHUB\\RProject\\Arquivos\\Arquivos_criados_scripts\\frase1.txt", append = TRUE)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
  
  
  #-----------------------------------------------------------------------------------------------------------------------------------------------------
  #Atribuir uma variável e já imprimir
  
  (x <- 15)
  
  #Que equivale a duas declarações separadas
  
  x <- 15
  
  print(x)
  
  #Ou equivalente a usar a forma diretamente no argumento da função
  
  print(x <- 15)