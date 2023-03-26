######################################################################################################################################################
######################################################################################################################################################

#EXPORTAÇÃO DE ARQUIVOS

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#USANDO O PACOTE base

#O primeiro argumento é o objeto a ser exportado.
#O segundo argumento é nome do arquivo.
#O terceiro argumento é o tipo de delimitador - \t (tabulação).
#O quarto argumento significa que as linhas desse objeto não tem nome e assim previne o R de colocar números como nome.
#O quinto argumento indica ao R que as variáveis do tipo caracter devem ser exportadas sem estar entre aspas.

  nomes <- c("carlos", "mathias", "ana")
  
  carros <- c(1, 3, 6)
  
  idade <- c(25, 33, 38)

  chefes <- data.frame(nomes, carros, idade)

#Primeira forma com write.table (formato .dat)

  write.table(chefes, file = "chefesteste.dat", sep = "\t", row.names = FALSE, quote = FALSE)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Segunda forma com write.csv (formato .csv)

  write.csv(chefes, file = "chefesteste.csv", row.names = F, quote = F)

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Terceira forma com write.csv2 (formato .csv)
  
  write.csv2(chefes, file = "chefesteste2.csv", row.names = F, quote = F)

#Informando o caminho do diretório que você deseja exportar o arquivo.

  caminho <- "E:\\GITHUB\\RProject\\Subdiretorios\\dir7\\chefes.csv"
  
  write.csv2(chefes, file = caminho, row.names = F, quote = F)


  
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------