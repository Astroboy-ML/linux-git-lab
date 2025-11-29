# 🧪 Linux Git Lab — Scripts & Workflow DevOps

Un mini-projet conçu pour pratiquer :

* les bases essentielles de **Linux**
* les scripts Bash (automation, backup, monitoring)
* un workflow **Git professionnel** (branches → commits → merges)
* l’utilisation d’une **VM Linux** via **SSH + VS Code**

Ce dépôt fait partie d’un parcours de montée en compétence vers le métier de **Platform Engineer**.

---

## 📁 Contenu du projet

```
linux-git-lab/

├── scripts/
│   ├── backup_home.sh         # Script de backup du HOME
│   ├── monitor_system.sh      # Script de monitoring système
│
└── README.md                  
```

---

# 🧰 Scripts Bash

## 🔹 1. `backup_home.sh`

Backup automatique du répertoire `/home/martin` dans `~/backups/` avec timestamp.

📦 Archive générée :

```
~/backups/home-backup-YYYY-MM-DD_HH-MM-SS.tar.gz
```

▶️ **Exécution :**

```bash
./scripts/backup_home.sh
```

---

## 🔹 2. `monitor_system.sh`

Affiche les informations système essentielles :

* utilisation CPU
* utilisation RAM
* espace disque
* uptime

▶️ **Exécution :**

```bash
./scripts/monitor_system.sh
```

---

# 🔀 Workflow Git utilisé

Ce projet utilise un workflow propre basé sur les **branches de fonctionnalité**, idéal pour travailler comme en entreprise.

### 🧱 Cycle complet :

```bash
# Initialise un nouveau dépôt Git dans le dossier courant
git init

# Crée une nouvelle branche de fonctionnalité et bascule automatiquement dessus
git checkout -b feature/ma_feature

# (tu codes)

# Ajoute tous les fichiers modifiés et nouveaux dans la "zone de staging"
git add .

# Crée un commit avec un message clair
git commit -m "feat: description"

# Retourne sur la branche principale (master)
git checkout master

# Fusionne la branche de fonctionnalité dans master
git merge feature/ma_feature

# Supprime la branche devenue inutile
git branch -d feature/ma_feature
```

---

# 🖥️ Environnement de travail

Ce projet est développé dans :

* une **VM Ubuntu** (VirtualBox)
* avec **SSH** activé sur port 2222
* et **VS Code Remote-SSH** pour coder de manière confortable

### Connexion SSH utilisée :

```bash
ssh -p 2222 martin@127.0.0.1
```

### Config VS Code :

```
Host ubuntu-vm
    HostName 127.0.0.1
    Port 2222
    User martin
```

---

# 🎯 Objectif pédagogique

Ce dépôt vise à maîtriser 3 compétences clés :

### 1️⃣ Linux

Manipulation du terminal, permissions, exécution de scripts, arborescences.

### 2️⃣ Bash scripting

Création de scripts utiles et réutilisables : backup, monitoring, logs…

### 3️⃣ Git workflow pro

Travailler avec des branches, commits propres, merges, organisation du code.

---

# 🚀 Améliorations futures possibles

* script d’analyse de logs (`analyze_logs.sh`)
* ajout d’un `Makefile` pour automatiser les tâches
* ajout d’un pipeline CI (GitHub Actions)
* ajout d’un script de health-check réseau
* packaging du projet en Docker
* monitoring avec Prometheus Node Exporter

---

# 📜 Licence

Projet éducatif, libre
