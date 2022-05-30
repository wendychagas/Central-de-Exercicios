algoritmo "Comparador"
var
   va, vb: Inteiro
   resp: Caracter
procedimento Topo()
inicio
      escreval("========================")
      escreval("Exercicio 4 - Comparador")
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
      escreval()
      escreval("---------------------------")
      escreva("* Continar |s| |n|: ")
      leia(resp)
      limpatela
   ate(resp = "N")
   escreval()
   Finalizar()
fimalgoritmo
