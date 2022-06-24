algoritmo "Exercicios de Fixação Vetores"
//------------------------------------------------------------------------------
// Ler 12 elementos de uma matriz tipo vetor, colocá-los em ordem decrescente
// e apresentar os elementos ordenados.
//------------------------------------------------------------------------------
var
   vetorA: vetor[1..12] de Inteiro
   i, j, aux: Inteiro
inicio
      // Coleta de dados;
      escreval("Coleta dos Dados;")
      escreval()
      para i <- 1 ate 12 faca
           escreva(i, "° valor: ")
           leia(vetorA[i])
      fimpara

      // Ordenação dos valores;
      para i <- 1 ate 11 faca
           para j <- i + 1 ate 12 faca
                se (vetorA[i] < vetorA[j]) entao
                   aux <- vetorA[i]
                   vetorA[i] <- vetorA[j]
                   vetorA[j] <- aux
                fimse
           fimpara
      fimpara
      
      escreval()
      escreval("Valores Ordenados;")
      escreval()
      para i <- 1 ate 12 faca
           escreva("[", vetorA[i], " ]")
      fimpara
fimalgoritmo
