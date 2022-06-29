algoritmo "Exercicios de Fixação de Vetores"
//------------------------------------------------------------------------------
// Ler uma matriz A do tipo vetor com 15 elementos. Construir uma matriz B de
// mesmo tipo, sendo que cada elemento da matriz B seja o fatorial do elemento
// correspondente da matriz A. Apresentar os elementos da matriz B ordenados de
// forma crescente.
//------------------------------------------------------------------------------
var
   vetorA, vetorB: vetor[1..15] de Inteiro
   i, j, aux: Inteiro
   resp: Caracter
//------------------------------------------------------------------------------
// Funcao para calcular o fatorial;
funcao FFatorial(n: Inteiro): Inteiro
var
   f: Inteiro
inicio
      f <- 1
      enquanto (n >= 1) faca
         f <- f * n
         n <- n - 1
      fimenquanto
      
      retorne f
fimfuncao
//------------------------------------------------------------------------------
inicio
   repita
      // Coleta de dados do Vetor A;
      escreval("-------------------")
      escreval("      Vetor A      ")
      escreval("-------------------")
      para i <- 1 ate 15 faca
           escreva(i, "° valor vetor A: ")
           leia(vetorA[i])
           vetorB[i] <- FFatorial(vetorA[i])
      fimpara
      
      escreval()
      
      // Elementos de Vetor A fatorados em Vetor B;
      escreval("-------------------")
      escreval("      Vetor B      ")
      escreval("-------------------")
      para i <- 1 ate 15 faca
           escreval(i, "° fatorial de vetor A:", vetorB[i])
      fimpara
      
      // Ordem Crescente dos valores de Vetor B;
      para i <- 1 ate 14 faca
          para j <- i + 1 ate 15 faca
               se (vetorB[i] > vetorB[j]) entao
                  aux <- vetorB[i]
                  vetorB[i] <- vetorB[j]
                  vetorB[j] <- aux
               fimse
          fimpara
      fimpara
      
      // Imprimir valores de Vetor B ordenados;
      escreval()
      escreval("-------------------")
      escreval(" Valores Ordenados ")
      escreval("-------------------")
      para i <- 1 ate 15 faca
           escreva("[", vetorB[i], " ]")
      fimpara
      escreval()
      
      escreval()
      escreva("Continuar? |s| |n|: ")
      leia(resp)
      limpatela
   ate (resp = "N")
fimalgoritmo
