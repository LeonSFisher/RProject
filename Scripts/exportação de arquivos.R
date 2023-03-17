######################################################################################################################################################
######################################################################################################################################################

#IMPORTAÇÃO DE ARQUIVOS

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#USANDO O PACOTE base

#O primeiro argumento é o objeto a ser exportado.
#O segundo argumento é nome do arquivo.
#O terceiro argumento é o tipo de delimitador - \t (tabulação).
#O quarto argumento significa que as linhas desse objeto não tem nome e assim previne o R de colocar números como nome.
#O quinto argumento indica ao R que as variáveis do tipo caracter devem ser exportadas sem estar entre aspas.

  write.table(chefes, file = "chefesteste.dat", sep = "\t", row.names = FALSE, quote = FALSE)

# Forma 01
write.csv(chefes, file = "chefesteste.csv", row.names = F, quote = F)

# Forma 02
write.csv2(chefes, file = "chefesteste2.csv", row.names = F, quote = F)


# Informe o caminho do diretório que você deseja exportar o arquivo.
write.csv2(chefes, file = "/home/jean/Documentos/Materia_R/Treinamento/Roteiros_das_aulas/Pratica_03/chefesteste2.csv", row.names = F, quote = F)

