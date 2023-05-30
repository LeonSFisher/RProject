######################################################################################################################################################
######################################################################################################################################################

#APRESENTAÇÃO - BOAS PRÁTICAS DE PROGRAMAÇÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#BOAS PRÁTICAS DE PROGRAMAÇÃO

#Utilizar sempre comentários. 

#Os comentários são feitos com o símbolo de '#'. Ao chegar um símbolo de '#', o R ignorará aquela linha completamente e prosseguirá com a execução na 
#linha seguinte. Os comentários podem ser utilizados para explicar seções do código e para anular comandos durante a fase de testes do script.

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Utilizar, quando possível, indentações

#Indentações servem para promever clareza no código. Trata-se do uso de tabulações de uma linha para outra afim de espaçar o código horizontalmente e 
#deixa-lo mais legível. Às vezes, é uma boa prática deixar linhas de código em branco entre linhas de código sucessivas. Isso nos permite identificar,
#apenas olhando, o escopo de funções, loopings, condicionais etc., gerando organização para o código e, consequentemente, facilitar o entendimento e 
#manutenção do mesmo. Para a realização de identação automática, selecionamos o trecho de código que desejamos identar e pressionamos o comando de 
#atalho Ctrl + i.

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Limpeza do console

#Quase sempre, o console ficará lotado de saídas de códigos. Com isso pode começar a ficar confusa a identificação e visualização de resultados que
#foram obtidos anteriormente. Para isso, quando possível, podemos limpar o console para despoluir a visualização da saída com o atalho (ctrl + l).

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Nomeando objetos de forma inteligente

#Os objetos que utilizamos em R devem possuir nomes significativos para que nós (e outros) possamos entender o que está sendo feito depois de muito
#tempo longe do código ou quando pegarmos códigos de terceiros. Para isso, adotaremos a seguinte prática: nomear objetos efêmeros (aqueles usados 
#dentro de uma mesma seção) com nomes curtos para facilitar, e nomear objetos persistentes (aqueles usados entre seções distintas), ou seja, possuem
#utilização frequente, com nomes significativos que transmitam sua utilidade.

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Bom uso de recursos

#Nunca deixar de descarregar pacotes de funções depois de utilizados para evitar conflitos com funções que tenham o nome,mas que sejam oriundas de 
#outros pacotes e também por questões de redução de desempenho por sobrecarga da memória.

#Também é conveniente Utilzar ao máximo funções otimizadas que utilizam a técnica da vetorização para ganho de eficiência.

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Organização de arquivos

#Separar scripts por projeto, não por tema.

#Não esquecer de salva o workspace para caso de precisar continuar o trabalho depois.

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Nomear funções com camel case

#Funções nomeadas com camel case são melhores para claramente distinguir o que é uma função e o que é uma variável comum.

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Evitar usar a função attach()

#Quando utilizada pode gerar muitas confusões. O ideal é sempre buscar o pacote quando ele for necessário.

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Evitar atribuições da esquerda para a direita

#É interessante padronizar a forma de atribuir valores a objetos e melhor ainda usando a opção que seja a mais natural que é a atribuição de valores
#a objetos da direita para a esquerda.

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Gerar retornos explícitos

#Na criação de funções, R pode retornar os valores calculados automaticamente dentro das funções. Esse valores são aqueles que estiverem na última
#linha do escopo da função. No entanto, é auspicioso retornar explicitamnete o valor que se deseja retornar utilizando a função return().

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Indicar a origem das funções

#Apesar de ser um pouco menos eficiente, comvém indicar o pacote de onde vem a função com '::' principalmente quando utilizamos muitos pacotes. Isto
#nos permite identificar de que pacote é a função, além de que evita conflitos pois podemos ter funções de mesmo nome em pacotes distintos, mas não
#funções com mesmo nome dentro de um mesmo pacote.

#-----------------------------------------------------------------------------------------------------------------------------------------------------