#!/bin/bash


    # verifie si des arguments on ete donne au lancement du script
    if [ "$#" -eq 0 ]; 
    then
        echo "Il manque les noms d'utilisateurs en argument - Fin du script"
        exit 1
    fi
        # pour chaque agrugments donne au script 
        for user in "$@"; 
        do
                # verifie l'existance de chaque utilisateur en essayant d'aller chercher les information de chaque compte utilisateur
                if id "$user"&>/dev/null;
                then
                    #si la commande id donne un resultat alors indique le message :
                    echo "L'utilisateur $user existe deja"
                else
                    #si non cree les utilisateurs 
                    sudo useradd $user&>/dev/null
                    
                    # test a nouveau la comande id pour verifier si l'utilisateur a bien ete cree 
                    if id "$user"&>/dev/null;
                    then
                        #si la commande id donne un resultat alors indique le message :
                        echo "L'utilisateur $user a bien ete cree"
                    else
                        #si la commande ne sort rien indique le message :
                        echo "Erreur à la création de l'utilisateur $user"
                    fi
                fi
        done