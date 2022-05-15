algoritmo "CentralExercicios2"
// Central De Exercicios 2.0
// Wendy, 2022
var
   c1, c2, c3, votoN: Inteiro
   respMenu: Caracter
   
//Titulo
//------------------------------------------------------------------------------
procedimento TopoTitulo()
inicio
      escreval("===============================")
      escreval("    -CENTRAL de EXERCICIOS-    ")
      escreval("===============================")
      escreval()
fimprocedimento
//------------------------------------------------------------------------------

//Layout Fechamento
//------------------------------------------------------------------------------
procedimento Finalizar()
inicio
      limpatela
      escreval("===========================")
      escreval("       Encerrando...       ")
      escreval("===========================")
fimprocedimento
//------------------------------------------------------------------------------

//MenuPrincipal
//------------------------------------------------------------------------------
procedimento MenuPrincipal()
inicio
      c1 <- 0
      c2 <- 0
      c3 <- 0
      limpatela
      Topotitulo()
      escreval("|1| Exercicio 1 | Tabuada")
      escreval("|2| Exercicio 2 | Meses  ")
      escreval("|3| Exercicio 3 | Calculadora")
      escreval("|4| Exercicio 4 | Comparador")
      escreval("|5| Exercicio 5 | Analisador")
      escreval("|6| Exercicio 6 | Somador")
      escreval("|7| Exercicio 7 | Temperatura")
      escreval("|8| Exercicio 8 | Votação")
      escreval()
      escreval("|x| Para encerrar o sistema.")
      escreval("---------------------------")
      escreva("Decida sua escolha: ")
      leia(respMenu)
      escolha respMenu
      caso "1"
           Exercicio1()
      caso "2"
           Exercicio2()
      caso "3"
           Exercicio3()
      caso "4"
           Exercicio4()
      caso "5"
           Exercicio5()
      caso "6"
           Exercicio6()
      caso "7"
           Exercicio7()
      caso "8"
           Exercicio8()
      caso "x"
           Finalizar()
      outrocaso
               escreval()
               escreval("---------------------------")
               escreval("* Opção inválida.")
      fimescolha
fimprocedimento
//------------------------------------------------------------------------------

//Menu Auxiliar
//------------------------------------------------------------------------------
procedimento MenuNavegar()
var
inicio
      escreval()
      escreval("===================")
      escreval("  -MENU AUXILIAR-  ")
      escreval("===================")
      escreval("|1| Continuar")
      escreval("|2| Menu Principal")
      escreval()
      escreval("|x| Finalizar")
      escreval("-------------------")
fimprocedimento
//------------------------------------------------------------------------------

//Exercicio1 - Tabuada
//------------------------------------------------------------------------------
procedimento Exercicio1()
var
   cont, n, r, t: Inteiro
   resp, resp2: Caracter
inicio
      //Topo - Tabuada
      limpatela
      escreval("=====================")
      escreval("Exercicio 1 - Tabuada")
      escreval("=====================")
      escreval()

      //Processo - Tabuada
      cont <- 1
      escreva("* Digite o tamanho da tabuada: ")
      leia(t)
      escreva("* Digite o valor da tabuada: ")
      leia(n)
      escreval()
      enquanto (cont <= t) faca
         r <- cont * n
         escreval(cont, " x", n, " =", r)
         cont <- cont + 1
      fimenquanto

      //Processo - Menu Auxiliar
      MenuNavegar()
      escreva("* Decida sua escolha: ")
      leia(resp2)
      escolha resp2
      caso "1"
           Exercicio1()
      caso "2"
           MenuPrincipal()
      caso "x"
           Finalizar()
      outrocaso
               escreval()
               escreval("-------------------")
               escreval("* Opção inválida.")
      fimescolha
fimprocedimento
//------------------------------------------------------------------------------

//Exercicio2 - Meses
//------------------------------------------------------------------------------
procedimento Exercicio2()
var
   mes, resp, resp2: Caracter
inicio

      //Topo - Meses
      limpatela
      escreval("===================")
      escreval("Exercicio 2 - Meses")
      escreval("===================")
      escreval()
      escreval("* Digite o mês |1| à |12|")
      escreval("---------------------------")
      escreva("* Decida sua escolha: ")
      leia(mes)

      //Processo - Meses
      escolha mes
      caso "1"
           escreval()
           escreval("| JANEIRO |")
      caso "2"
           escreval()
           escreval("| FEVEREIRO |")
      caso "3"
           escreval()
           escreval("| MARÇO |")
      caso "4"
           escreval()
           escreval("| ABRIL |")
      caso "5"
           escreval()
           escreval("| MAIO |")
      caso "6"
           escreval()
           escreval("| JUNHO |")
      caso "7"
           escreval()
           escreval("| JULHO |")
      caso "8"
           escreval()
           escreval("| AGOSTO |")
      caso "9"
           escreval()
           escreval("| SETEMBRO |")
      caso "10
           escreval()
           escreval("| OUTUBRO |")
      caso "11"
           escreval()
           escreval("| NOVEMBRO |")
      caso "12"
           escreval()
           escreval("| DEZEMBRO |")
      outrocaso
               escreval()
               escreval("-------------------")
               escreval("Opção inválida.")
      fimescolha

      //Processo  - Menu Auxiliar 2
      MenuNavegar()
      escreva("* Decida sua escolha: ")
      leia(resp2)
      escolha resp2
      caso "1"
           Exercicio2()
      caso "2"
           MenuPrincipal()
      caso "x"
           Finalizar()
      outrocaso
               escreval()
               escreval("-------------------")
               escreval("* Opção inválida.")
      fimescolha
fimprocedimento
//------------------------------------------------------------------------------

//Exercicio3 - Calculadora
//------------------------------------------------------------------------------
procedimento Exercicio3
var
   v1, v2, r: Real
   resp, resp2, op: Caracter
inicio
      //Topo - Calculadora
      limpatela
      escreval("=========================")
      escreval("Exercicio 3 - Calculadora")
      escreval("=========================")
      escreval()

      //Processo - Calculadora
      escreva("* Digite o 1º valor: ")
      leia(v1)
      escreva("* Digite a operação: ")
      leia(op)
      escreva("* Digite o 2º valor: ")
      leia(v2)
      escreval()
      escreval("Resultado: ")
      escreval()
      escolha op
      caso "+"
           r <- v1 + v2
           escreval(v1, " +", v2, " =", r)
      caso "-"
           r <- v1 - v2
           escreval(v1, " -", v2, " =", r)
      caso "*"
           r <- v1 * v2
           escreval(v1, " *", v2, " =", r)
      caso "/"
           r <- v1 / v2
           escreval(v1, " /", v2, " =", r)
      outrocaso
               escreval("Operação inválida.')
      fimescolha

      //Processo - Menu Auxiliar 2
      MenuNavegar()
      escreva("* Decida sua escolha: ")
      leia(resp2)
      escolha resp2
      caso "1"
           Exercicio3()
      caso "2"
           MenuPrincipal()
      caso "x"
           Finalizar()
      outrocaso
               escreval("-------------------")
               escreval("* Opção inválida.")
      fimescolha
fimprocedimento
//------------------------------------------------------------------------------

//Exercicio 4 - Comparador
//------------------------------------------------------------------------------
procedimento Exercicio4()
var
   va, vb: Inteiro
   resp2: Caracter
inicio
      //Topo - Comparador
      limpatela
      escreval("========================")
      escreval("Exercicio 4 - Comparador")
      escreval("========================")
      escreval()

      escreva("Valor A: ")
      leia(va)
      escreva("Valor B: ")
      leia(vb)
      se (va = vb) entao
         escreval()
         escreval("A e B são iguais.")
      fimse
      se (va > vb) entao
         escreval()
         escreval("A é maior que B.")
      fimse
      se (va < vb) entao
         escreval()
         escreval("A é menor que B.")
      fimse

      //Processo  - Menu Auxiliar 4
      MenuNavegar()
      escreva("* Decida sua escolha: ")
      leia(resp2)
      escolha resp2
      caso "1"
           Exercicio4()
      caso "2"
           MenuPrincipal()
      caso "x"
           Finalizar()
      outrocaso
               escreval()
               escreval("-------------------")
               escreval("* Opção inválida.")
      fimescolha
fimprocedimento
//------------------------------------------------------------------------------

//Exercicio 5 - Analisador
//------------------------------------------------------------------------------
procedimento Exercicio5()
var
   n: Inteiro
   resp, resp2: Caracter
inicio
      //Topo - Analisador
      limpatela
      escreval("========================")
      escreval("Exercicio 5 - Analisador")
      escreval("========================")
      escreval()

      //Processo - Analisador
      escreva("Digite um número |+|-|: ")
      leia(n)
      escreval("---------------------------")
      se (n >= 0) entao
         se (n % 2 = 0) entao
            escreval("O número", n, " é POSITIVO e PAR.")
         senao
              escreval("O número", n, " é POSITIVO e ÍMPAR.")
         fimse
      senao
           se (n % 2 = 0) entao
              escreval("O número", n, " é NEGATIVO e PAR.")
           senao
                escreval("O número", n, " é NEGATIVO e ÍMPAR.")
           fimse
      fimse

      //Processo  - Menu Auxiliar 5
      MenuNavegar()
      escreva("* Decida sua escolha: ")
      leia(resp2)
      escolha resp2
      caso "1"
           Exercicio5()
      caso "2"
           MenuPrincipal()
      caso "x"
           Finalizar()
      outrocaso
               escreval()
               escreval("-------------------")
               escreval("* Opção inválida.")
      fimescolha
fimprocedimento
//------------------------------------------------------------------------------

//Exercicio 6 - Somador
//------------------------------------------------------------------------------
procedimento Exercicio6()
var
   cont, s, quant, contAux: Inteiro
   resp2: Caracter
inicio
      //Topo - Somador
      limpatela
      escreval("=====================")
      escreval("Exercicio 6 - Somador")
      escreval("=====================")
      escreval()

      //Processo - Somador
      s <- 0
      escreva("* Valor inicial do somador: ")
      leia(cont)
      contAux <- cont
      escreva("* Valo final do somador: ")
      leia(quant)
      enquanto (cont <= quant) faca
               s <- s + cont
               cont <- cont + 1
      fimenquanto
      escreval()
      escreval("* A soma dos números entre", contAux, " e", quant, " =", s, ".")

      //Processo  - Menu Auxiliar 6
      MenuNavegar()
      escreva("* Decida sua escolha: ")
      leia(resp2)
      escolha resp2
      caso "1"
           Exercicio6()
      caso "2"
           MenuPrincipal()
      caso "x"
           Finalizar()
      outrocaso
               escreval()
               escreval("-------------------")
               escreval("* Opção inválida.")
      fimescolha
fimprocedimento
//------------------------------------------------------------------------------

//Exercicio 7 - Temperatura
//------------------------------------------------------------------------------
procedimento Exercicio7()
var
   tempC, tempF, convC, convF: Real
   resp2, respEscolha: Caracter
inicio
      //Topo - Temperatura
      limpatela
      escreval("=========================")
      escreval("Exercicio 7 - Temperatura")
      escreval("=========================")
      escreval()

      //Processo - Temperatura
      escreval("* Formato Atual")
      escreval()
      escreval("|1|  Celsius")
      escreval("|2|  Fahrenheit")
      escreval()
      escreval("|x|  Finalizar")
      escreval("---------------")
      leia(respEscolha)
      escolha respEscolha
      caso "1"
           limpatela
           escreval("========================================")
           escreval(" -Conversor de Celsius para Fahrenheit- ")
           escreval("========================================")
           escreval()
           escreva("* Informe a temperatura em C°: ")
           leia(tempC)

           convF <- tempC * 1.8 + 32
           escreval()
           escreval(tempC, "C° = ", convF:3:1, "F°")

      caso "2"
           limpatela
           escreval("========================================")
           escreval(" -Conversor de Fahrenheit para Celsius -")
           escreval("========================================")
           escreval()
           escreva("* Informe a temperatura em F°: ")
           leia(tempF)

           convC <- (5 * (tempF - 32) / 9)
           escreval()
           escreval(tempF, "F° = ", convC:3:1, "C°")
      caso "x"
           limpatela
           Finalizar()
      outrocaso
               escreval("---------------")
               escreval("Opção inválida.")
      fimescolha

      //Processo  - Menu Auxiliar 7
      MenuNavegar()
      escreva("* Decida sua escolha: ")
      leia(resp2)
      escolha resp2
      caso "1"
           Exercicio7()
      caso "2"
           MenuPrincipal()
      caso "x"
           Finalizar()
      outrocaso
               escreval()
               escreval("-------------------")
               escreval("* Opção inválida.")
      fimescolha
fimprocedimento
//------------------------------------------------------------------------------

//Exercicio 8 - Votação
//------------------------------------------------------------------------------
procedimento Exercicio8()
var
   quantE, totE, i: Inteiro
   escolherCand, resp2: Caracter
inicio
      TopoAuxVotacao()
      escreva("* Quantidade de eleitores: ")
      leia(quantE)
      para i <- 1 ate quantE faca
           limpatela
           TopoAuxVotacao()
           ContadorVotos()
           escreval("----------")
           escreval("* Candidatos")
           escreval()
           escreval("|1| Candidato A")
           escreval("|2| Candidato B")
           escreval("|3| Candidato C")
           escreval("| | Para anular")
           escreval()
           leia(escolherCand)
           escolha escolherCand
           caso "1"
                c1 <- c1 + 1
           caso "2"
                c2 <- c2 + 1
           caso "3"
                c3 <- c3 + 1
           outrocaso
                    votoN <- votoN + 1
           fimescolha
           limpatela
           TopoAuxVotacao()
      fimpara
      totE <- c1 + c2 + c3 + votoN
      escreval("* Total de Eleitores: ", totE)
      escreval("--------------------")
      escreval()
      escreval("* Total de votos do Candidato A: ", c1)
      escreval("* Total de votos do Candidato B: ", c2)
      escreval("* Total de votos do Candidato C: ", c3)
      escreval("* Total de votos nulos: ", votoN)

      //Processo  - Menu Auxiliar 8
      MenuNavegar()
      escreva("* Decida sua escolha: ")
      leia(resp2)
      escolha resp2
      caso "1"
           Exercicio8()
      caso "2"
           MenuPrincipal()
      caso "x"
           Finalizar()
      outrocaso
               escreval()
               escreval("-------------------")
               escreval("* Opção inválida.")
      fimescolha
fimprocedimento
//------------------------------------------------------------------------------

//Processo para exibir votos simultaneamente após votar
//------------------------------------------------------------------------------
procedimento ContadorVotos()
inicio
      escreval("-----------")
      escreval("* Contagem dos Votos")
      escreval()
      escreval("* Candidato A: ", c1)
      escreval("* Candidato B: ", c2)
      escreval("* Candidato C: ", c3)
      escreval("* Nulos:       ", votoN)
      escreval()
fimprocedimento
//------------------------------------------------------------------------------

//Topo Auxiliar para Exercicio 8 - Votação
//------------------------------------------------------------------------------
procedimento TopoAuxVotacao()
inicio
      limpatela
      escreval("=====================")
      escreval("Exercicio 8 - Votação")
      escreval("=====================")
      escreval()
fimprocedimento
//------------------------------------------------------------------------------

// Seção de Comandos
//------------------------------------------------------------------------------
inicio
TopoTitulo()
MenuPrincipal()
fimalgoritmo

