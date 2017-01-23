{algo triangle_car 
//BUT avoir un triangle en caractere
//ENTREE une hauteur de triangle 
//SORTIE le triangle de 2 caractete 
CONST 
	carcarmax=100 // la constante de la taille du triangle carmax 

Type 
	tabchar = tableau[1..carcarmax,1..carcarmax] de caractere //mon tableau de caractere
	
	Procedure iChar(Var tab1:tabchar)// nom de ma procedure plus paramètre
	Var 
		taille,i,j:Entier //variable local
	debut 
		ECRIRE('veuillez entré un taille de triangle')
		LIRE (taille)
		pour i de 1 a taille faire 
			pour j de 1 a taille faire 
				si i>=j alors 
					tab1[i,j]<-'O' // le tableau est remplie de O 
				fin si 
				si i=j ou i=taille ou j=1 alors 
					tab1[i,j]<-'X' // les extremites du triangle sont rempli de X 
				fin si 
			fin pour 
		fin pour 
	fin 
	
Var 
	Tab2: tableau[1..carcarmax,1..carcarmax] de caractère
	i,j,cpt:Entier 
debut 
	iChar(Tab2) // appel de la procedure 
fin. 





}
 

Program Triangle_char;
uses crt;
CONST
carmax=100;  // valeur max de mon triangle 
Type
tabchar = Array [1..carmax,1..carmax] of Char; // tab de caractere 
// PROCEDURE D'INITIALISATION DU TABLEAU DE CARACTERE 
Procedure iChar(VAR tab1:tabchar);
VAR
	taille,i,j:integer;
BEGIN
	writeln('veuille saisir la taille du tab');
	readln(taille);
	For i:=1 to taille do
	Begin
		For j:=1 to taille do
		Begin
			If i>=j then
			Begin
				tab1[i,j]:='O'; //remplissage du tableau par des O 
			End;
			If (i=j) OR (i=taille) OR (j=1) then  
			Begin
				tab1[i,j]:='X'; // contour du tab par des X 
			End;
			Write(tab1[i,j]);
		End;
		Writeln;
	End;
END;


Var
tab2:Array[1..carmax,1..carmax] of Char;
i,j,compteur:integer;

BEGIN
clrscr;
	iChar(tab2); // Appel de la première procedure
	writeln;
	readln; 

END.
