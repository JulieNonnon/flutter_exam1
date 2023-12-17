# Difficultés rencontrées et réussites:


## Problèmes basics de style:

👀 Background bleu du titre "I. Nos Régions" ne prend pas toute la largeur de l'écran, alors que le bouton "Rechercher Par Région" prend lui toute la largeur.

👀 Les éléments du body sont tous entassés en haut de l'écran: je n'ai pas réussi à mettre en place l'équivalent d'une flexbox (flex direction column, justify content space-around). Je pense que ce sont les mainAxisAlignement qui entrent en jeu, mais je n'ai pas réussi à correctement les utiliser dans ce contexte.

👀 Le background gris des éléments composants le body n'a pas été mis en place au bon endroit. On voit que le background géréral de l'application est encore blanc.


## Problème concernant la vidéo:

👀 Je n'ai pas réussi a faire apparaitre la vidéo sur la page Home_Page.
Je me suis inspirée de la doc Flutter pour l'insertion de la vidéo en assets, avec quelques correctifs depuis chatGPT lors d'erreurs de compilation. Quand le composant de la vidéo est appelé sur la pahe Home_Page, ce dernier fait disparaitre les autres éléments du body, laissant une page vide. 
Le composant video a été commenté pour laisser apparaitre les autres éléments, le code de la mise en place reste consultable dans Video_Hero.

Source doc Flutter consultée:
https://docs.flutter.dev/cookbook/plugins/play-video#1-add-the-video_player-dependency


## Menu Burger et son Drawer fonctionnels

👌 Le menu burger est fonctionnel: il s'ouvre via un drawer qui présente les 3 éléments de navigation, et se referme quand on clique a l'exterieur du drawer.
Pour des raisons de test au niveau de la navigation, tous les éléments renvoient a la page Region_Page, en tant que lien placeholder. 
Je me suis inspirée de la doc Flutter pour la création de cette fonctionnalité, avec quelques va-et-vient vers chatGPT pour des correctifs sur des détails empéchant la compilation.

Source doc Flutter consultée:
https://docs.flutter.dev/cookbook/design/drawer



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