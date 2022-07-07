algoritmo "Exercicio de Fixação de Vetores"
//------------------------------------------------------------------------------
// Ler uma matriz A do tipo vetor com 20 elementos negativos. Construir uma
// matriz B de mesmo tipo e dimensão, segundo que cada elemento da matriz B
// deverá ser o valor positivo correspondente da matriz A. Apresentar os elemen-
// tos da matriz B em ordem decrescente.
//------------------------------------------------------------------------------
var
   vetA, vetB: vetor[1..20] de Inteiro
   i, j, aux: Inteiro
inicio
      // Vetor A(Negativos);
      escreval("--------------------")
      escreval("      Vetor A-      ")
      escreval("--------------------")
      para i <- 1 ate 20 faca
           escreva("Vetor A- | Posição", i, ": ")
           leia(vetA[i])
           se (vetA[i] < 0) entao
              vetB[i] <- abs(vetA[i])
           senao
                vetB[i] <- vetA[i]
           fimse
      fimpara
      escreval()
      
      // Vetor B(Positivos);
      escreval("--------------------")
      escreval("      Vetor B+      ")
      escreval("--------------------")
      para i <- 1 ate 20 faca
           escreval("Vetor B+ | Posição", i, ":", vetB[i])
      fimpara
      escreval()
      
      // Ordenar Vetor B;
      para i <- 1 ate 19 faca
           para j <- i + 1 ate 20 faca
                se (vetB[i] < vetB[j]) entao
                   aux <- vetB[i]
                   vetB[i] <- vetB[j]
                   vetB[j] <- aux
                fimse
           fimpara
      fimpara
      
      // Vetor B(Ordenado);
      escreval("----------------------")
      escreval("  Vetor B | Ordenado  ")
      escreval("----------------------")
      para i <- 1 ate 20 faca
           escreval("Vetor B+ | Posição", i, ":", vetB[i])
      fimpara
      escreval()
fimalgoritmo
