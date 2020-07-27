programa
{	
	cadeia matriz1[3][3],matrizO[3][3],matrizX[3][3]
	funcao inicio()
	{
		inteiro resposta1[5],resposta2[5]
		matriz1[0][0] = "1"
		matriz1[0][1] = "2"
		matriz1[0][2] = "3"
		matriz1[1][0] = "4"
		matriz1[1][1] = "5"
		matriz1[1][2] = "6"
		matriz1[2][0] = "7"
		matriz1[2][1] = "8"
		matriz1[2][2] = "9"
		
		matrizX[0][0] = "1"
		matrizX[0][1] = "2"
		matrizX[0][2] = "3"
		matrizX[1][0] = "4"
		matrizX[1][1] = "5"
		matrizX[1][2] = "6"
		matrizX[2][0] = "7"
		matrizX[2][1] = "8"
		matrizX[2][2] = "9"

		matrizO[0][0] = "1"
		matrizO[0][1] = "2"
		matrizO[0][2] = "3"
		matrizO[1][0] = "4"
		matrizO[1][1] = "5"
		matrizO[1][2] = "6"
		matrizO[2][0] = "7"
		matrizO[2][1] = "8"
		matrizO[2][2] = "9"

		para(inteiro i=0; i < 5; i++)
		{
			escreva_jogo()
			faca
			{
				escreva("Jogador 1:")
				leia(resposta1[i])
			}enquanto(resposta1[i] == resposta2[0] ou resposta1[i] == resposta2[1] ou resposta1[i] == resposta2[2] ou resposta1[i] == resposta2[3] ou resposta1[i] == resposta2[4] ou resposta1[i]>=10)
			escolha(resposta1[i])
			{
				caso 1:matriz1[0][0] = "x" matrizX[0][0] = "X"
				pare
				caso 2:matriz1[0][1] = "x" matrizX[0][1] = "X"
				pare
				caso 3:matriz1[0][2] = "x" matrizX[0][2] = "X"
				pare
				caso 4:matriz1[1][0] = "x" matrizX[1][0] = "X"
				pare
				caso 5:matriz1[1][1] = "x" matrizX[1][1] = "X"
				pare
				caso 6:matriz1[1][2] = "x" matrizX[1][2] = "X"
				pare
				caso 7:matriz1[2][0] = "x" matrizX[2][0] = "X"
				pare
				caso 8:matriz1[2][1] = "x" matrizX[2][1] = "X"
				pare
				caso 9:matriz1[2][2] = "x" matrizX[2][2] = "X"
				pare
			}
			escreva_jogo()
			se(matrizX[0][0]==matrizX[1][1] e matrizX[0][0]==matrizX[2][2] ou matrizX[0][2]==matrizX[1][1] e matrizX[0][2]==matrizX[2][0] ou matrizX[1][0]==matrizX[1][1] e matrizX[1][0]==matrizX[1][2] ou matrizX[0][0]==matrizX[1][0] e matrizX[0][0]==matrizX[2][0] ou matrizX[0][1]==matrizX[1][1] e matrizX[0][1]==matrizX[2][1] ou matrizX[0][2]==matrizX[1][2] e matrizX[0][2]==matrizX[2][2] ou matrizX[0][0]==matrizX[0][1] e matrizX[0][0]==matrizX[0][2] ou matrizX[2][0]==matrizX[2][1] e matrizX[2][0]==matrizX[2][2])
			{
				escreva("Jogador 1 ganhou!")
				pare
			}
			se(i == 4)
			{
				escreva("Velha!")
				pare
			}
			
			faca
			{
				escreva("Jogador 2:")
				leia(resposta2[i])
			}enquanto (resposta2[i] == resposta1[0] ou resposta2[i] == resposta1[1] ou resposta2[i] == resposta1[2] ou resposta2[i] == resposta1[3] ou resposta2[i] == resposta1[4] ou resposta2[i]>=10)
			
			escolha (resposta2[i])
			{
				caso 1:matriz1[0][0] = "o" matrizO[0][0] = "O"
				pare
				caso 2:matriz1[0][1] = "o" matrizO[0][1] = "O"
				pare
				caso 3:matriz1[0][2] = "o" matrizO[0][2] = "O"
				pare
				caso 4:matriz1[1][0] = "o" matrizO[1][0] = "O"
				pare
				caso 5:matriz1[1][1] = "o" matrizO[1][1] = "O"
				pare
				caso 6:matriz1[1][2] = "o" matrizO[1][2] = "O"
				pare
				caso 7:matriz1[2][0] = "o" matrizO[2][0] = "O"
				pare
				caso 8:matriz1[2][1] = "o" matrizO[2][1] = "O"
				pare
				caso 9:matriz1[2][2] = "o" matrizO[2][2] = "O"
				pare
			}
			escreva_jogo()
			se(matrizO[0][0]==matrizO[1][1] e matrizO[0][0]==matrizO[2][2] ou matrizO[0][2]==matrizO[1][1] e matrizO[0][2]==matrizO[2][0] ou matrizO[1][0]==matrizO[1][1] e matrizO[1][0]==matrizO[1][2] ou matrizO[0][0]==matrizO[1][0] e matrizO[0][0]==matrizO[2][0] ou matrizO[0][1]==matrizO[1][1] e matrizO[0][1]==matrizO[2][1] ou matrizO[0][2]==matrizO[1][2] e matrizO[0][2]==matrizO[2][2] ou matrizO[0][0]==matrizO[0][1] e matrizO[0][0]==matrizO[0][2] ou matrizO[2][0]==matrizO[2][1] e matrizO[2][0]==matrizO[2][2])
			{
				escreva("Jogador 2 ganhou!")
				pare
			}
			limpa()
		}
	}
	funcao escreva_jogo()
	{
		escreva("-------------\n")		
		para(inteiro i=0; i < 3; i++)
		{
			escreva("| ")
			para(inteiro j=0; j < 3; j++)
			{
				escreva(matriz1[i][j]," | ")
			}
		escreva ("\n")
		escreva("-------------")	
		escreva ("\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3694; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */