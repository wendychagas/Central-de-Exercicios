algoritmo "Analisador"
var
   n: Inteiro
   resp: Caracter
procedimento Topo()
inicio
      escreval("========================")
      escreval("Exercicio 5 - Analisador")
      escreval("========================")
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
      escreval()
      escreval("---------------------------")
      escreva("Continuar |s| |n|: ")
      leia(resp)
      limpatela
   ate(resp = "n")
   Finalizar()
fimalgoritmo
