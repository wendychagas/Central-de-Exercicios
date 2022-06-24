algoritmo "Exercicios de Fixação Vetores"
//------------------------------------------------------------------------------
// Ler 8 elementos em uma matriz A tipo vetor. construir uma matriz B de mesma
// dimensão com os elementos da matriz A multiplicados por 5. Montar uma rotina
// de pesquisa binária, para pesquisar os elementos armazenados na matriz B.
// Ordenar os valores da matriz B em ordem crescente.
//------------------------------------------------------------------------------
var
   vetorA, vetorB: vetor[1..8] de Inteiro
   i, j, pesq, inicial, final, meio, aux: Inteiro
   acha: Logico
   resp: Caracter
inicio
      // Coleda de dados;
      escreval("Coleda de dados;")
      escreval()
      para i <- 1 ate 8 faca
           escreva(i, "° valor: ")
           leia(vetorA[i])
      fimpara

      // Matriz Secundária com valores x5;
      para i <- 1 ate 8 faca
           vetorB[i] <- vetorA[i] * 5
      fimpara
      
      // Ordenação dos Valores de Matriz B;
      escreval()
      escreval("Valores Ordenados Vetor B x 5;")

      para i <- 1 ate 7 faca
          para j <- i + 1 ate 8 faca
               se (vetorB[i]) > vetorB[j] entao
                  aux <- vetorB[i]
                  vetorB[i] <- vetorB[j]
                  vetorB[j] <- aux
               fimse
          fimpara
      fimpara
      
      para i <- 1 ate 8 faca
           escreva("[", vetorB[i], " ]")
      fimpara
      
      escreval()
      
      // Rotina de Pesquisa Binária;
      resp <- "S"
      enquanto (resp = "s") faca
          escreval()
           escreva("Pesquisa binária: ")
           leia(pesq)
           inicial <- 1
           final <- 8
           acha <- falso
           enquanto (inicial <= final) e (acha = falso) faca
              meio <- (inicial + final) div 2
              se (pesq = vetorB[meio]) entao
                 acha <- verdadeiro
              senao
                   se (pesq < vetorB[meio]) entao
                      final <- meio - 1
                   senao
                        inicial <- meio + 1
                   fimse
              fimse
           fimenquanto
           se (acha = verdadeiro) entao
              escreval()
              escreval(pesq, " foi encontrado na posição", meio)
           senao
                escreval()
                escreval(pesq, " não foi encontrado.")
           fimse
           
           escreval()
           escreva("Deseja continuar? |s|n|: ")
           leia(resp)
      fimenquanto
fimalgoritmo
