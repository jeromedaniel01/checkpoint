#!/bin/bash

# Vérifier si l'utilisateur exécutant le script a les droits administratifs
if [ "$(id -u)" -ne 0 ]; then
    echo "Ce script doit être exécuté en tant que root ou avec sudo."
    exit 1
fi

# Vérifier si au moins un nom d'utilisateur est fourni
if [ "$#" -eq 0 ]; then
    echo "Il manque les noms d'utilisateurs en argument - Fin du script"
    exit 1
fi

# Boucle sur tous les arguments passés au script
for username in "$@"
do
    # Vérifier si l'utilisateur existe déjà
    if id "$username" &>/dev/null; then
        echo "L'utilisateur $username existe déjà"
    else
        # Créer l'utilisateur avec un répertoire personnel
        useradd -m "$username"

        # Vérifier si la création a réussi
        if [ $? -eq 0 ]; then
            # Définir un mot de passe par défaut (à changer après première connexion)
            echo "$username:password" | chpasswd

            # Expiration du mot de passe pour forcer le changement lors de la première connexion
            chage -d 0 "$username"

            echo "L'utilisateur $username a été créé"
        else
            echo "Erreur à la création de l'utilisateur $username"
        fi
    fi
done