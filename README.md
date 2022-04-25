# Prolog

FELADAT

Az alábbi irányított gráfot az éleit leíró tények listájával adtuk meg.
(Például: az edge(1,4). tény azt jelenti, hogy vezet irányított él az 1-es csúcsból a 4-es csúcsba.)

Egészítsd ki a lenti tudásbázist úgy, hogy egy Prolog programot kapj, amely tartalmaz egy olyan path(A,B,P) formájú szabályt, amely meghatározza a gráf A és B csúcsai között futó P utakat.

Egy A és B csúcsok közötti P utat az úton lévő csúcsok listája reprezentál. A lista első eleme A, az utolsó pedig B. Amennyiben A és B megegyeznek, akkor az eredmény - azaz P - legyen az üres lista.
A path szabályt úgy kell megvalósítani, hogy egy út meghatározása után a ;-t lenyomva újabb utakat adjon vissza (ha léteznek).

Példa:

?- path(1,15,P).
P = [1,4,2,12,15] ;
P = [1,4,2,11,15] ;
P = [1,4,3,11,15] ;
P = [1,4,3,2,11,15] ;
...

GRÁF
Kép: https://i.ibb.co/d785B8K/graph.png

Tények:
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
