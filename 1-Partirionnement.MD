# Choix du type de partirion, de la taille, du nombre via la commande cfdisk
![](https://github.com/Lucapouilly/Chekpoint-N1/blob/main/capture%20d'ecran/Cfdisk%201.png)
# commande pour formater et nommer la partition
mkfs -t ext4 -L DATA
# Modidication du fichier fstab
![](https://github.com/Lucapouilly/Chekpoint-N1/blob/main/capture%20d'ecran/add%20fstab.png)
# verification de la configuration fstab
![](https://github.com/Lucapouilly/Chekpoint-N1/blob/main/capture%20d'ecran/verifi%20de%20la%20configue%20fstab.png)
# Démontage de la partition swap
swapoff /dev/sda5
# Formatage partirion swap et nom de l'etiquette
 mkswap /dev/sdb2
   
 mkfs -L SWAP
# Montage de la partition swap
 swapon /dev/sdb2

# verification du disque sdb
![](https://github.com/Lucapouilly/Chekpoint-N1/blob/main/capture%20d'ecran/final.png)
