#Exercice 1

##creation des partitions 

1ere partition :

fdisk -l

fdisk /dev/sdb

tapez n pour nouvelle partitions

choisir  p pour partition principale

entrez un numero pour la partition  ici : 1

cliquez sur entrée  pour les valeurs par defaut 

choisir la taille de la partition   : +6G pour partition de 6 Go

tapez t pour choisir le type de partition

choisir le numero de partition (:1)

choisir 83 pour le type ext4 

2eme partition :

tapez n 

tapez p

rentrez un numero de partition ici : 2 

cliquez sur entrée  pour les valeurs par defaut

cliquez entrée pour utiliser le reste du disque 

tapez t pour choisir le type de partition

choisir le numero de partition (:2)

choisir 82 pour une partition swap

tapez w pour ecrire la table de partition 

formatez la partition ext4 (:1)

mkfs.ext4 -L DATA /dev/sdb1

formatez la partiton swap 

mkswap -L SWAP /dev/sdb2

activez la partition sdb2

swapon /dev/sdb2

creer un point de montage pour la partition sdb1 (ext4)

mkdir /mnt/DATA

montez la partition

mount /dev/sdb1 /mnt/DATA

ajout des partitions au fichier fstab

ouvrir le fichier fstab

nano /etc/fstab

ajoutez ces lignes en bas  du fichier fstab

/dev/sdb1 /mnt/DATA  ext4   defaults   0   2 
/dev/sdb2    none    swap    sw        0   0

verification des partitions au montage
demontez la partition 

umount  /mnt/DATA

montage de la partition 

mount -a

verification du montage de la partition sdb1

df -h

verification de l'activation de sdb2

swapon --show





