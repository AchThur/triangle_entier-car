{algo triangle_entier 
// BUT avoir un triangle d'entier 
// ENTRE un triangle de 1 a 9 
// SORTIE le triangle affiché de 1 a 9 
CONST 
	intmax=9
tabint = tableau [1..intmax,1..intmax] d'entier

procedure inint (Var tab1:tabint;Var cpt:entier)
Var 
	i,j:Entier
debut 
	cpt:=0
	pour i de intmax a 1 pas de -1 faire 
		pour j de 1 a intmax faire 
			si i>=j alors 
			tab1[i,j]<-cpt // le cpt fais plus 1 au entier pour chaque ligne 
			ECRIRE (tab1[i,j]) le tab s'affiche dans le if pour n'avoir que un triangle 
			fin si 
		fin pour 
	fin pour 
	cpt<-cpt+1 // c'est la que les entiers vont monté le pas 
fin 

Var

tab2:tableau[1..intmax,1..intmax] d'entier;
i,j,cpt:integer;
Debut
clrscr;
inint(tab2,cpt); // Appel de la seconde procedure avec le tableau et le cpt 
Readln;
fin.}

program triangle_entier; 
uses crt;
CONST 
	intmax=10;
type 
	tabint = array [1..intmax,1..intmax] of integer;

//nom de la procédure 
Procedure inint(VAR tab1:tabint; VAR cpt:integer);
VAR
	i,j:integer;
begin
	cpt:=0;
	For i:=intmax downto 1 do
	begin
		For j:=1 to intmax do
		begin
			If i>=j then
			begin
			tab1[i,j]:=cpt; // le cpt va être chargé de change chaque entier en fct de la ligne 
			Write(tab1[i,j]); //affichage du tab pour forme le triangle 
			end;
		end;
		cpt:=cpt+1;
		Writeln; 
	end;
end;


Var
tab2:Array[1..intmax,1..intmax] of integer;

i,j,cpt:integer;
begin
clrscr;
inint(tab2,cpt); // Appel de la seconde procedure 
Readln;
end.




