#salvando objetos
save(objetos, file = "arquivo.Rdata")

#carregando arquivos
load(file = "arquivo.Rdata")

#pacotes de dados disponíveis no R
#descobrir pacotes
data()
data("airquality")

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

#operador in
vetor4 = 3:21

x = 0
y = 7

print(x %in% vetor4)
print(y %in% vetor4)

#BUSCA
dev.off()

#data
date()

#Verificando instalação

any(grep('xlsx', install.packages()))

dev.copy()

attributes()

Sys.time()

format()

format(Sys.time(), "%H")

is.atomic()

class()

rep()

sweep()

agrep()

grep()

aggregate()

by()
