edge(1,4).
edge(4,3).
edge(3,16).
edge(16,19).
edge(19,17).
edge(16,7).
edge(3,9).
edge(5,4).
edge(10,4).
edge(6,4).
edge(4,2).
edge(3,2).
edge(2,12).
edge(2,11).
edge(11,15).
edge(12,15).
edge(11,8).
edge(15,13).
edge(15,14).
edge(8,18).
edge(8,14).
edge(8,19).
edge(16,20).
edge(3,11).
edge(6,9).
edge(15,16).
edge(5,2).
edge(10,9).
edge(9,7).
edge(7,17).
edge(12,14).

%Ha X-Y vagy Y-X el letezik
el(X,Y) :-
	edge(X,Y).

megfordit([],[]).
	megfordit([H|T],L) :- megfordit(T,L1),
	append(L1,[H],L).
	
%hozzaad(A,B,P) :-


path(A,B,P) :-
	A == B,
	megfordit([],P).
	
	
path(A,B,P) :-
       vizsgal(A,B,[A],Z), 		%Volt ertekenek A-t allitom be
       megfordit(Z,P).
	   
vizsgal(A,B,Volt,[B|Volt]) :- 	%lista elejere szurom be B-t
       el(A,B).
	   
vizsgal(A,B,Volt,P) :-
       el(A,C),    				%Melyikkel van kapcsolatban az A (listazas)  
       not(C == B), 			%C es B erteke nem azonos (ne legyen vegtelen ciklus)
       not(member(C,Volt)), 	%C nem eleme Volt tombnek
       vizsgal(C,B,[C|Volt],P).  