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
      escreva("Digite um n�mero |+|-|: ")
      leia(n)
      escreval("---------------------------")
      se (n >= 0) entao
         se (n % 2 = 0) entao
            escreval("O n�mero", n, " � POSITIVO e PAR.")
         senao
              escreval("O n�mero", n, " � POSITIVO e �MPAR.")
         fimse
      senao
           se (n % 2 = 0) entao
              escreval("O n�mero", n, " � NEGATIVO e PAR.")
           senao
                escreval("O n�mero", n, " � NEGATIVO e �MPAR.")
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
