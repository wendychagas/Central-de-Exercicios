algoritmo "Exercicios de Fixa��o de Vetores"
//------------------------------------------------------------------------------
// Ler uma matriz A tipo vetor com 15 elementos. Construir uma matriz B de mesmo
// tipo e dimens�o, segundo que cada elemento de B dever� ser a metade de cada
// elemento de A. Apresentar os elementos das matrizes A em ordem decrescente e
// os elementos de B em ordem crescente.
//------------------------------------------------------------------------------
var
   vetA, vetB: vetor[1..5] de Real
   i, j: Inteiro
   aux: Real
inicio
      // Vetor A;
      escreval("_________________")
      escreval("Valores | Vetor A")
      para i <- 1 ate 5 faca
           escreva("Vetor A | Posi��o", i, ": ")
           leia(vetA[i])
      fimpara
      escreval()
      
      // Print Vetor B = Vetor A / 2;
      escreval("_________________")
      escreval("Valores - Vetor B")
      para i <- 1 ate 5 faca
           vetB[i] <- vetA[i] / 2
           escreval("Vetor B | Posi��o", i, ":", vetB[i])
      fimpara
      escreval()
      
      // Ordenar Vetor A;
      para i <- 1 ate 4 faca
           para j <- i+1 ate 5 faca
                se (vetA[i] < vetA[j]) entao
                   aux <- vetA[i]
                   vetA[i] <- vetA[j]
                   vetA[j] <- aux
                fimse
           fimpara
      fimpara
      
      // Print Vetor A Ordenado Decrescente;
      escreval("_______________________________")
      escreval("Ordena��o Decrescente - Vetor A")
      para i <- 1 ate 5 faca
           escreval("Vetor A | Posi��o", i, ":", vetA[i])
      fimpara
      escreval()
      
      // Ordenar Vetor B;
      para i <- 1 ate 4 faca
           para j <- i+1 ate 5 faca
                se (vetB[i] > vetB[j]) entao
                   aux <- vetB[i]
                   vetB[i] <- vetB[j]
                   vetB[j] <- aux
                fimse
           fimpara
      fimpara
      
      // Print Vetor B Ordenado Crescente;
      escreval("_______________________________")
      escreval("Ordena��o Crescente - Vetor B")
      para i <- 1 ate 5 faca
           escreval("Vetor B | Posi��o", i, ":", vetB[i])
      fimpara
      escreval()
fimalgoritmo
