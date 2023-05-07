######################################################################################################################################################
######################################################################################################################################################

#ENTRADA DE DADOS - scan()

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#LER VALORES DO TECLADO COM scan()

#Outra forma de ler dados do teclado é com a função scan()

#Após terminar de digitar os dados, precione ENTER uma última vez para finalizar. Sem parâmetros, a função scan() recebe dados da entrada padrão.

  scan()

#Ou, explicitando o parâmetro vazio, resulta no mesmo efeito:

  scan(file = "")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#A função scan() também pode ser utilizada para ler arquivos

#Por padrão, a função scan() espera ler valores reais do arquivo. Para mudar isso, utilizamos o parâmetro 'what' para especificar o tipo de dado
#que queremos que seja lido do arquivo.

  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Subdiretorios\\dir5\\arquivo_texto_alpha.txt", what = "character")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Definindo um limite de palavras a serem lidas 
  
#Se o parâmetro 'nmax' for omitido ou se não for positivo, o arquivo será lido até o final

#Lendo apenas três palavras

  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Subdiretorios\\dir5\\arquivo_texto_alpha.txt", what = "character", nmax = 3)
  
  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Subdiretorios\\dir5\\arquivo_texto_alpha.txt", what = character(), nmax = 3)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Podemos definir o número de linhas a ler.

#Abaixo, definimos apenas uma linha. O número de palavras a ler é maior do que a linha comporta, mas o número máximo de linhas será obedecido

  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Subdiretorios\\dir5\\arquivo_texto_alpha.txt", what = "character", nmax = 6, nlines = 1)  

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Definindo o separador a usar  

#Por padrão, a função scan() armazena cada palavra numa posição de um vetor de caracteres. Cada posição é delimitada por um separador. Por padrão, 
#esse separador é um espaço em branco. Assim, durante a leitura do arquivo, quando se encontra um espaço em branco, cria-se uma nova posição de vetor.
#O fim da linha também gera nova posição.  

  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Subdiretorios\\dir5\\arquivo_texto_alpha.txt", what = "character", sep = ",") 

#Para que o vetor tenha como cada posição cada linha,definimos o separador como o caractere de nova linha '\n'

  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Subdiretorios\\dir5\\arquivo_texto_alpha.txt", what = "character", sep = "\n") 

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Definindo o número de linha que devemos pular até começara a capturar os valores

#Aqui, pularemos a primeira linha

  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Subdiretorios\\dir5\\arquivo_texto_alpha.txt", what = "character", skip = 1) 

#-----------------------------------------------------------------------------------------------------------------------------------------------------


  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Subdiretorios\\dir5\\arquivo_texto_alpha.txt", what = "character", skip = 1)  


#----------------------------------------------------------------------------------------------------------------------------------------------------- 