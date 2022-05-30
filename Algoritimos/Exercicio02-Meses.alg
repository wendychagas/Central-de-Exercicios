algoritmo "Meses"
var
mes, resp: Caracter
procedimento Topo()
inicio
      escreval("===================")
      escreval("Exercicio 2 - Meses")
      escreval("===================")
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
      escreval("---------------------------")
      escreval("* Instruções")
      escreval("* Digie o mês |1-12|")
      escreval("---------------------------")
      escreva("* Escolha -> ")
      leia(mes)
      escolha mes
      caso "1"
           escreval()
           escreval("* JANEIRO")
      caso "2"
           escreval()
           escreval("* FEVEREIRO")
      caso "3"
           escreval()
           escreval("* MARCO")
      caso "4"
           escreval()
           escreval("* ABRIL")
      caso "5"
           escreval()
           escreval("* MAIO")
      caso "6"
           escreval()
           escreval("* JUNHO")
      caso "7"
           escreval()
           escreval("* JULHO")
      caso "8"
           escreval()
           escreval("* AGOSTO")
      caso "9"
           escreval()
           escreval("* SETEMBRO")
      caso "10"
           escreval()
           escreval("* OUTUBRO")
      caso "11"
           escreval()
           escreval("* NOVEMBRO")
      caso "12"
           escreval()
           escreval("* DEZEMBRO")
      outrocaso
               escreval()
               escreval("* Opção inválida. Tente novamente.")
      fimescolha
      escreval()
      escreval("---------------------------")
      escreva("* Continuar |s| |n|: ")
      leia(resp)
      limpatela
   ate(resp = "n")
   Finalizar()
fimalgoritmo
