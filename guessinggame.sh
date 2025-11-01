#!/bin/bash

# Fonction pour jouer au jeu
play_game() {
    local file_count=$(ls -1 | wc -l)
    local guess=-1

    echo "Bienvenue dans le jeu du devin !"

    while [ "$guess" -ne "$file_count" ]; do
        echo "Combien de fichiers se trouvent dans le répertoire actuel ?"
        read guess

        # Vérifier si l'entrée est un nombre
        if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
            echo "Veuillez entrer un nombre valide."
            continue
        fi

        if [ "$guess" -lt "$file_count" ]; then
            echo "Trop bas !"
        elif [ "$guess" -gt "$file_count" ]; then
            echo "Trop haut !"
        else
            echo "Félicitations ! Vous avez deviné correctement."
        fi
    done
}
