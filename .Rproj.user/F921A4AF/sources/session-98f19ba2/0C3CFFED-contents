################################################################################
################################################################################
#funções 1
nova = function(string){
  
  msg = paste("Mensagem", string, sep = ": ")
  
  print(msg)
}

nova("Olá,mundo!")

#funções 2
nova = function(string){
  
  msg = paste("Mensagem", string, sep = ": ")
  
  return(msg)
}

frase = nova("Olá,mundo!")

print(frase)

#caso não haja o return, o último valor da função será retornado
nova = function(string){
  
  msg = paste("Mensagem", string, sep = ": ")
  
}

frase = nova("Olá,mundo!")

print(frase)

#funções (função lambda)
nova = function(string) msg = paste("Mensagem", string, sep = ": ");

frase = nova("Olá,mundo!")

print(frase)

#funções com vários parâmetros 01
soma = function(...){
  vetor = c(...)
  soma = 0
  
  for(valor in vetor){
    soma = soma + valor
  }
  return(soma)
}

print(soma(5, 6, 7, 8, 2:4, c(1, 1, 1)))

#funções com vários parâmetros 02
soma = function(..., teste = TRUE){
  if(teste){
    vetor = c(...)
    soma = 0
    
    for(valor in vetor){
      
      soma = soma + valor
    }
    
    return(soma)
    
  }else{
    
    return(0)    
  }
}

print(soma(teste = FALSE, 5, 6, 7, 8, 2:4, c(1, 1, 1)))

#funções com vários parâmetros (passagem fora de ordem)
abc <- function(nome, sobrenome, apelido){
  print(paste("O apelido de", nome, sobrenome, "é", apelido, "!"))
  
}

abc("José", "Silva", "Zé")
abc("Silva", "Zé", "José")
abc(sobrenome = "Silva", apelido = "Zé", nome = "José")




