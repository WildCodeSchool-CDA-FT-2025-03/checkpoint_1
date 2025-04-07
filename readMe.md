### Welcome on checkpoint 1

- Clone this project.
- Read the readme to the end
- Run `npm i`
- Create a branche <firstname>\_<lastname> and push it now on github (if it doesn't work, ask your trainer about it)
- Do all the exercices (2 parts)
- Commit your code for each differents steps you achieve

## Part One

Dans cet exercice il s'agira :

- Créer le diagramme de cas d'utilisation
- Modéliser puis de créer la base de données d'un job board à partir de la méthode Merise

Un job board est un site internet qui permet aux entreprises de publier des offres d'emploi.

Voici les contraintes de la base de données du job board :

- Un recruteur peut s'enregistrer sur le site
- Une fois enregistré, il peut créer une seule entreprise
- Il peut ensuite publier des offres au nom de l'entreprise
- Un candidat peut s'enregistrer sur le site
- Une fois enregistré il peut consulter les offres
- Il peut ensuite candidater à des offres
- Le candidat peut retrouver toutes les entreprises auxquelles il a candidaté
- Le recruteur peut retrouver les informations des candidats qui ont postulé à une offre
- Un recruteur a les attributs suivants : login & mot de passe
- Un candidat a les attributs suivants : login & mot de passe & nom & prénom & email & numéro de téléphone & texte de présentation
- Une entreprise a les attributs suivants : nom & description
- Une offre a les attributs suivants : titre du poste & descriptif du poste & ville du poste

1. Créer le diagramme UML de cas d'utilisation

2. Modélisation
   Modélise le MPD de la base de données en t'appuyant sur les 3 étapes de la méthode Merise. Pense à prendre un screenshot de la modélisation (MLD, MCD, MPD) puis la placer dans le dossier BDD.

3. SQL
   Crée la base de données sur ton PC ou en ligne, tu peux utiliser https://onecompiler.com/mysql pour cela.
   Dans tous les cas, utilise un fichier `...slq` pour écrire toutes les reqêtes nécessaires et joint le au repo

4. Remplis-la avec des données fictives en utilisant des requêtes SQL. (N'hésites pas à regarder des outils comme https://www.mockaroo.com/ pour cela).
   Ajoutes le ou les scripts `.sql` d'insertion au dossier BDD. (script de données différents)

5. Écris ensuite les requêtes SQL permettant d'obtenir les informations suivantes : (Nouveau fichier de requête à mettre dans le dossier BDD)

Toutes les offres d'emploi
Toutes les offres d'emploi d'une ville (Paris)
Les informations de tous candidats qui ont postulé à une offre précise
Les informations de tous les candidats qui ont postulé aux offres d'une entreprise

:warning: L'ensemble des requêtes SQL doit être consultable dans un fichier sur ton repo. Pense à commit pour chacune d'enter elles et push

## Part two

Dans la logique des algos de tableau réalisé jusqu'à ce jour, ajoute la méthodes `filter()` en y intégrant sa fonction de callBack.
N'oublie pas de mettre en place les tests unitaires.
