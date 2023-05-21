######################################################################################################################################################
######################################################################################################################################################

#TRATAMENTOS DE NA'S

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#TRATAMENTO DE NA's E NaN's
#Remover valores faltanetes de um vetor

  vetorNA <- c(3, 2, -1, NA, 3, NA, NaN, 44, NA)
  
#Se um vetor possui NA's e queremos realizar uma operação sobre ele
#Com os NA's retorna NA
  
  sum(vetorNA)
  
#Para remover os NA's precisamos primeiro sabem onde eles estão para isso, usamos:
  
  is.na(vetorNA)
  
#E usá-lo como vetor de índices para selecionar os valores correto (observe a negação '!')
  
  sum(vetorNA[!is.na(vetorNA)])
  
#Podemos criar uma sequência de 1 até o tamnho do vetor e usar um filtro lógico para achar os índices de não NA
  
  seq(along=vetorNA)[is.na(vetorNA)]
  
#Mas é mais fácil fazer
  
  which(is.na(vetorNA))
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Se os NA's precisam ser substituídos por 0
  
  vetorNA[is.na(vetorNA)] <- 0
  
#Ou usando ifelse
  
  ifelse(is.na(vetorNA), 0, vetorNA)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Outra opção é fazer:
  
  sum(vetorNA, na.rm = TRUE)
  
#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Exclusão

  na.exclude(vetorNA)
  
  length(na.exclude(vetorNA))

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Omissão

  na.omit(vetorNA)
  
  length(na.omit(vetorNA))

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Emissão de erro se presente

  na.fail(vetorNA)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Retorna a ação que foi executada "na.action" para criar um objeto

  na.action(semNA)
  
  semNA <- na.exclude(vetorNA)

#----------------------------------------------------------------------------------------------------------------------------------------------------- 
#Retorna o input inalterado. Simplesmente não faz nada

  na.pass(vetorNA)

#Caso o vetor tenha NA's, ao ordenar

#para colocar os NA's por último

  sort(vetorNA, na.last = TRUE)

#coloca-los como primeiros

  sort(vetorNA, na.last = FALSE)

#removê-los

  sort(vetorNA, na.last = NA)
  
  
  order(vetor9, na.last = TRUE)
  
  
  rank(vetor9, na.last = TRUE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
  
#A presença de NA's e NaN's não alteram o mode das estruturas homog^nas
  