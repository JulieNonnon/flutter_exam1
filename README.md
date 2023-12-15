# flutter_examen1

L'énoncé vous sera fourni séparément.

# Quelques notes Flutter:

Lien installation Flutter:
https://docs.flutter.dev/

Lien installation Android Studio:
https://developer.android.com/studio


Installation flutter: dézipper le zip flutter et copier le dossier flutter dans:
c:\\framework\front\flutter\bin
copier cette adresse dans le path des variables d'environnement user

On peut lancer un projet depuis Android Studio:
nouveau projet par default, aller dans "tool", "sdk manager", "sdk tool", cocher toutes les options

# Quelques extensions vscode utiles pour Flutter:

Flutter
Dart
Bloc

# Quelques commandes Flutter:

Dans vscode, les commandes spéciales peuvent se lancer avec "ctrl + shift + P"

>flutter doctor
vérifie l'environnement Flutter et affiche un rapport sur l'installation de Flutter, comme les éléments manquant ou ayant besoin d'être configurés en amont
plus d'info : https://docs.flutter.dev/get-started/install/windows

>developer: window
??? fonctionnalité à vérifier ???

Créer un dossier "testflutter" par exemple et l'ouvrir sur vscode

>flutter create .
va créer tous les éléments nécessaire à un projet Flutter dans mon dossier "testflutter"

Le point d'entrée de Flutter se trouve à:
lib > main.dart 

>flutter run
lance l'application Flutter (via une page web du navigateur)

NOTE: possibilité de dépendances manquantes, si c'est le cas essayer la commande:
>flutter pub upgrade --major-versions

# Emulateur Android depuis VSCode

lancer avec "ctrl + shift + P"
>flutter: select device
selectionner un emulateur "cold boot" (démarrage)

NOTE: s'assurer que la commande "flutter run" soit bien lancée et ait terminée de tourner avant de lancer un emulateur.

Quand l'émulation est lancée, renseigner "r" pour rebooter/actualiser l'affichage après modifs


# Compléments Flutter

>flutter pub add scoped_model
A Widget that passes a Reactive Model to all of it's children