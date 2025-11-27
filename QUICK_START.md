# 🚀 GUIDE DE DÉMARRAGE RAPIDE - Atlas Géographique

## ⚡ Commandes Essentielles

### 1️⃣ Préparation (À faire une seule fois)
```bash
cd C:\Users\aymen\Desktop\aymendevoir\aymenmaiza
flutter pub get
```

### 2️⃣ Lancer l'application
```bash
flutter run
```

### 3️⃣ Options de démarrage
```bash
# Sur Chrome (Web)
flutter run -d chrome

# Sur Android (si connecté)
flutter run -d android

# En mode release
flutter run --release
```

---

## 🏗️ Structure Rapide

```
lib/
  ├── main.dart                    # Entrée de l'app
  ├── models/
  │   └── country.dart             # Modèle Country
  ├── pages/
  │   ├── welcome_page.dart        # Accueil
  │   ├── countries_page.dart      # Liste pays
  │   ├── country_detail_page.dart # Détails
  │   └── about_page.dart          # À propos
  └── data/
      └── pays_info.json           # 9 pays
```

---

## 🎮 Comment ça marche ?

1. **Écran de Bienvenue** → Cliquez "Explorer"
2. **Liste des Pays** → Sélectionnez un pays
3. **Détails du Pays** → Consultez les infos
4. **Menu** (☰) → Allez à l'Accueil ou À propos

---

## 🎨 Couleurs & Styles

- **Couleur primale** : Bleu (Colors.blue[800])
- **Icônes** : Material Design
- **Thème** : Material 3

---

## 🛠️ Troubleshooting

| Problème | Solution |
|----------|----------|
| Les images ne s'affichent pas | C'est normal! Des placeholders apparaissent |
| Erreur "flutter not found" | Installez Flutter SDK |
| App ne démarre pas | Lancez `flutter pub get` |
| Port occupé | Utilisez `flutter run -d <device>` |

---

## 📱 Appareils Supportés

✅ Android 5.0+
✅ iOS 11.0+
✅ Web (Chrome, Firefox, Safari)

---

## 🎓 Fichiers Importants à Consulter

1. **lib/main.dart** - Point d'entrée et configuration routes
2. **lib/models/country.dart** - Structure de données
3. **lib/pages/countries_page.dart** - Drawer et ListView
4. **lib/data/pays_info.json** - Données des pays
5. **pubspec.yaml** - Configuration et assets

---

## 💾 Raccourcis Clavier (VS Code)

| Touche | Action |
|--------|--------|
| `Ctrl+Shift+R` | Hot reload |
| `Ctrl+Shift+F5` | Hot restart |
| `Ctrl+K Ctrl+C` | Commenter |
| `Alt+Shift+F` | Formater |

---

## 📚 Pour Aller Plus Loin

```bash
# Analyser le code
flutter analyze

# Formater le code
dart format lib/

# Vérifier l'environnement
flutter doctor

# Mettre à jour les packages
flutter pub upgrade
```

---

**Prêt ? Lancez : `flutter run` 🚀**
