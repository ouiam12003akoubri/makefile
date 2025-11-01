# makefile

README.md: guessinggame.sh
	echo "# Projet : Jeu de devinette" > README.md
	echo "" >> README.md
	echo "## Date et heure d'exécution du make" >> README.md
	date >> README.md
	echo "" >> README.md
	echo "## Nombre de lignes dans guessinggame.sh" >> README.md
	wc -l < guessinggame.sh >> README.md
	echo "" >> README.md
	echo "## Description" >> README.md
	echo "Ce projet est un petit jeu en Bash où l'utilisateur doit deviner le nombre de fichiers présents dans le répertoire courant." >> README.md

clean:
	rm -f README.md
