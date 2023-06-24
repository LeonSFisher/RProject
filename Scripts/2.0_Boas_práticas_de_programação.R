######################################################################################################################################################
######################################################################################################################################################

#BOAS PRÁTICAS DE PROGRAMAÇÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#BOAS PRÁTICAS DE PROGRAMAÇÃO

#Utilizar sempre comentários. 

#Os comentários são feitos com o símbolo de '#'. Ao chegar a um símbolo de '#', o R ignorará aquela linha completamente e prosseguirá com a execução 
#na linha seguinte. Os comentários podem ser utilizados para explicar seções do código e para anular comandos durante a fase de testes do script. É
#bom lembrar que, durante toda a nossa vida, trabalharemos em muitos scripts e raramente nos lembraremos do que nos motivou a escrever um código de 
#uma certa forma quando voltarmos a ele depois de muito tempo. Com isso, os comentários servem para nos ajudar a rememorar o que está sendo feito ou 
#mesmo para justificar o motivo de o código ser do jeito que é. Colegas também poderão trabalhar num código iniciado por você e eles precisarão que
#haja entendimento de todo o processamento que o script executa. Com bons comentários explicativos, tudo fica facilitado.

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Utilizar, quando possível, indentações

#Indentações servem para transmitir clareza ao código. Trata-se do uso de tabulações de uma linha para outra afim de espaçar o código horizontalmente 
#e deixa-lo mais legível. Às vezes, é também uma boa prática deixar linhas de código em branco entre linhas de código sucessivas. Isso nos permite 
#identificar, apenas olhando, o escopo de funções, loopings, condicionais etc., gerando organização para o script, consequentemente, facilitar para
#que o código seja facilmente compreendido por colegas. Para a realização de identação automática, selecionamos o trecho de código que desejamos 
#indentar e pressionamos o comando de atalho Ctrl + i.

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Limpeza do console

#Quase sempre, o console ficará lotado de saídas de códigos. Com isso, pode começar a ficar confusa a identificação e visualização de resultados que
#foram obtidos anteriormente. Para lidar com isso, quando possível, podemos limpar o console para despoluir a visualização da saída com o atalho 
#(ctrl + l). Muitas funções do R possuem um parâmetro chamado 'quietly' que evita que a função fique retornando dados desnecessários no console. 
#Outras funçõesbpossui um parâmetro chamado 'echo' que permite determinar se os dados devem ser exibidos após o processamento dos dados. Utilizar 
#esses parâmetrosbde forma inteligente pode fazer o processamento de nosso script retornar de forma limpa e sem muita confusão desnecessária.

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Nomeando objetos de forma inteligente

#Os objetos que utilizamos em R devem possuir nomes significativos para que nós (e outros) possamos entender o que está sendo feito depois de muito
#tempo longe do código ou quando pegarmos códigos de terceiros. Para isso, adotaremos a seguinte prática: nomear objetos efêmeros (aqueles usados 
#dentro de uma mesma seção) com nomes curtos para facilitar, e nomear objetos persistentes (aqueles usados entre seções distintas, ou seja, possuem
#utilização frequente), com nomes significativos que transmitam sua utilidade.

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Bom uso de recursos

#Nunca deixar de descarregar pacotes de funções depois de utilizados para evitar conflitos com funções que tenham o mesmo nome, mas que pertençam a 
#outros pacotes e também para não gerar redução de desempenho por sobrecarga da memória. Também é conveniente Utilzar ao máximo funções otimizadas 
#que utilizam a técnica da vetorização para ganho de eficiência. A vetorização evita a utilização de laçõs de repetição na medida que as próprias 
#funções já aplicam o procedimento para todos os valores de um vetor ou de uma matriz, por exemplo.

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Organização de arquivos

#Separar scripts por projeto, não por tema. Dentro de um mesmo projeto podem residir vários scripts para fins diversos e que tenham relevância para
#aquilo que se pretende com o projeto. Não esquecer de salvar o workspace para caso de precisar continuar o trabalho depois.

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Nomear funções com camel-case

#Funções nomeadas com camel case são melhores para claramente distinguir o que é uma função e o que é uma variável comum. Assim, basta bater os olhos
#para sabermos do que se trata.

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Indicar a origem das funções

#Apesar de ser um pouco menos eficiente, comvém indicar o pacote de onde vem a função que está sendo utilizada com '::' principalmente quando nós 
#utilizamos muitos pacotes. Isto nos permite identificar de que pacote é a função, além de que evita conflitos pois podemos ter funções de mesmo nome 
#em pacotes distintos, mas não funções com mesmo nome dentro de um mesmo pacote.

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Evitar usar a função attach()

#Quando utilizada pode gerar muitas confusões. O ideal é sempre buscar o pacote quando ele for necessário. Neste aspecto, usar '::' para chamar a 
#função diretamente de dentro do pacote pode vir a calhar.

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Evitar atribuições da esquerda para a direita

#É interessante padronizar a forma de atribuir valores a objetos e melhor ainda usando a opção que seja a mais natural que é a atribuição de valores
#a objetos da direita para a esquerda.

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#Gerar retornos explícitos

#Na criação de funções, R pode retornar os valores calculados automaticamente dentro das funções. Esse valores são aqueles que estiverem na última
#linha do escopo da função. No entanto, é auspicioso retornar explicitamente o valor que se deseja retornar utilizando a função return(). Isto deixa
#claro para todos que lerem o código, o que se pretende com ele.

#-----------------------------------------------------------------------------------------------------------------------------------------------------