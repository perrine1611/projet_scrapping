1. dark_trader : En prenant pour source le site CoinMarketCap, fait un programme qui récupère le cours de toutes les cryptomonnaies et les enregistre bien proprement dans un array de hashs.

2. mairie_christmas : Va sur cet annuaire des mairies et récupère les adresses e-mails des mairies du Val d'Oise. Comme pour l'exercice précédent, tu devras enregistrer les données dans un array de hash

## 1. Présentation

L’idée est de mettre en relation des **artistes amateurs** à la recherche d’un **espace de création**, avec des particuliers disposant d’un local adapté, moyennant une rémunération. Les disciplines artistiques visées sont variées : peinture, sculpture, danse, musique, photographie...

**STUDIO** est un projet ayant pour but de valoriser et développer les pratiques artistiques en mettant à disposition des lieux adaptés. Nous voulons connecter les artistes avec des amateurs d’Art pour former une **communauté** réunie autour d’une même passion.


## 2. Parcours utilisateur

La parcours utilisateur diffère selon son objectif :
 
* Il propose un local à louer : connexion, ajout d’un local,  description, gestion des réservations

* Il recherche un local : recherche d’un local adapté à sa pratique artistique au plus près de chez lui, prise de contact avec l’hôte, connexion, demande de réservation

## 3. Concrètement et techniquement

STUDIO est une marketplace avec un fonctionnement semblable à celui de Airbnb.
 
* Barre de recherche avec ajout d’une localisation (nom de la ville ou géolocalisation), de dates et d’heures.
* Présentation des locaux: fiches avec photos (système d’ajout de photos) et description détaillée du lieu (critères, équipement ..) et prix
* Messagerie interne
* Gestion des réservations
* Paiement
* Notation et avis

### 3.1. Base de données

**Tables** :

* User (guest, Admin): un user peut avoir plusieurs réservations, plusieurs locaux au travers des réservations, plusieurs messages reçus, plusieurs messages envoyés

* Reservation : une réservation appartient à un user (guest) et à un local

* PrivateMessage : appartient à un user (recipient) et à un user (sender)

* Local : appartient à un user (admin), appartient à une ville, à plusieurs réservations

* Advice : appartient à un user (guest) et appartient à un local

* City : à plusieurs locaux, appartient à un user

### 3.2. Front

**Composants nécessaires pour le front:**

*HTML / CSS
*Javascript

### 3.3. Backend

** Besoins pour le Backend:**
* Ruby
* Rails
* PostgreSQL
* API de localisation: Google Maps
* API mailer: Gmail
* API de paiement: Stripe ?


### 3.4. Mes besoins techniques

Je dispose de compétences et d’expérience dans le **marketing** et le **e-commerce**, ainsi qu’une sensibilité artistique à travers ma pratique de la peinture et du dessin. Concernant mes compétences en code, je me débrouille en Ruby mais j’ai plus d’affinités pour le **front-end**.

Pour le reste de l’équipe, j’attends que cette idée de projet suscite chez eux un **réel engouement**. Pour les besoins techniques il faudrait une bonne **maîtrise du back-end**, ainsi que du front-end et des notions en webdesign seraient intéressantes.

## 4. La version minimaliste mais fonctionnelle qu'il faut avoir livré la première semaine

**Minimum Viable Product** :

* Système d’authentification
* Landing page
* Base de données
* Barre de recherche fonctionnelle
* Mailing automatique


## 5. La version que l'on présentera aux jury

**Pour la version final, ajout de** :

* Messagerie interne
* Paiement
* Notation et avis

## 6. Notre mentor
Qui est ton mentor ?

