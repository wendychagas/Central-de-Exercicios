algoritmo "Tabuada"
var
   cont, n, r, t: Inteiro
   resp: Caracter
procedimento Topo()
inicio
      escreval("=====================")
      escreval("Exercicio 1 - Tabuada")
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
      escreva("* Digite o tamanho da tabuada: ")
      leia(t)
      escreva("* Digite o número da tabuada: ")
      leia(n)
      escreval("---------------------------")
      enquanto (cont <= t) faca
         escreval(cont, " x", n, " =", r)
         r <- cont * n
         cont <- cont + 1
      fimenquanto
      escreval()
      escreval("---------------------------")
      escreva("* Continuar |s| |n|: ")
      leia(resp)
      limpatela
   ate(resp = "N")
   Finalizar()
fimalgoritmo
