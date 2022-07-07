algoritmo "Exercicios de Fixação de Vetores"
//------------------------------------------------------------------------------
// Ler 30 elementos de uma matriz A do tipo vetor. Construir uma matriz B de
// mesmo tipo, observando a seguinte lei de formação: Todo elementos de B deve-
// rá ser o cubo do elemento de A correspontente. Montar uma rotina de pesquisa
// sequencial, para pesquisar os elementos armazenados na matriz B.
//------------------------------------------------------------------------------
var
   vetA, vetB: vetor[1..30] de Inteiro
   i, pesq: Inteiro
   resp, enter: Caracter
   acha: Logico
inicio
      // Vetor A;
      escreval("-------------------")
      escreval("      Vetor A      ")
      escreval("-------------------")
      para i <- 1 ate 30 faca
           escreva("Vetor A | Posição", i, ": ")
           aleatorio on
           leia(vetA[i])
      fimpara
      escreval()
      aleatorio off
      
      // Vetor B;
      para i <- 1 ate 30 faca
           vetB[i] <- vetA[i] * 2
      fimpara
      
      // Print Vetor B;
      escreval("-------------------")
      escreval("      Vetor B      ")
      escreval("-------------------")
      para i <- 1 ate 30 faca
           escreval("Vetor B | Posição", i, ":", vetB[i])
      fimpara
      escreval()
      escreva("Pressione ENTER.")
      leia(enter)
      limpatela
      
      // Inicio da Rotina de Pesquisa;
      escreval("-----------------------------")
      escreval("Pesquisa Sequencial | Vetor B")
      escreval("-----------------------------")
      resp <- "s"
      enquanto (resp = "s") faca
         escreva("Localizar | Vetor B: ")
         leia(pesq)
         
         i <- 1
         acha <- falso
         
         enquanto (i <= 30) e (acha = falso) faca
            se (pesq = vetB[i]) entao
               acha <- verdadeiro
            senao
                 i <- i + 1
            fimse
         fimenquanto
         
         se (acha = verdadeiro) entao
            escreval("[", pesq, " ] foi localizado na posição", i, ".")
         senao
              escreval("[", pesq, " ] não foi localizado.")
         fimse
         escreval()
         
         escreva("Continuar |s| |n|: ")
         leia(resp)
         limpatela
      fimenquanto
fimalgoritmo
