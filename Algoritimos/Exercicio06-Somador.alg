algoritmo "Somador"
var
   cont, s, quant: Inteiro
   resp: Caracter
procedimento Topo()
inicio
      escreval("=====================")
      escreval("Exercicio 6 - Somador")
      escreval("=====================")
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
      cont <- 1
      s <- 0
      escreva("* Digite a quantidade de somas: ")
      leia(quant)
      enquanto (cont <= quant) faca
               s <- s + cont
               cont <- cont + 1
      fimenquanto
      escreval()
      escreval("* A soma dos números entre 1 e", quant, " =", s, ".")
      escreval()
      escreval("---------------------------")
      escreva("* Continuar |s| |n|: ")
      leia(resp)
      limpatela
   ate(resp = "N")
   Finalizar()
fimalgoritmo
