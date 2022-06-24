algoritmo "Fatorial"
//
funcao FuncaoFatorial(V: Inteiro): Inteiro
var
   R, C: Inteiro
inicio
      R <- 1
      para C <- 1 ate V faca
           R <- R * C
      fimpara
      retorne R
fimfuncao

procedimento Fatorial()
var
   nFat, rFat: Inteiro
inicio
      repita
           limpatela
           Topo()
           escreva("* Informe o número do fatorial: ")
           leia(nFat)
           escreval()
           rFat <- FuncaoFatorial(nFat)
           escreval("* O fatorial de", nFat, "! =", rFat)
           escreval("--------------------------")
           escreva("* Continuar Fatorando? |s| |n|: ")
           leia(respCont)
         ate(respCont = "N")
         limpatela
         Finalizar()
fimprocedimento
//
procedimento Topo()
inicio
      escreval("=======================")
      escreval("Exercicio 12 - Fatorial")
      escreval("=======================")
      escreval()
fimprocedimento
//
procedimento Finalizar()
inicio
      escreval("===========================")
      escreval("       Encerrando...       ")
      escreval("===========================")
fimprocedimento
//
var
   respCont: Caracter
inicio
Fatorial()
fimalgoritmo
