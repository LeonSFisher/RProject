######################################################################################################################################################
######################################################################################################################################################

#ENTRADA DE DADOS - scan()

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#LER VALORES DO TECLADO COM scan()

#Outra forma de ler dados do teclado é com a função scan()

#A função scan() armazena os valores num vetor. Após terminar de digitar os dados, precione ENTER uma última vez para finalizar. Sem parâmetros, a 
#função scan() recebe dados da entrada padrão.

  scan()

#Ou, explicitando o parâmetro vazio, resulta no mesmo efeito:

  scan(file = "")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#A função scan() também pode ser utilizada para ler arquivos
  
  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Arquivos\\Arquivos_usados_scripts\\tabela_numeros.txt")

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Por padrão, a função scan() espera ler valores reais do arquivo. Para mudar isso, utilizamos o parâmetro 'what' para especificar o tipo de dado
#que queremos que seja lido do arquivo.

  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Arquivos\\Arquivos_usados_scripts\\lorem_ipsum_bloco_de_notas.txt", what = "character")
  
#Se colocarmos o parâmetro 'what' para 'character' quando lemos arquivos de dados numéricos, não receberemos erros pois dos dados numéricos poder
#sofrer coerção para caracteres, mas o contrário não ocorre.
  
  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Arquivos\\Arquivos_usados_scripts\\tabela_numeros.txt", what = "character")

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Removendo aviso de dados lidos
  
#Ao ler uma arquivos, sempre nos é retornada a quantidade de dados lidos do arquivo. Para omitir essa informação, utilizamos o parâmetro 'quiet' que,
#por padrão, é FALSE.
  
#Omitindo o parâmetro
  
  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Arquivos\\Arquivos_usados_scripts\\lorem_ipsum_bloco_de_notas.txt",what = "character") 
  
#Explicitando o parâmetro
  
  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Arquivos\\Arquivos_usados_scripts\\lorem_ipsum_bloco_de_notas.txt",what = "character", quiet = FALSE) 
  
#Utilizando o valor TRUE para omitir a informação
  
  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Arquivos\\Arquivos_usados_scripts\\lorem_ipsum_bloco_de_notas.txt",what = "character", quiet = TRUE) 

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Definindo um limite de palavras a serem lidas 
  
#Se o parâmetro 'nmax' for omitido ou se não for positivo, o arquivo será lido até o final

#Lendo apenas três palavras

  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Arquivos\\Arquivos_usados_scripts\\lorem_ipsum_bloco_de_notas.txt", what = "character", nmax = 30)
  
  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Arquivos\\Arquivos_usados_scripts\\lorem_ipsum_bloco_de_notas.txt", what = character(), nmax = 30)
  
#Como alias, podemos usar o parâmetro 'n'
  
  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Arquivos\\Arquivos_usados_scripts\\lorem_ipsum_bloco_de_notas.txt", what = "character", n = 30)
  
  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Arquivos\\Arquivos_usados_scripts\\lorem_ipsum_bloco_de_notas.txt", what = character(), n = 30)

#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Podemos definir o número de linhas a ler.

#Abaixo, definimos apenas uma linha. O número de palavras a ser lido em nmax é maior do que a linha comporta, mas o número máximo de linhas será
#obedecido pois tem prioridade sobre nmax. Assim, só serão lidas 16 palavras se na primeira linha tiver uma quantidade de palavras maior ou igual 
#a isso. Resumindo, significa: leia no máximo dezesseis palavras de no máximo 1 linha.

  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Arquivos\\Arquivos_usados_scripts\\lorem_ipsum_bloco_de_notas.txt", what = "character", nmax = 16,
                  nlines = 1)  
  
#Para ler das 3 primeiras linhas
  
  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Arquivos\\Arquivos_usados_scripts\\lorem_ipsum_bloco_de_notas.txt", what = "character", nmax = 16,
                  nlines = 3)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Eliminando linhas em branco
  
#Se o arquivo de texto tiver linhas em branco, por padrão elas serão ignoradas
  
  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Arquivos\\Arquivos_usados_scripts\\lorem_ipsum_bloco_de_notas.txt", what = "character")
  
#Podemos definir se queremos ignorá-las ou não com o parâmtero 'blank.lines.skip', por padrão, ele é TRUE. Usando o valor FALSE, as linhas serão
#capturadas como valores "vazios" ou seja, "".
  
  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Arquivos\\Arquivos_usados_scripts\\lorem_ipsum_bloco_de_notas.txt", what = "character",
                  blank.lines.skip = TRUE)
  
  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Arquivos\\Arquivos_usados_scripts\\lorem_ipsum_bloco_de_notas.txt", what = "character",
                  blank.lines.skip = FALSE)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------  
#Definindo o separador a usar para delimitar cada palavra 

#Por padrão, a função scan() armazena cada palavra numa posição de um vetor de caracteres. Cada posição é delimitada por um separador. Por padrão, 
#esse separador é um espaço em branco. Assim, durante a leitura do arquivo, quando se encontra um espaço em branco, cria-se uma nova posição de vetor.
#O fim da linha também gera nova posição.  

  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Arquivos\\Arquivos_usados_scripts\\texto_curto.txt", what = "character", sep = ",") 
  
  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Arquivos\\Arquivos_usados_scripts\\texto_curto.txt", what = "character", sep = " ") 

#Para que o vetor tenha como cada posição cada linha, definimos o separador como o caractere de nova linha '\n'

  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Arquivos\\Arquivos_usados_scripts\\texto_curto.txt", what = "character", sep = "\n") 

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Definindo o número de linha que devemos pular até começar a capturar os valores

#Aqui, pularemos a primeira linha

  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Arquivos\\Arquivos_usados_scripts\\texto_curto.txt", what = "character", skip = 1)
  
  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Arquivos\\Arquivos_usados_scripts\\texto_curto.txt", what = "character", skip = 1, sep = "\n") 

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Definindo o separador decimal
  
#No caso de estarmos lendo valores numéricos, podemos definir qual caractere será tratado como o ponto decimal.
  
  arquivo <- scan(file = "E:\\GITHUB\\RProject\\Arquivos\\Arquivos_usados_scripts\\tabela_decimais.txt", dec = ",") 
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------