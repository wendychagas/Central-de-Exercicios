algoritmo "Exercicios de Fixação de Vetores"
//------------------------------------------------------------------------------
// Ler 20 elementos de uma matriz A tipo vetor e construir uma matriz B de mesma
// dimensão com os mesmos elementos de A acrescentados de mais 2. Colocar os
// elementos da matriz B em odem crescente. Montar uma rotina de pesquisa biná-
// ria, para pesquisar os elementos armazenados na matriz B.
//------------------------------------------------------------------------------
var
   vetA, vetB: vetor[1..10] de Inteiro
   i, j, aux, pesq, inicial, final, meio: Inteiro
   resp: Caracter
   acha: Logico
inicio
      // Vetor A;
      para i <- 1 ate 10 faca
           escreva("Vetor A | Posição", i, ": ")
           aleatorio on
           leia(vetA[i])
      fimpara
      escreval()
      aleatorio off
      
      // Vetor B <- Vetor A+2 - Print Vetor B;
      para i <- 1 ate 10 faca
           vetB[i] <- vetA[i] + 2
           escreval("Vetor B | Posição", i, ":", vetB[i])
      fimpara
      escreval()
      
      // Ordenar Vetor B;
      para i <- 1 ate 9 faca
           para j <- i + 1 ate 10 faca
                se (vetB[i] > vetB[j]) entao
                   aux <- vetB[i]
                   vetB[i] <- vetB[j]
                   vetB[j] <- aux
                fimse
           fimpara
      fimpara
      
      // Vetor B Ordenado;
      para i <- 1 ate 10 faca
           escreval("Vetor B | Crescente", i, ":", vetB[i])
      fimpara
      escreval()
      
      // Inicio da Rotina de Pesquisa Binária;
      escreval("--------------------------")
      escreval("Pesquisa Binária | Vetor B")
      escreval("--------------------------")
      resp <- "s"
      enquanto (resp = "s") faca
         escreva("Vetor B | Localizar: ")
         leia(pesq)
         
         inicial <- 1
         final <- 10
         acha <- falso
         
        enquanto (inicial <= final) e (acha = falso) faca
           meio <- (inicial + final) div 2
           se (pesq = vetB[meio]) entao
              acha <- verdadeiro
           senao
                se (pesq < vetB[meio]) entao
                   final <- meio - 1
                senao
                     inicial <- meio + 1
                fimse
           fimse
        fimenquanto
        se (acha = verdadeiro) entao
           escreval("[", pesq, " ] foi localizado na posição", meio, ".")
        senao
             escreval("[", pesq, " ] não foi localizado.")
        fimse
        escreval()
        escreva("Deseja continuar? [s][n]: ")
        leia(resp)
      fimenquanto
fimalgoritmo
