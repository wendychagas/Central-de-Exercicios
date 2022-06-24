algoritmo "Pesquisa Sequencial"
//---------------------------------------------------
procedimento Topo()
inicio
      escreval("==================================")
      escreval("Exercicio 10 - Pesquisa Sequencial")
      escreval("==================================")
      escreval()
fimprocedimento
//---------------------------------------------------
procedimento Finalizar()
inicio
      escreval("==================================")
      escreval("           Encerrando...          ")
      escreval("==================================")
fimprocedimento
//---------------------------------------------------
procedimento pesquisaSequencial()
inicio
      para i <- 1 ate 10 faca
           escreva("->", i, "º Nome: ")
           leia(vetNome[i])
      fimpara
      
      resp <- "S"
      enquanto (resp = "s") faca
         //inicio rotina pesquisa
         limpatela
         topo()
         escreva("* Pesquisar: ")
         leia(pesq)
         i <- 1
         acha <- falso
         enquanto (i <= 10) e (acha = falso) faca
            se (pesq = vetNome[i]) entao
               acha <- verdadeiro
            senao
                 i <- i + 1
            fimse
         fimenquanto
         se (acha = verdadeiro) entao
            escreval()
            escreval("-> | ", pesq, " | foi encontrado na posição |", i, " |.")
         senao
              escreval()
              escreval("-> |", pesq, "| não foi encontrado.")
         fimse
         escreval("_________________")
         escreva("Continuar? |s|n|: ")
         leia(resp)
      fimenquanto
fimprocedimento
//---------------------------------------------------
var
   vetNome: vetor[1..10] de Caracter
   i: Inteiro
   resp, pesq: Caracter
   acha: Logico
inicio
      Topo()
      pesquisaSequencial()
fimalgoritmo
