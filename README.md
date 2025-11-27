# 🌍 Atlas Géographique - Application Mobile Interactive

Une application Flutter moderne et complète présentant un atlas géographique interactif, permettant de consulter la liste des pays et leurs détails.

## 🎯 Objectif

L'application **Atlas Géographique** offre une expérience utilisateur fluide et intuitive pour explorer les pays du monde. Elle permet aux utilisateurs de :

- 📋 Consulter la liste complète de 9 pays majeurs
- 🗺️ Visualiser les drapeaux nationaux en haute résolution
- 📊 Accéder aux informations essentielles : capitale, population, superficie et langues officielles
- 🎨 Naviguer facilement entre les pages avec une interface moderne et responsive
- ℹ️ Obtenir des informations sur l'application

## ✨ Caractéristiques Principales

### Écrans

#### 1. **Écran de Bienvenue** (`WelcomePage`)
- AppBar avec titre "Atlas Géographique"
- Image du globe terrestre
- Texte descriptif
- Bouton "Explorer" pour commencer l'aventure

#### 2. **Écran Liste des Pays** (`CountriesPage`)
- AppBar avec titre "Liste des Pays"
- Menu hamburger (Drawer) avec navigation
- ListView affichant les 9 pays avec :
  - Drapeau miniature
  - Nom du pays
  - Capitale
- Cliquable pour accéder aux détails

#### 3. **Écran Détails du Pays** (`CountryDetailPage`)
- AppBar avec bouton retour et nom du pays
- Grand drapeau national
- Informations détaillées :
  - Capitale
  - Population
  - Superficie
  - Langues officielles
- Design moderne avec cartes (Cards)

#### 4. **Écran À Propos** (`AboutPage`)
- Informations sur l'application
- Version 1.0.0
- Réalisé par Aymen
- Année 2025
- Fonctionnalités principales

### Navigation et Menu

#### Drawer (Menu latéral)
- **Accueil** → WelcomePage
- **À propos** → AboutPage
- **Quitter** → Dialogue de confirmation

## 📁 Structure du Projet

```
aymenmaiza/
├── lib/
│   ├── main.dart                          # Point d'entrée de l'application
│   ├── models/
│   │   └── country.dart                   # Modèle Country avec fromJson
│   ├── pages/
│   │   ├── welcome_page.dart              # Écran de bienvenue
│   │   ├── countries_page.dart            # Liste des pays + Drawer
│   │   ├── country_detail_page.dart       # Détails du pays
│   │   └── about_page.dart                # À propos
│   └── data/
│       └── pays_info.json                 # Données des 9 pays
├── assets/
│   └── images/
│       ├── globe.png                      # Image du globe
│       ├── france_mini.png / france_big.png
│       ├── tunisie_mini.png / tunisie_big.png
│       ├── bresil_mini.png / bresil_big.png
│       ├── italie_mini.png / italie_big.png
│       ├── canada_mini.png / canada_big.png
│       ├── australie_mini.png / australie_big.png
│       ├── allemagne_mini.png / allemagne_big.png
│       ├── espagne_mini.png / espagne_big.png
│       ├── afrique_sud_mini.png / afrique_sud_big.png
│       └── placeholder_mini.png / placeholder_big.png
├── android/                               # Configuration Android
├── ios/                                   # Configuration iOS
├── pubspec.yaml                           # Dépendances et configuration
└── README.md                              # Documentation

```

## 🚀 Installation et Configuration

### Prérequis

Assurez-vous d'avoir installé :
- **Flutter SDK** (version 3.8.1 ou supérieure)
- **Dart SDK** (inclus avec Flutter)
- Un éditeur approprié (VS Code, Android Studio, etc.)

### Étapes d'Installation

1. **Naviguer dans le répertoire du projet**
   ```bash
   cd path/to/aymenmaiza
   ```

2. **Récupérer les dépendances**
   ```bash
   flutter pub get
   ```

3. **Vérifier l'environnement Flutter**
   ```bash
   flutter doctor
   ```

4. **Lancer l'application**
   ```bash
   flutter run
   ```

   Ou avec une cible spécifique :
   ```bash
   flutter run -d chrome          # Pour le web
   flutter run -d android         # Pour Android
   flutter run -d ios             # Pour iOS
   ```

## 📊 Données Intégrées

L'application contient les 9 pays suivants avec leurs informations complètes :

| Pays | Capitale | Population | Superficie | Langue |
|------|----------|-----------|-----------|--------|
| 🇫🇷 France | Paris | 67 millions | 643 801 km² | Français |
| 🇹🇳 Tunisie | Tunis | 12 millions | 163 610 km² | Arabe |
| 🇧🇷 Brésil | Brasília | 215 millions | 8 515 767 km² | Portugais |
| 🇮🇹 Italie | Rome | 59 millions | 301 340 km² | Italien |
| 🇨🇦 Canada | Ottawa | 39 millions | 9 984 670 km² | Anglais |
| 🇦🇺 Australie | Canberra | 26 millions | 7 692 024 km² | Anglais |
| 🇩🇪 Allemagne | Berlin | 84 millions | 357 022 km² | Allemand |
| 🇪🇸 Espagne | Madrid | 47 millions | 505 990 km² | Espagnol |
| 🇿🇦 Afrique du Sud | Pretoria | 60 millions | 1 219 090 km² | Afrikaans |

## 🎨 Design et UI/UX

- **Couleur primaire** : Blue[800]
- **Icônes** : Material Design Icons
- **Thème** : Material Design 3
- **Responsive** : Adapté à tous les écrans
- **Navigation** : Navigation intuitive avec Drawer
- **Gestion d'erreurs** : Placeholders pour les images manquantes

## 🔧 Technologies Utilisées

- **Framework** : Flutter 3.24+
- **Langage** : Dart
- **Architecture** : Stateless et Stateful Widgets
- **Gestion des données** : JSON local (rootBundle)
- **Navigation** : Named routes

## 📝 Modèle Country

```dart
class Country {
  final String nom;
  final String capitale;
  final String population;
  final String superficie;
  final String langues;
  final String flagMini;
  final String flagBig;

  Country({
    required this.nom,
    required this.capitale,
    required this.population,
    required this.superficie,
    required this.langues,
    required this.flagMini,
    required this.flagBig,
  });

  factory Country.fromJson(Map<String, dynamic> json) { ... }
  Map<String, dynamic> toJson() { ... }
}
```

## 🎬 Screenshots (Placeholders)

### Écran 1 : Bienvenue
```
┌─────────────────────────────┐
│  Atlas Géographique    (=)  │
├─────────────────────────────┤
│                             │
│          🌍 Globe           │
│                             │
│  Découvrez les pays du...   │
│                             │
│      [  Explorer  ]         │
│                             │
└─────────────────────────────┘
```

### Écran 2 : Liste des Pays
```
┌─────────────────────────────┐
│  Liste des Pays       ☰     │
├─────────────────────────────┤
│ 🇫🇷 France        > Paris   │
│ 🇹🇳 Tunisie       > Tunis   │
│ 🇧🇷 Brésil        > Brasília│
│ ...                         │
└─────────────────────────────┘
```

### Écran 3 : Détails du Pays
```
┌─────────────────────────────┐
│ < France             (≡)    │
├─────────────────────────────┤
│                             │
│      🇫🇷 [Grand Drapeau]    │
│                             │
│ Capitale: Paris             │
│ Population: 67 millions     │
│ Superficie: 643 801 km²     │
│ Langues: Français           │
│                             │
│      [  Retour  ]           │
└─────────────────────────────┘
```

### Écran 4 : À Propos
```
┌─────────────────────────────┐
│ < À propos             (≡)  │
├─────────────────────────────┤
│          🌍                 │
│                             │
│ Atlas Géographique          │
│ Version: 1.0.0              │
│ Réalisé par: Aymen          │
│ Année: 2025                 │
│                             │
│ Description et fonctionnalités...│
└─────────────────────────────┘
```

## 🐛 Gestion des Erreurs

L'application gère gracieusement les erreurs :
- Images manquantes : Affiche une icône placeholder
- Données non trouvées : Message d'erreur approprié
- Navigation : Boutons de retour sur toutes les pages

## 🚦 Flux de Navigation

```
WelcomePage
    │
    ├─[Explorer]──→ CountriesPage
    │                   │
    │                ├─[Pays]──→ CountryDetailPage
    │                │              │
    │                │          [Retour]──┐
    │                │                     │
    │                ├─[Menu]────┐       │
    │                │            │       │
    │                │        ├─[Accueil]─────→ WelcomePage
    │                │        ├─[À propos]─→ AboutPage
    │                │        └─[Quitter]
    │                │
    │                └─[Menu]────→ AboutPage
    │
    └─[Menu]──→ AboutPage

```

## 📦 Dépendances

**Dépendances principales** (incluses par défaut) :
- `flutter: sdk: flutter` - Framework Flutter
- `cupertino_icons: ^1.0.8` - Icônes iOS

**Dépendances de développement** :
- `flutter_test: sdk: flutter` - Tests Flutter
- `flutter_lints: ^5.0.0` - Linting

## 🎓 Ce que vous apprendrez

En explorant ce projet, vous comprendrez :
- ✅ Structure d'une application Flutter complète
- ✅ Navigation avec named routes
- ✅ Gestion de Drawers et AppBars
- ✅ Chargement et traitement de JSON
- ✅ Création de modèles Dart (Classes)
- ✅ ListViews et Widgets personnalisés
- ✅ Gestion des assets (images, données)
- ✅ UI/UX avec Material Design 3
- ✅ Gestion d'erreurs et de placeholders

## 💡 Conseils d'Amélioration Future

Possibilités d'extension :
- 🔍 Ajout d'une fonction de recherche
- ⭐ Système de favoris
- 🌐 Intégration API pour données en temps réel
- 🗣️ Support multi-langue
- 🎨 Thème sombre
- 📊 Graphiques et statistiques
- 🎵 Hymnes nationaux
- 🗣️ Informations géographiques étendues

## 📄 Licence

Ce projet est créé à titre éducatif en 2025.

## 👤 Auteur

**Aymen** - 2025

---

## 🚀 Commandes Utiles

```bash
# Obtenir les dépendances
flutter pub get

# Lancer l'app
flutter run

# Build release
flutter build apk          # Android
flutter build ios          # iOS
flutter build web          # Web

# Tests
flutter test

# Vérifier la qualité du code
flutter analyze

# Format du code
dart format lib/

```

## 📞 Support

Pour toute question ou problème, n'hésitez pas à consulter la documentation officielle :
- 📖 [Flutter Documentation](https://flutter.dev/docs)
- 🐦 [Dart Documentation](https://dart.dev/guides)
- 🎮 [Material Design Guidelines](https://material.io/design)

---

**Bon développement! 🎉** Profitez de votre exploration de cette application Atlas Géographique interactive!
