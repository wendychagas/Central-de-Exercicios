algoritmo "CalculadoraB�sica"
var
   v1, v2, r: Real
   op, resp: Caracter
procedimento Topo()
inicio
      escreval("=========================")
      escreval("Exercicio 3 - Calculadora")
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
      escreva("* Digite o 1� valor: ")
      leia(v1)
      escreva("* Escolha a opera��o: ")
      leia(op)
      escreva("* Digite o 2� valor: ")
      leia(v2)
      escreval()
      escreval("Resultado")
      escreval("----------------------")
      escolha op
      caso "+"
           r <- v1 + v2
           escreval(v1, " +", v2, " =", r)
      caso "-"
           r <- v1 - v2
           escreval(v1, " -", v2, " =", r)
      caso "*"
           r <- v1 * v2
           escreval(v1, " *", v2, " =", r)
      caso "/"
           r <- v1 / v2
           escreval(v1, " /", v2, " =", r)
      outrocaso
               escreval("* Opera��o inv�lida. Tente novamente.")
      fimescolha
      escreval()
      escreval("---------------------------")
      escreva("* Continuar? |s| |n|: ")
      leia(resp)
      limpatela
   ate(resp = "n")
   escreval()
   Finalizar()
fimalgoritmo
