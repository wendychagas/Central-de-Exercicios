algoritmo "Central"
//Misturando tudo que aprendi no cursos de Algorirmos
//Wendy, 2022
var
   respMenuInicial, respCont: Caracter

//Execu��o do c�lculo Fatorial
funcao FuncaoFatorial(V: Inteiro): Inteiro
var
   R, C: Inteiro
inicio
      R <- 1
      para C <- 1 ate V faca
           R <- R * C
      fimpara
      retorne R
fimfuncao


//Menu de op��es principais
procedimento MenuInicial()
inicio
      limpatela
      escreval("===========================")
      escreval("   CENTRAL de EXERCICIOS   ")
      escreval("===========================")
      escreval()
      escreval("|1| Contador Inteligente")
      escreval("|2| Sequencia de Fibonacci")
      escreval("|3| C�lculo do Fatorial")
      escreval("|4| Matrizes")
      escreval("|5| Ordenar Vetores Crescente")
      escreval("|6| Strings Invertidas")
      escreval("|7| Pesquisar/Localizar Vetor")
      escreval()
      escreval("|x| Finalizar")
      escreval()
      escreva("Decis�o: ")
      leia(respMenuInicial)
      escolha respMenuInicial

      caso "1"
         ContadorInteligente()

      caso "2"
         Fibonacci()

      caso "3"
         Fatorial()

      caso "4"
           MenuMatrizes()

      caso "5"
           OrdemVetores()

      caso "6"
           StringsInvertidas()

      caso "7"
           PesquisarVetor()

      outrocaso
           FinalizarSystem()
      fimescolha
fimprocedimento


//Processo de execu��o das contagens
procedimento ContadorInteligente()
var
   contInicial, contFinal, contSalto: Inteiro
inicio
      repita
      limpatela
      escreval("--------------------------")
      escreval("   CONTADOR INTELIGENTE   ")
      escreval("--------------------------")
      escreva("Inicial: ")
      leia(contInicial)
      escreva("Final: ")
      leia(contFinal)
      escreva("Salto: ")
      leia(contSalto)
           se (contInicial < contFinal) entao
              limpatela
              escreval("--------------------------")
              escreval("   Contagem Progressiva   ")
              escreval("--------------------------")
              escreval()
              enquanto (contInicial <= contFinal) faca
                 escreva(contInicial)
                 contInicial <- contInicial + contSalto
              fimenquanto
           senao
                limpatela
                escreval("--------------------------")
                escreval("    Contagem Regressiva   ")
                escreval("--------------------------")
                escreval()
                enquanto (contInicial > contFinal) faca
                   escreva(contInicial)
                   contInicial <- contInicial - contSalto
                fimenquanto
           fimse
           escreval()
           escreval("--------------------------")
           escreva("Continuar Contador? |S|N|: ")
           leia(respCont)
         ate(respCont = "N")
         MenuInicial()
fimprocedimento


//C�lculo do Fibonacci
procedimento Fibonacci()
var
   t1, t2, t3, tamSeq, contFib: Inteiro
inicio
      repita
           limpatela
           escreval("--------------------------")
           escreval("  SEQUENCIA de FIBONACCI  ")
           escreval("--------------------------")
           escreval()
           escreva("Informe o tamanho da sequencia |Max45|: ")
           leia(tamSeq)
           escreval()
           t1 <- 0
           escreval(t1)
           t2 <- 1
           escreval(t2)
           para contFib <- 3 ate tamSeq faca
                t3 <- t1 + t2
                escreval(t3)
                t1 <- t2
                t2 <- t3
           fimpara
           escreval()
           escreval("---------------------------")
           escreva("Continuar Fibonacci? |S|N|: ")
           leia(respCont)
         ate(respCont = "N")
         MenuInicial()
fimprocedimento


//C�lculo do Fatorial
procedimento Fatorial()
var
   nFat, rFat: Inteiro
inicio
      repita
           limpatela
           escreval("--------------------------")
           escreval("         FATORIAL         ")
           escreval("--------------------------")
           escreva("Informe o n�mero do fatorial: ")
           leia(nFat)
           escreval()
           rFat <- FuncaoFatorial(nFat)
           escreval("O fatorial de", nFat, "! =", rFat)
           escreval("--------------------------")
           escreva("Continuar Fatorando? |S|N|: ")
           leia(respCont)
         ate(respCont = "N")
         MenuInicial()
fimprocedimento

//Aqui onde o usu�rio escolhe os pr�prios valores na matriz
procedimento Matrizes()
var
   i, j: Inteiro
   matId: vetor[1..4, 1..4] de Inteiro
inicio
      limpatela
      escreval("--------------------------")
      escreval("         MATRIZES         ")
      escreval("--------------------------")
      escreval()
      escreval("     Preencher Matriz     ")
      escreval()
      para i <- 1 ate 4 faca
          para j <- 1 ate 4 faca
               escreva("Valores [", i, ",", j, " ]: ")
               leia(matId[i,j])
          fimpara
      fimpara
      escreval("")
      MenuMatrizes()
fimprocedimento

//Menu Principal da Matriz
procedimento MenuMatrizes()
var
   respMenuMat, i, j: Inteiro
   matId: vetor[1..4, 1..4] de Caracter
   sinalEscolha: Caracter
inicio
   repita
      escreval("--------------------------")
      escreval("    Escolha o Caracter    ")
      escreval("--------------------------")
      escreval()
      escreva("Escolha o caracter: ")
      leia(sinalEscolha)
      escreval()
      para i <- 1 ate 4 faca
          para j <- 1 ate 4 faca
               matId[i,j] <- sinalEscolha
          fimpara
      fimpara
      limpatela
      escreval("=============================")
      escreval("      Menu Op��es Matriz     ")
      escreval("=============================")
      escreval("[1] Exibir Matriz Completa")
      escreval("[2] Exibir Diagonal Principal")
      escreval("[3] Exibir Tri�ngulo Superior")
      escreval("[4] Exibir Tri�ngulo Inferior")
      escreval("[5] Diagonal Contr�ria")
      escreval("[6] Defina seus valores")
      escreval("[7] Voltar")
      escreval()
      escreval(".............................")
      escreva("Escolha uma op��o: ")
      leia(respMenuMat)
      escreval()
      escolha respMenuMat

      //Matriz Completa
      caso 1
           para i <- 1 ate 4 faca
                para j <- 1 ate 4 faca
                     escreva(matId[i,j]:4)
                fimpara
                escreval()
           fimpara

      //Diagonal Principal
      caso 2
           para i <- 1 ate 4 faca
               para j <- 1 ate 4 faca
                    se (i = j) entao
                       escreva(matId[i,j]:4)
                    senao
                         escreva("  ")
                    fimse
               fimpara
               escreval()
           fimpara
           escreval("")

      //Trin�ngulo Superior
      caso 3
           para i <- 1 ate 4 faca
               para j <- 1 ate 4 faca
                    se (i = 2) e (j = 1) entao
                       escreva("    ")
                    fimse
                    se (i = 3) e (j = 1) entao
                       escreva("    ")
                    fimse
                    se (i = 4) e (j = 1) entao
                       escreva("    ")
                    fimse
                    se (i = 3) e (j = 2) entao
                       escreva("    ")
                    fimse
                    se (i = 4) e (j = 2) entao
                       escreva("    ")
                    fimse
                    se (i = 4) e (j = 3) entao
                       escreva("    ")
                    fimse
                    se (i = j) entao
                       escreva("   ")
                    fimse
                    se (i = 1) e (j = 2) entao
                       escreva(matId[i,j]:4)
                    fimse
                    se (i = 1) e (j = 3) entao
                       escreva(matId[i,j]:4)
                    fimse
                    se (i = 1) e (j = 4) entao
                       escreva(matId[i,j]:4)
                    fimse
                    se (i = 2) e (j = 3) entao
                       escreva(matId[i,j]:4)
                    fimse
                    se (i = 2) e (j = 4) entao
                       escreva(matId[i,j]:4)
                    fimse
                    se (i = 3) e (j = 4) entao
                       escreva(matId[i,j]:4)
                    fimse
               fimpara
               escreval()
           fimpara
           escreval("")

      //Tri�ngulo Inferior
      caso 4
           para i <- 1 ate 4 faca
               para j <- 1 ate 4 faca
               se (i = 2) e (j = 1) entao
                  escreva(matId[i,j]:4)
               fimse
               se (i = 3) e (j = 1) entao
                  escreva(matId[i,j]:4)
               fimse
               se (i = 4) e (j = 1)  entao
                  escreva(matId[i,j]:4)
               fimse
               se (i = 3) e (j = 2) entao
                  escreva(matId[i,j]:4)
               fimse
               se (i = 4) e (j = 2) entao
                  escreva(matId[i,j]:4)
               fimse
               se (i = 4) e (j = 3) entao
                  escreva(matId[i,j]:4)
               fimse
               se (i = j) entao
                  escreva(" ")
               fimse
               se (i = 1) e (j = 2) entao
                  escreva(" ")
               fimse
               se (i = 1) e (j = 3) entao
                  escreva(" ")
               fimse
               se (i = 1) e (j = 4) entao
                  escreva(" ")
               fimse
               se (i = 2) e (j = 3) entao
                  escreva(" ")
               fimse
               se (i = 2) e (j = 4) entao
                  escreva(" ")
               fimse
               se (i = 3) e (j = 4) entao
                  escreva(" ")
               fimse
               fimpara
               escreval()
           fimpara
           escreva("")

      //Diagonal Contr�ria
      caso 5
           para i <- 1 ate 4 faca
               para j <- 1 ate 4 faca
                    se (i = 1) e (j = 3) entao
                       escreva("  ")
                    fimse
                    se (i = 2) e (j = 2) entao
                       escreva("  ")
                    fimse
                    se (i = 3) e (j = 1) entao
                       escreva("  ")
                    fimse
                    se (i = 1) e (j = 2) entao
                       escreva("  ")
                    fimse
                    se (i = 2) e (j = 1) entao
                       escreva("  ")
                    fimse
                    se (i = 1) e (j = 1) entao
                       escreva("  ")
                    fimse
                    se (i = 2) e (j = 4) entao
                       escreva("  ")
                    fimse
                    se (i = 3) e (j = 3) entao
                       escreva("  ")
                    fimse
                    se (i = 4) e (j = 2) entao
                       escreva("  ")
                    fimse
                    se (i = 3) e (j = 4) entao
                       escreva("  ")
                    fimse
                    se (i = 4) e (j = 3) entao
                       escreva("  ")
                    fimse
                    se (i = 4) e (j = 3) entao
                       escreva("  ")
                    fimse
                    se (i = 1) e (j = 4) entao
                       escreva(matId[i,j]:4)
                    fimse
                    se (i = 2) e (j = 3) entao
                       escreva(matId[i,j]:4)
                    fimse
                    se (i = 3) e (j = 2) entao
                       escreva(matId[i,j]:4)
                    fimse
                    se (i = 4) e (j = 1) entao
                       escreva(matId[i,j]:4)
                    fimse
               fimpara
               escreval()
           fimpara

      //Escolher Valores
      caso 6
           PersonalizarMatriz()

      fimescolha
      escreval()
      escreval("----------------------------")
      escreva("Continuar Matrizes? |S|N|:   ")
      leia(respCont)
      limpatela
   ate(respCont = "N")
   MenuInicial()
fimprocedimento

procedimento OrdemVetores()
var
   respOv: Caracter
   ordemVet: vetor[1..12] de Inteiro
   i, j, aux: Inteiro
inicio
   repita
      limpatela
      escreval()
      escreval("---------------------------")
      escreval("Ordenando Vetores Crescente")
      escreval("---------------------------")
      para i <- 1 ate 12 faca
           escreva(i, "� valor: ")
           leia(ordemVet[i])
      fimpara
      escreval()

      para i <- 1 ate 11 faca
           para j <- i + 1 ate 12 faca
                se (ordemVet[i] > ordemVet[j]) entao
                   aux <- ordemVet[i]
                   ordemVet[i] <- ordemVet[j]
                   ordemVet[j] <- aux
                fimse
           fimpara
      fimpara

      escreval("------------------------")
      para i <- 1 ate 12 faca
           escreva("{", ordemVet[i], " }")
      fimpara

      escreval()
      escreval("------------------------")
      escreva("Continuar? |S|N|: ")
      leia(respOv)
   ate(respOv = "N")
   MenuInicial()
fimprocedimento

procedimento PersonalizarMatriz()
var
   resp: Caracter
   respM: Inteiro
   i, j: Inteiro
   matId: vetor[1..4, 1..4] de Inteiro
inicio
   repita
      limpatela
      escreval("--------------------------")
      escreval("   Escolha seus valores   ")
      escreval("--------------------------")
      escreval()
      escreval("     Preencher Matriz     ")
      escreval()
      para i <- 1 ate 4 faca
          para j <- 1 ate 4 faca
               escreva("Valores [", i, ",", j, " ]: ")
               leia(matId[i,j])
          fimpara
      fimpara
      escreval("")

      limpatela
      escreval("=============================")
      escreval(" MENU  OP��ES PERSONALIZADAS ")
      escreval("=============================")
      escreval("|1| Exibir Matriz Inteira")
      escreval("|2| Exibir Diagonal Principal")
      escreval("|3| Exibir Tri�ngulo Superior")
      escreval("|4| Exibir Tri�ngulo Inferior")
      escreval("|5| Voltar")
      escreval("----------------------")
      escreva("Decis�o: ")
      leia(respM)
      escolha respM
      caso 1
           escreval("===========================")
           escreval("      MATRIZ COMPLETA      ")
           escreval("===========================")
           para i <- 1 ate 4 faca
               para j <- 1 ate 4 faca
                    escreva(matId[i,j]:4)
               fimpara
               escreval()
           fimpara

      caso 2
            escreval("===========================")
            escreval("    DIAGONAL PRINCIPAL     ")
            escreval("===========================")
            para i <- 1 ate 4 faca
                para j <- 1 ate 4 faca
                     se (i = j) entao
                        escreva(matId[i, j]:4)
                     fimse
                     escreva("   ")
                fimpara
                escreval()
            fimpara

      caso 3
           escreval("===========================")
           escreval("    TRI�NGULO SUPERIOR     ")
           escreval("===========================")
           para i <- 1 ate 4 faca
                para j <- 1 ate 4 faca
                     se (i = 2) e (j = 1) entao
                        escreva("    ")
                     fimse
                     se (i = 3) e (j = 2) entao
                        escreva("    ")
                     fimse
                     se (i = 4) e (j = 3) entao
                        escreva("    ")
                     fimse
                     se (i = 3) e (j = 1) entao
                        escreva("    ")
                     fimse
                     se (i = 4) e (j = 2) entao
                        escreva("    ")
                     fimse
                     se (i = 4) e (j = 1) entao
                        escreva("    ")
                     fimse
                     se (i = 1) e (j = 4) entao
                        escreva(matId[i, j]:4)
                     fimse
                     se (i = 2) e (j = 4) entao
                        escreva(matId[i,j]:4)
                     fimse
                     se (i= 1) e (j = 3) entao
                        escreva(matId[i,j]:4)
                     fimse
                     se (i = 3) e (j = 4) entao
                        escreva(matId[i,j]:4)
                     fimse
                     se (i = 2) e (j = 3) entao
                        escreva(matId[i,j]:4)
                     fimse
                     se (i = 1) e (j = 1) entao
                        escreva(matId[i,j]:4)
                     fimse
                fimpara
                escreval()
           fimpara

      caso 4
           escreval("===========================")
           escreval("    TRI�NGULO INFERIOR     ")
           escreval("===========================")
           para i <- 1 ate 4 faca
               para j <- 1 ate 4 faca
                    se (i = 1) e (j = 2) entao
                       escreva(" ")
                    fimse
                    se (i = 2) e (j = 3) entao
                       escreva(" ")
                    fimse
                    se (i = 3) e (j = 4) entao
                       escreva(" ")
                    fimse
                    se (i = 1) e (j = 3) entao
                       escreva(" ")
                    fimse
                    se (i = 2) e (j = 4) entao
                       escreva(" ")
                    fimse
                    se (i = 1) e (j = 4) entao
                       escreva(" ")
                    fimse
                    se (i = 2) e (j = 1) entao
                       escreva(matId[i,j]:4)
                    fimse
                    se (i = 3) e (j = 2) entao
                       escreva(matId[i,j]:4)
                    fimse
                    se (i = 4) e (j = 3) entao
                       escreva(matId[i,j]:4)
                    fimse
                    se (i = 3) e (j = 1) entao
                       escreva(matId[i,j]:4)
                    fimse
                    se (i = 4) e (j = 2) entao
                       escreva(matId[i,j]:4)
                    fimse
                    se (i = 4) e (j = 1) entao
                       escreva(matId[i,j]:4)
                    fimse
               fimpara
               escreval()
           fimpara

      caso 5
           escreval()
      fimescolha
      escreval("--------------------------")
      escreva("Continuar? |S|N|: ")
      leia(resp)
   ate(resp = "N")
   PersonalizarMatriz()
fimprocedimento

procedimento StringsInvertidas()
var
   contInversor: Inteiro
   stringInversor, respInversor: Caracter
inicio
      limpatela
      escreval("--------------------------")
      escreval("    Invers�o de Strings   ")
      escreval("--------------------------")
      escreval()
      escreva("String -> ")
      leia(stringInversor)
      escreval()
      escreval("--------------------------")
      contInversor <- Compr(stringInversor)
      enquanto (contInversor >= 1) faca
         escreva(Copia(stringInversor, contInversor, 1))
         contInversor <- contInversor - 1
      fimenquanto
      escreval()
      escreval("--------------------------")
      escreva("Continuar? |S|N|: ")
      leia(respInversor)
      MenuInicial()
fimprocedimento

procedimento PesquisarVetor()
var
   listaVetor: vetor[1..10] de Caracter
   i: Inteiro
   respPesquisa, pesqNome, respFinal: Caracter
   acha: Logico
inicio
      limpatela
      escreval()
      escreval("--------------------------")
      escreval("   Informar & Pesquisar   ")
      escreval("--------------------------")
      para i <- 1 ate 10 faca
           escreva("Informe o", i, "� nome: ")
           leia(listaVetor[i])
      fimpara
      escreval()
      escreval("--------------------------")
      respPesquisa <- "S"
      enquanto (respPesquisa = "S") faca
         limpatela
         escreval("--------------------------")
         escreva("Localizar nome: ")
         leia(pesqNome)
         escreval("--------------------------")
         i <- 1
         acha <- falso
         enquanto (i <= 10) e (acha = falso) faca
            se (pesqNome = listaVetor[i]) entao
               acha <- verdadeiro
            senao
                 i <- i + 1
            fimse
         fimenquanto
         se (acha = verdadeiro) entao
            escreva("[ ",pesqNome," ] foi encontrado na posi��o [", i, " ].")
            escreval()
         senao
              escreva("[",pesqNome, " ] n�o foi encontrado.")
              escreval()
         fimse
         escreval()
         escreval("--------------------------")
         escreva("Continuar? |S|N|: ")
         leia(respPesquisa)
      fimenquanto
   MenuInicial()
fimprocedimento

//Interface fechamento
procedimento FinalizarSystem()
inicio
      limpatela
      escreval("===========================")
      escreval("ENCERRANDO SISTEMA...      ")
      escreval("===========================")
fimprocedimento

//Programa Compilado em Procedimentos
inicio
MenuInicial()
fimalgoritmo

