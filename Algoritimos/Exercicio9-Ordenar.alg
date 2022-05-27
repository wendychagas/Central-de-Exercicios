algoritmo "Ordenar"
//--------------------------------------
procedimento Topo()
inicio
      escreval("=====================")
      escreval("Exercicio 9 - Ordenar")
      escreval("=====================")
      escreval()
fimprocedimento
//--------------------------------------
procedimento Finalizar()
inicio
      escreval("===========================")
      escreval("       Encerrando...       ")
      escreval("===========================")
fimprocedimento
//--------------------------------------
procedimento MenuOrdem()
inicio
      escreval("|1| Ordem Crescente")
      escreval("|2| Ordem Decrescente")
      escreval()
      escreval("|x| Finalizar")
      escreval("_____________")
      escreva("* Escolha -> ")
      leia(respMenu)
      escolha respMenu
      caso "1"
           limpatela
           Topo()
           ordemCrescente()
      caso "2"
           limpatela
           Topo()
           ordemDecrescente()
      caso "X"
           limpatela
           Finalizar()
      outrocaso
      fimescolha
fimprocedimento
//--------------------------------------
procedimento ordemCrescente()
inicio
   repita
      escreval("----------------")
      escreval("Ordem Crescente ")
      escreval("----------------")
      escreval()
      para i <- 1 ate 10 faca
           escreva(i, "° valor: ")
           leia(ordemVet[i])
      fimpara

      para i <- 1 ate 9 faca
          para j <- i + 1 ate 10 faca
               se (ordemVet[i] > ordemVet[j]) entao
                  aux <- ordemVet[i]
                  ordemVet[i] <- ordemVet[j]
                  ordemVet[j] <- aux
               fimse
          fimpara
      fimpara
      escreval()
      para i <- 1 ate 10 faca
           escreva("{",ordemVet[i], " }")
      fimpara
      escreval()
      escreval("________________________")
      escreva("Deseja continuar? |s|n|: ")
      leia(respCont)
      limpatela
      Topo()
      MenuOrdem()
   ate(respCont = "n")
fimprocedimento
//--------------------------------------
procedimento ordemDecrescente()
inicio
   repita
      escreval("------------------")
      escreval("Ordem Decrescente ")
      escreval("------------------")
      escreval()
      para i <- 1 ate 10 faca
           escreva(i, "° valor: ")
           leia(ordemVet[i])
      fimpara

      para i <- 1 ate 9 faca
          para j <- i + 1 ate 10 faca
               se (ordemVet[i] < ordemVet[j]) entao
                  aux <- ordemVet[i]
                  ordemVet[i] <- ordemVet[j]
                  ordemVet[j] <- aux
               fimse
          fimpara
      fimpara
      escreval()
      para i <- 1 ate 10 faca
           escreva("{",ordemVet[i], " }")
      fimpara
      escreval()
      escreval("________________________")
      escreva("Deseja continuar? |s|n|: ")
      leia(respCont)
      limpatela
      Topo()
      MenuOrdem()
   ate(respCont = "n")
fimprocedimento
//--------------------------------------
var
   ordemVet: vetor[1..10] de Inteiro
   i, j, aux: Inteiro
   respMenu, enter, respCont: Caracter
inicio
      limpatela
      Topo()
      MenuOrdem()
fimalgoritmo
