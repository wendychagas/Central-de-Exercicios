algoritmo "Temperatura"
var
   tempC, tempF, convC, convF: Real
   respEscolha, resp: Caracter
procedimento Topo()
inicio
      escreval("=========================")
      escreval("Exercicio 7 - Temperatura")
      escreval("=========================")
      escreval()
fimprocedimento

procedimento Finalizar()
inicio
      escreval("===========================")
      escreval("       Encerrando...       ")
      escreval("===========================")
fimprocedimento

inicio
   repita
      Topo()
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
      escreval()
      escreval("---------------------------")
      escreva("* Continuar |s| |n|: ")
      leia(resp)
      limpatela
   ate(resp = "N")
   Finalizar()
fimalgoritmo
