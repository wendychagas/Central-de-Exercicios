algoritmo "AnalisadorDeValores"
var
   n: Inteiro
   resp: Caracter
procedimento Topo()
inicio
      escreval("===========================")
      escreval("-  ANALISADOR de VALORES  -")
      escreval("===========================")
      escreval()
fimprocedimento

procedimento Finalizar()
inicio
      escreval("===============================")
      escreval("         Encerrando...         ")
      escreval("===============================")
fimprocedimento

inicio
   repita
      Topo()
      escreva("* Digite um número: ")
      leia(n)
      escreval()
      se (n >= 0) entao
         se (n % 2 = 0) entao
            escreval("O número |", n, " | é positivo e par.")
         senao
              escreval("O número |", n, " | é positivo e ímpar.")
         fimse
      senao
           se (n % 2 = 0) entao
              escreval("O número", n, " é negativo e par.")
           senao
                escreval("O número |", n, " | é negativo e ímpar.")
           fimse
      fimse
      escreval()
      escreval("---------------------------")
      escreva("* Continuar |s| |n|: ")
      leia(resp)
      limpatela
   ate(resp = "n")
   Finalizar()
fimalgoritmo
