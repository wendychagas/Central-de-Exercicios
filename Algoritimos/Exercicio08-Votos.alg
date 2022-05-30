algoritmo "Votação"
var
   quantE, i, c1, c2, c3: Inteiro
   escolher, resp, enter: Caracter
procedimento Topo()
inicio
      escreval("=====================")
      escreval("Exercicio 8 - Votação")
      escreval("=====================")
      escreval()
fimprocedimento

procedimento Finalizar()
inicio
      escreval("===========================")
      escreval("       Encerrando...       ")
      escreval("===========================")
fimprocedimento

procedimento Contabilizador()
inicio
      escreval()
      escreval("-----------")
      escreval("Contagem dos Votos")
      escreval()
      escreval("Candidato 1: ", c1)
      escreval("Candidato 2: ", c2)
      escreval("Candidato 3: ", c3)
      escreval()
fimprocedimento

inicio
   repita
      c1 <- 0
      c2 <- 0
      c3 <- 0
      Topo()
      escreva("Informe o número de eleitores: ")
      leia(quantE)
      
      para i <- 0 ate quantE faca
           Contabilizador()
           escreval("----------")
           escreval("Candidatos")
           escreval()
           escreval("|1| Candidato 1")
           escreval("|2| Candidato 2")
           escreval("|3| Candidato 3")
           escreval()
           leia(escolher)
           escolha escolher
           caso "1"
                c1 <- c1 + 1
           caso "2"
                c2 <- c2 + 1
           caso "3"
                c3 <- c3 + 1
           outrocaso
                    escreval()
                    escreva("Opção inválida. Pressione ENTER.")
                    leia(enter)
           fimescolha
           limpatela
           Topo()
      fimpara
      escreval()
      escreval("Total de Eleitores: ", quantE)
      escreval("--------------------")
      escreval()
      escreva("Continuar |s| |n|: ")
      leia(resp)
      limpatela
   ate(resp = "n")
fimalgoritmo
