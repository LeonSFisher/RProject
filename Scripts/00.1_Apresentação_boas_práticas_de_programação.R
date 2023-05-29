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