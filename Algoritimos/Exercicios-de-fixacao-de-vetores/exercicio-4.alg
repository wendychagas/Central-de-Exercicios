algoritmo "Exercicios de Fixação de Vetores"
//------------------------------------------------------------------------------
// Ler uma matriz A com 12 elementos. Após sua leitura, colocar os seus elemen-
// tos em ordem crescente. Depois ler uma matriz B também com 12 elementos, co-
// locar os elementos de B em ordem crescente. Construir uma matriz C, em que
// cada elemento de C é a soma do elemento correspondente de A com B. Colocar em
// ordem decrescente a matriz C e apresentar os seus valores.
//------------------------------------------------------------------------------
var
   vetorA, vetorB, vetorC: vetor[1..12] de Inteiro
   i, j, aux: Inteiro
   resp: Caracter
inicio
   repita
      // Coleta de Dados Vetor A;
      escreval("-------------------")
      escreval("      Vetor A      ")
      escreval("-------------------")
      para i <- 1 ate 12 faca
           escreva(i, "° -> Vetor A: ")
           leia(vetorA[i])
      fimpara
      
      // Ordenação dos Valores Vetor A;
      para i <- 1 ate 11 faca
           para j <- i + 1 ate 12 faca
                se (vetorA[i] > vetorA[j]) entao
                   aux <- vetorA[i]
                   vetorA[i] <- vetorA[j]
                   vetorA[j] <- aux
                fimse
           fimpara
      fimpara
      escreval()
      
      //Imprimir Valores Ordenados de Vetor A;
      escreval("---------------------------")
      escreval(" Valores Ordenados Vetor A ")
      escreval("---------------------------")
      para i <- 1 ate 12 faca
           escreva("[", vetorA[i], " ]")
      fimpara
      escreval()
      
      // Coleta de Dados Vetor B;
      escreval()
      escreval("-------------------")
      escreval("      Vetor B      ")
      escreval("-------------------")
      para i <- 1 ate 12 faca
           escreva(i, "° -> Vetor B: ")
           leia(vetorB[i])
      fimpara
      
      // Ordenação dos Valores Vetor B;
      para i <- 1 ate 11 faca
           para j <- i + 1 ate 12 faca
                se (vetorB[i] > vetorB[j]) entao
                   aux <- vetorB[i]
                   vetorB[i] <- vetorB[j]
                   vetorB[j] <- aux
                fimse
           fimpara
      fimpara
      escreval()

      //Imprimir Valores Ordenados de Vetor B;
      escreval("---------------------------")
      escreval(" Valores Ordenados Vetor B ")
      escreval("---------------------------")
      para i <- 1 ate 12 faca
           escreva("[", vetorB[i], " ]")
      fimpara
      escreval()
      
      // Soma dos Elementos de Vetor A + Elementos de Vetor B;
      escreval()
      para i <- 1 ate 12 faca
           vetorC[i] <- vetorA[i] + vetorB[i]
      fimpara
      
      // Ordenação dos Valores Vetor C;
      para i <- 1 ate 11 faca
          para j <- i + 1 ate 12 faca
               se (vetorC[i] < vetorC[j]) entao
                  aux <- vetorC[i]
                  vetorC[i] <- vetorC[j]
                  vetorC[j] <- aux
               fimse
          fimpara
      fimpara
      
      // Imprimir Valores Ordenados de Vetor C;
      escreval("---------------------------------------------------------")
      escreval(" Soma dos Valores Vetor A + Vetor B Ordenados em Vetor C ")
      escreval("---------------------------------------------------------")
      para i <- 1 ate 12 faca
           escreva("[", vetorC[i], " ]")
      fimpara
      escreval()
      
      escreval()
      escreva("Continuar? |s| |n|: ")
      leia(resp)
      limpatela
   ate(resp = "N")
fimalgoritmo
