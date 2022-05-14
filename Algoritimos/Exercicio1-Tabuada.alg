algoritmo "Tabuada"
var
   c, n, r, t: Inteiro
   resp: Caracter
procedimento Topo()
inicio
      escreval("===============================")
      escreval("            TABUADA            ")
      escreval("===============================")
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
      escreva("* Escreva o limite da tabuada: ")
      leia(t)
      escreval()
      escreva("* Escreva o número da tabuada: ")
      leia(n)
      escreval()
      escreval("Resultado")
      escreval("-------------------------------")
      para c <- 1 ate t faca
           r <- c * n
           escreval(c, " x", n, " =", r)
      fimpara
      escreval("-------------------------------")
      escreva("Continuar? |s|n|: ")
      leia(resp)
      limpatela
   ate(resp = "n")
   Finalizar()
fimalgoritmo
