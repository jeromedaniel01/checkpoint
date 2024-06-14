#Quiz 

1)commande pour lister les utilisateurs 

cd /etc

cat passwd |grep home 

2)commande pour changer les droits du fichier myfile

chmod 744 myfile

3)comment exclure les fichiers PDF pour un git push 

Creer un fichier .gitignore 

ecrire une ligne *.pdf dans ce fichier  
enregistrer les modifications du fichier gitignore 

4)commande pour fusionner les branches main et test valide

s'assurer d'etre dans la branche main grace a la commande 

checkout main

inscrire 

git merge test_valide

puis 
git push origin main (si votre branche main se nomme origin)


5)creer un fichier bash (j'avoue avoir faux   malgre mes recherches )

ecrire dans ce fichier

echo "Malgré le prix élevé de 100$, il a dit "Bonjour !" au vendeur :
- "Bonjour est-ce que ce clavier fonctionne bien ?"
- "Evidemment ! On peut tout écrire avec, que ce soit des pipe | ou bien des backslash \\ !"
- "Même des tildes ~ ?"
- "Evidemment !"

enregistrer ce fichier au format .sh



6)commande pour mettre en avant gedit 

fg %1

7)couche 2 et couche 3 du modele OSI 

la couche 2 correspond a l'adresse mac du destinataire ou de l'expediteur , les switchs les ordinateurs
diffuse leur adresses mac sur la couche 2
ils servent a faire correpondre une adresse mac a une adresse IP d'une machine

la couche 3 correspond aux adresses IP des expediteurs et des destinataires 
ils servent entre autres pour le protocole de ping (ICMP)

8)Commandes correspondantes pour powershell  et linux 

cd linux = cd powershell
cp linux = copy powershell
mkdir linux = new-item pour un fichier et new-item -itemtype directory si c'est un dossier
ls linux = get-childitem pour powershell

9) qu'est ce que le Payload 

c'est la trame qui contient les datas envoyés hors identifications expediteur-destinataire (sauf si ces datas sont du protocol ICMP)

10) pourquoi les adresses ip sont remplacés par le cidr ?

pour une utilisation optimum des adresses IP , une meilleure gestion des adresses disponibles avec une economie significative de celles cidr
elle permet une gestion des sous reseaux avantageuse 





