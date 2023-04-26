
#com o parâmetro stringsAsFactor = FALSE, valores repetidos não serão tratados como factors
read.table(caminho, header = T, sep = ";", stringsAsFactors = FALSE)

#com o parâmetro stringsAsFactor = FALSE, valores repetidos não serão tratados como factors
tabelalimpa <- read.table(caminho, header = T, sep = ";", stringsAsFactors = FALSE, col.names = colx)

#salvando objetos
save(objetos, file = "arquivo.Rdata")

#carregando arquivos
load(file = "arquivo.Rdata")

#pacotes de dados disponíveis no R
#descobrir pacotes
data()

#basesde dados de um pacote específico
data(package = "dplyr")

#FUNÇÕES PARA REALIZAR OPERAÇÕES DE CASTING
#converte caractere para inteiro ASCII
charToRaw()

#Mostra a estrutura interna de um objeto
str()

#verificar se é um vetor
unique()

#mostra um resumo de um conjunto de dados
summary()

################################################################################
################################################################################
#operador in
vetor4 = 3:21

x = 0
y = 7

print(x %in% vetor4)
print(y %in% vetor4)

################################################################################
################################################################################
#DIRETÓRIOS
#sabero o diretório onde estamos

#ver todos os arquivos do diretório
arquivos = dir()

print(arquivos)

################################################################################
################################################################################
#BUSCA
dev.off()

#FUNÇÕES PARA ARQUIVOS

#data
date()

#Verificando instalação

any(grep('xlsx', install.packages()))

#somacumulativa

cumsum(c(1, 2, 5, 6, 7))

dev.copy()


attributes()


data()
data("airquality")
