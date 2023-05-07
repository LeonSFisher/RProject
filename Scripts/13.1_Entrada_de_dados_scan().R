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
  
  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Subdiretorios\\dir5\\arquivo_numeros1.txt")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Por padrão, a função scan() espera ler valores reais do arquivo. Para mudar isso, utilizamos o parâmetro 'what' para especificar o tipo de dado
#que queremos que seja lido do arquivo.

  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Subdiretorios\\dir5\\arquivo_texto_alpha.txt", what = "character")
  
#Se colocarmos o parâmetro 'what' para 'character' quando lemos arquivos de dados numéricos, não receberemos erros pois dos dados numéricos poder
#sofrer coerção para caracteres, mas o contrário não ocorre.
  
  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Subdiretorios\\dir5\\arquivo_numeros1.txt", what = "character")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Definindo um limite de palavras a serem lidas 
  
#Se o parâmetro 'nmax' for omitido ou se não for positivo, o arquivo será lido até o final

#Lendo apenas três palavras

  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Subdiretorios\\dir5\\arquivo_texto_alpha.txt", what = "character", nmax = 30)
  
  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Subdiretorios\\dir5\\arquivo_texto_alpha.txt", what = character(), nmax = 30)
  
#Como alias, podemos usar o parâmetro 'n'
  
  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Subdiretorios\\dir5\\arquivo_texto_alpha.txt", what = "character", n = 30)
  
  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Subdiretorios\\dir5\\arquivo_texto_alpha.txt", what = character(), n = 30)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Podemos definir o número de linhas a ler.

#Abaixo, definimos apenas uma linha. O número de palavras a ser lido em nmax é maior do que a linha comporta, mas o número máximo de linhas será
#obedecido pois tem prioridade sobre nmax. Assim, só serão lidas 16 palavras se na primeira linha tiver uma quantidade de palavras maior ou igual 
#a isso. Resumindo, significa: leia no máximo dezesseis palavras de no máximo 1 linha.

  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Subdiretorios\\dir5\\arquivo_texto_alpha.txt", what = "character", nmax = 16, nlines = 1)  
  
#Para ler das 3 primeiras linhas
  
  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Subdiretorios\\dir5\\arquivo_texto_alpha.txt", what = "character", nmax = 16, nlines = 3)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Definindo o separador a usar para delimitar cada palavra 

#Por padrão, a função scan() armazena cada palavra numa posição de um vetor de caracteres. Cada posição é delimitada por um separador. Por padrão, 
#esse separador é um espaço em branco. Assim, durante a leitura do arquivo, quando se encontra um espaço em branco, cria-se uma nova posição de vetor.
#O fim da linha também gera nova posição.  

  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Subdiretorios\\dir5\\arquivo_texto_alpha.txt", what = "character", sep = ",") 

#Para que o vetor tenha como cada posição cada linha, definimos o separador como o caractere de nova linha '\n'

  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Subdiretorios\\dir5\\arquivo_texto_alpha.txt", what = "character", sep = "\n") 

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Definindo o número de linha que devemos pular até começar a capturar os valores

#Aqui, pularemos a primeira linha

  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Subdiretorios\\dir5\\arquivo_texto_alpha.txt", what = "character", skip = 1) 

#-----------------------------------------------------------------------------------------------------------------------------------------------------

  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Subdiretorios\\dir5\\arquivo_texto_alpha.txt", what = "character", skip = 1)  

#----------------------------------------------------------------------------------------------------------------------------------------------------- 