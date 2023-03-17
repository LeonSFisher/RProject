################################################################################
################################################################################
#estruturas de repetição (while)
x = 4

while (x < 10) {
  print(x)
  x = x + 1
}

#estruturas de repetição (for)
x = c(4, 7, 99, "gf", "kk", TRUE)
for (valor in x) {
  print(valor)
}

#estruturas de repetição (repeat)
cont = 0

repeat{
  
  cont = cont + 1
  
  print(cont)
  
  if(cont > 10){
    break
  }
}

#estruturas de repetição (next)
x = 0

while (x < 10) {
  
  if(x == 5){
    next
  }
  
  print(x)
  
  x = x + 1
}










################################################################################
################################################################################
#Uso do BREAK e do NEXT
#uso do BREAK dentro do for
x = 4

while (x < 10) {
  
  print(x)
  
  x <- x+1
  
  if(x>7){
    
    break
  }
}

#uso do NEXT dentro do for
x = 4

while (x < 30) {
  
  print(x)
  
  if(x>10){
    
    next
  }
  
  x <- x+1
  
}

#uso do BREAK dentro do for
x = c(4, 7, 99, "gf", "kk", TRUE)

for (valor in x) {
  
  print(valor)
  
  if (valor == 99){
    
    break
  }
}

#uso do NEXT dentro do for
x = c(4, 7, 99, "gf", "kk", TRUE)

for (valor in x) {
  
  if (valor == 99){
    
    next
  }
  
  print(valor)
}

#uso do BREAK dentro do repeat (usual)
cont = 0

repeat{
  
  cont = cont + 1
  
  print(cont)
  
  if(cont > 10){
    break
  }
}

#uso do NEXT dentro do repeat
cont = 0

repeat{
  
  cont = cont + 1
  
  if(cont > 50){
    
    break
  }
  
  if(cont < 10){
    
    next
  }
  
  print(cont)
}

#uso do BREAK dentro do repeat
x = 0

while (x < 10) {
  
  if(x == 5){
    
    break
  }
  
  print(x)
  
  x = x + 1
}

#uso do NEXT dentro do repeat
x = 0

while (x < 10) {
  
  if(x == 5){
    next
    
  }else{
    print(x)
    
  }
  x = x + 1
}

#uso do NEXT dentro do repeat
x = 0

while (x < 10) {
  
  if(x != 5){
    print(x)
  }
  
  x = x + 1
  
  if(x == 5){
    next
  }
}
