expandeFilhos(Nodo, Lista, ListaR) :-
	geraJogadas(Nodo,F1,F2,F3,F4),
	valorTabuleiro(F1,VF1),valorTabuleiro(F2,VF2),
	valorTabuleiro(F3,VF3),valorTabuleiro(F4,VF4),
	append(F1,[VF1],S1),append(F2,[VF2],S2),
	append(F3,[VF3],S3),append(F4,[VF4],S4),
	Fs1 = [S1],concatSol(Fs1,[S2],Fs2),concatSol(Fs2,[S3],Fs3),concatSol(Fs3,[S4],Fs4),concatSol(Fs4,Lista,ListaR).

concatSol(S1,S2,R) :-
	S1 \== [[-1]] -> (S2 \== [[-1]] -> append(S1,S2,R) ; R = S1) ;
	(S2 \== [[-1]] -> R = S2 ; R = [[-1]]).
