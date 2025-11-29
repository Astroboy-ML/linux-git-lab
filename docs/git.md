# 📌 Fiche mémo — Workflow Git de base

## 🟩 Initialiser un nouveau dépôt

```bash
git init
```

## 🟦 Vérifier l’état du dépôt (fichiers suivis / non suivis)

```bash
git status
```

## 🟧 Créer une branche de fonctionnalité

> Permet de développer une nouvelle feature sans modifier la branche principale.

```bash
git checkout -b feature/ma_feature
```

## 🛠️ Développement

> Tu modifies ou crées des fichiers dans cette branche.

## 📥 Ajouter les modifications dans le staging

```bash
git add .
```

## 📝 Créer un commit propre et clair

```bash
git commit -m "feat: description"
```

## 🔄 Retourner sur la branche principale

```bash
git checkout master
```

## 🔀 Fusionner la branche de feature dans master

> Si aucune modification ne se chevauche → fast-forward propre.

```bash
git merge feature/ma_feature
```

## 🧹 Supprimer la branche devenue inutile

```bash
git branch -d feature/ma_feature
```
