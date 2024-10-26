



programa
{
	
	funcao inicio()
	{

		inteiro opcaoMenu = -1
		cadeia menu = "-----MENU---- \n"
		+ "1 – Somar \n"
		+ "2 – Subtrair \n"
		+ "3 – Multiplicar\n"
		+ "4 – Dividir \n"
		+ "5 – Fatorar \n"
		+ "6 – Potenciação \n"
		+ "7 – Histórico \n"
		+ "0 – Sair \n"

		cadeia historico = "----Histórico---- \n"
		cadeia saida = ""
		real a = 0.0, b =0.0
		
		faca{

			escreva(menu)
			escreva("Digite o índice (número) da opção desejada acima: \n")
			leia(opcaoMenu)
			escolha(opcaoMenu){
				caso 0:
					opcaoMenu = 0
				pare
				caso 1:
					escreva("Operação de soma. \n Digite abaixo dois valores para a operação: \n")
					leia(a,b)
					saida = "A soma de " +  a + " + " + b + " = "+ (a+b) + "\n"
					escreva(saida)
					historico+=saida + "\n"		
				pare
				caso 2:
					escreva("Operação de subração. \n Digite abaixo dois valores para a operação: \n")
					leia(a,b)
					saida = "A subração de " +  a + " - " + b + " = "+ (a-b) + "\n"
					escreva(saida)
					historico+=saida + "\n"					
				pare
				caso 3:
					escreva("Operação de multiplicação. \n Digite abaixo dois valores para a operação: \n")
					leia(a,b)
					saida = "A multiplicação de " +  a + " * " + b + " = "+ (a*b) + "\n"
					escreva(saida)
					historico+=saida + "\n"	
				pare
				caso 4:
					escreva("Operação de divisão. \n Digite abaixo dois valores para a operação: \n")
					leia(a,b)
			
					saida = "A divisão de " +  a + " : " + b + " = "+ (a/b) + "\n"
					escreva(saida)
					historico+=saida + "\n"					
				pare
				caso 5:
					
					inteiro x = 0
					escreva("Operação de fatoração. \n Digite abaixo um valor inteiro para fatorar: \n")
					leia(x)
					
					inteiro contador = 1
					inteiro fatorial = x
					saida = "Fatorial de " + x + "!: \n" 
					
					enquanto(contador < x){
						cadeia texto = fatorial + " * " + (x - contador) + " = " + (fatorial * (x - contador)) + "\n"
						
						fatorial = fatorial * (x - contador)
						
						saida += texto
						
						contador++
					}
					saida += "O fatorial de " + x + "! = " + fatorial + "\n"
					escreva(saida) 
					historico += saida + "\n"
					
				pare
				
				caso 6:

					inteiro base = 0, expoente = 0
					escreva("Operação de potencião. \n Digite abaixo um valor para base e o valor para o expoente: \n")
					leia(base, expoente)
					
					inteiro cont = 1
					inteiro resulPotencia = base
					saida = base + "^" + expoente + ": \n"
					
					enquanto(cont < expoente){
						saida += base + " * " + resulPotencia + " = " + (base*resulPotencia) + "\n"
						resulPotencia = resulPotencia * base
						cont++
					}
					saida += base + "^" + expoente + " = " + resulPotencia + "\n"
					escreva(saida)
					historico += saida + "\n"

				pare

				caso 7:
					escreva("Histórico de operações. \n", historico)
				pare

				caso contrario:
					escreva("A opção digitada não corresponde no menu")			
				}
				caracter valor = ' '
					escreva("Deseja continuar? (S - sim ou N - não): \n")
					leia(valor)
					se(valor == 'S' ou valor == 's'){
						limpa()	
						a = 0.0
						b = 0.0
						saida = ""
					} senao se (valor == 'N' ou valor == 'n'){
						opcaoMenu = 0
						}	
		} enquanto(opcaoMenu != 0 )
		


	}
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3177; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */