# 📌 Fiche mémo — Commandes Linux de base

## 📁 Navigation et fichiers

```bash
pwd          # Afficher le chemin du répertoire courant
ls           # Lister les fichiers du répertoire
ls -al       # Lister avec détails + fichiers cachés
cd /chemin   # Changer de répertoire
cd ..        # Remonter d'un niveau
mkdir nom    # Créer un dossier
rm fichier   # Supprimer un fichier
rm -r rep    # Supprimer un dossier (récursif)
cp a b       # Copier un fichier
mv a b       # Déplacer/renommer un fichier

## 📁 🔐 Permissions

chmod +x script.sh     # Rendre un script exécutable
chown user:group file  # Changer propriétaire
ls -l                  # Voir les permissions

## ⚙️ Processus & système

ps aux           # Lister tous les processus
top              # Vue dynamique des processus
htop             # Version améliorée de top (si installé)
kill PID         # Tuer un processus
uptime           # Temps depuis le dernier reboot
df -h            # Utilisation des disques
free -h          # Utilisation de la RAM
uname -a         # Infos sur le noyau et le système

## 🌐 Réseau

ip a              # Voir les interfaces réseau
ping google.com   # Tester la connectivité
ss -tulpn         # Ports en écoute
curl http://...   # Faire une requête HTTP simple

## 📦 Paquets (APT — Ubuntu/Debian)

sudo apt update               # Mettre à jour la liste des paquets
sudo apt upgrade              # Mettre à jour les paquets installés
sudo apt install nom_paquet   # Installer un paquet
sudo apt remove nom_paquet    # Supprimer un paquet

