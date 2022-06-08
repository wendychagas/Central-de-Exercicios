algoritmo "Pesquisa Binária"
//--------------------------------------------------------------
procedimento Topo()
inicio
      escreval("=================================")
      escreval(" Exercicio 11 - Pesquisa Binária ")
      escreval("=================================")
      escreval()
fimprocedimento
//--------------------------------------------------------------
procedimento Finalizar()
inicio
      escreval("==================================")
      escreval("           Encerrando...          ")
      escreval("==================================")
fimprocedimento
//--------------------------------------------------------------
procedimento pesquisaBinaria()
inicio
      para i <- 1 ate 10 faca
           escreva("* Nome: ")
           leia(vetNome[i])
      fimpara
      
      //Ordenação;
      para i <- 1 ate 9 faca
          para j <- i + 1 ate 10 faca
               se (vetNome[i] > vetNome[j]) entao
                  aux <- vetNome[i]
                  vetNome[i] <- vetNome[j]
                  vetNome[j] <- aux
               fimse
          fimpara
      fimpara
      
      //Exibir Ordenação;
      para i <- 1 ate 10 faca
           escreval(vetNome[i])
      fimpara
      
      //Pesquisa;
      resp <- "s"
      enquanto (resp = "s") faca
         escreval()
         escreva("* Localizar: ")
         leia(pesq)
         inicial <- 1
         final <- 10
         acha <- falso
         enquanto (inicial <= final) e (acha = falso) faca
            meio <- (inicial + final) div 2
            se (pesq = vetNome[meio]) entao
               acha <- verdadeiro
            senao
                 se (pesq < vetNome[meio]) entao
                    final <- meio - 1
                 senao
                      inicial <- meio + 1
                 fimse
            fimse
         fimenquanto
         se (acha = verdadeiro) entao
            escreval()
            escreval("* ", pesq, " foi localizado na posição ", meio, ".")
         senao
              escreval()
              escreval("* ", pesq, " não foi localizado.")
         fimse
         escreval()
         escreval("___________________")
         escreva("* Continuar? |s|n|: ")
         leia(resp)
         limpatela
         Finalizar()
      fimenquanto
fimprocedimento
//--------------------------------------------------------------
var
   vetNome: vetor[1..10] de Caracter
   i, j, inicial, final, meio: Inteiro
   resp, pesq, aux: Caracter
   acha: Logico
inicio
Topo()
pesquisaBinaria()
fimalgoritmo
