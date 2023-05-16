######################################################################################################################################################
######################################################################################################################################################

#ESTRUTURAS CONDICIONAIS - if-else

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#ESTRUTURA CONDICIONAL if-else

#Estrutura if simples

#Se a condição entre parênteses for verdadeira, o bloco de instruções seguinte será executado

  valor <- 22

  if (valor > 18){
    
    print("Maior de idade")
    
  }
  
#Caso contrário, nada acontece
  
  valor <- 14
  
  if (valor > 18){
    
    print("Maior de idade")
    
  }

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Estrutura if-else
  
#Se a condição entre parênteses for verdadeira, o bloco de instruções seguinte será executado. Caso contrário, o bloco após 'else' é que será.
  
  valor <- 12
  
  if (valor > 18){
    
    print("Maior de idade")
    
  }else{
    
    print("Menor de idade")
    
  }
  
#Para o caso de apenas uma declaração após cada if e else, podemos omitir as chaves {}, mas devemos colocá-las na mesma linha
  
  valor <- 12
  
  if (valor > 18) print("Maior de idade") else print("Menor de idade")
    
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#if's sequenciais
  
#Podemos ter várias confições if em sequência. Serão executados tantos blocos quantos forem aqueles que tiverem satisfeitas as suas respectivas
#condições
  
  valor <- 72
  
  if (valor < 18){
    
    print("Menor de idade")
    
  }
  
  if ((valor > 18) & (valor < 65)){
    
    print("Adulto")
    
  }
  
  if (valor > 65){
    
    print("Idoso")
    
  }
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#If-else aninhados
  
#Os comandos condicionais 'if' e 'else' podem ser colocados uns dentro dos outros
  
  valor <- 72
  
  if (valor > 18){
    
    if (valor < 65){
      
      print("Adulto")
      
    }else{
      
      print("Idoso")
    }
    
  }
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#if-else encadeados
  
#Quando utilizarmos o processo de encadear os condicionais, não precisamos escrever cada condição na forma de um intervalo completo. O fato de um
#valor não ter entrado na faixa anterior, já o restringe a algo que está fora dela e dentro da condição seguinte. Esse processo é conseguido
#utilizando a forma 'else if'
  
  valor <- 99

  if (valor < 3){
    
    print("Bebê")
    
  }else if (valor < 13){
    
    print("Criança")
    
  }else if (valor < 18){
    
    print("Adolescente")
    
  }else if (valor < 65){
    
    print("Adulto")
    
  }else{
    
    print("Idoso")
    
  }
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#outra forma de if composto
  
#Equivalente ao operador ternário de C
  
  if (valor == 30) "igual" else "diferente"
  
#O valor retornado pode ser, inclusive, capturado por uma variável.
  
  res <- if (valor == 30) "igual" else "diferente"
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#estrutura condicional ifelse
  
#Equivalente ao operador ternário de C
  
  valor = 5
  
  ifelse(valor < 2, "a", "b") 
  
#ifelse também pode operar sobre um vetor
  
  v <- c(-1, 3, -5, 7, 8)
  
  ifelse(v < 0, "negativo", "positivo") 

#-----------------------------------------------------------------------------------------------------------------------------------------------------