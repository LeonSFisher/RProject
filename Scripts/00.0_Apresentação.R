######################################################################################################################################################
######################################################################################################################################################

#APRESENTAÇÃO

######################################################################################################################################################
######################################################################################################################################################

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#HISTÓRIA DO R

#O R é um dialeto da linguagem S que foi originalmente desenvolvida por John Chambers na Bell Telephone Laboratories que fazia parte da AT&T Corp.
#R também possui influência da linguagem Scheme. Assim, é muito similar em aparência com S, mas sua implementação e semântica é derivada de Scheme.

#John Chambers assim resumiu a linguagem S: 
#“We wanted users to be able to begin in an interactive environment, where they did not consciously think of themselves as programming.
#Then as their needs became clearer and their sophistication increased, they should be able to slide gradually into programming, when the
#language and system aspects would become more important”.

#Um dos problemas de S é que ela estava limitada ao pacote comercial S-PLUS. Assim, R começou a ser desenvolvida por dois pesquisadores
#chamados Robert Gentleman e Ross Ihaka (R & R) na Universidade de Aukland, Nova Zelândia em 1991.

#O primeiro relato da distribuição do R foi em 1993 no StatLib, um sistema de distribuição de softwares estatísticos.

#Com o incentivo de um dos primeiros usuários deste programa, Martin Mächler (do Instituto Federal de Tecnologia de Zurique, na Suíça),
#“R & R”, em 1995, lançaram o código fonte do R, disponível por ftp.

#Em 1997, foi formado um grupo de profissionais que têm acesso ao código fonte do R, possibilitando, assim, a atualização mais rápida do software. 
#Desde então, o R vem ganhando cada vez mais adeptos em todo o mundo.

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#VANTAGENS DO R

#Gratuito (Licença Pública Geral (GNU) da Free Software Foundation).

#Grande comunidade auxiliando o aprendizado de novos usuários.

#Facilidade em se encontrar material escrito ou digital.

#Multiplataforma - Pode ser usado nos sistemas operacionais Windows, Linux e Mac OS.

#Amplamente utilizado no meio acadêmico e se popularizando no mercado privado.

#Possui uma vastidão de pacotes que facilitam as tarefas.

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#CARACTERÍSTICAS DO R

#Linguagem interpretada, mas pode incorporar códigos compilados de outras linguagens.

#Multiparadigma - pode ser usada de forma orientada a objetos, estruturada, funcional etc.

#Linguagem de script - permite que partes do código sejam executadas isoladamente.

#É case-sensitive - diferencia letras maiúsculas das minúsculas.

#É uma linguagem vetorial e este fato é importante para a compreensão de seu funcionamento.

#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#BOAS PRÁTICAS
  
#Utilizar sempre comentários para explicar seções do código. Os comentários são executados após um símbolo de '#' e vão até o fim da linha.

#Utilizar, quando possível, indentações para promever clareza no código.
  
#Nomear objetos efêmeros (aqueles usados dentro de uma mesma seção) com nomes curtos para facilitar.
  
#Nomear objetos persistentes (aqueles usados entre seções distintas), ou seja, possuem utilização frequente, com nomes significativos que 
#transmitam sua utilidade.
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#EXPRESSÕES
  
#Para colocar duas expressões ou mais numa mesma linha, usamos o ponto-e-vírgula.  

#Usualmente, as expressões são colocadas em sequência da sequinte forma:

  vetor_1 <- c(2, 3, 0); 
  
  vetor_2 <- c(-2, -3, 0); 
  
#Mas podem ser expressas numa mesma linha:  
  
  vetor_1 <- c(2, 3, 0); vetor_2 <- c(-2, -3, 0)
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#AVISOS
  
#Quando recebermos uma mensagem do R informando que nós temos avisos 'warnings' aós alguma operação, podemos verificar quais são.
  
#Quando temos um erro, a função para a sua execução, mas quando temos um aviso, a função executa, mas alerta para algo errado que pode ter acontecido.
  
#Para isso, usamos a função warnings(). Após chamarmos a função, R mostrará quais são os avisos.
  
  warnings()  
  
  
  
#-----------------------------------------------------------------------------------------------------------------------------------------------------