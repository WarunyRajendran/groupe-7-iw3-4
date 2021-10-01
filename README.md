## Table des matières

1. [Description](#description)
2. [Technologies](#technologies)
3. [Ressources](#ressources)
4. [Installation](#installation)
5. [Déploiement](#déploiement)
6. [Deux méthode de déploiement](#déploiement)
7. [Licence](#licence)

### Description
***

Ce projet a pour objectif de mettre en place les bonnes pratiques et facilite l'installation de l'application pour l'utilisateur.

### Technologies
***

Les technologies utilisées à la réalisation de ce projet :

* [Laravel Lumen](https://lumen.laravel.com/) -  Micro-framework de Laravel

* [Docker](https://www.docker.com/) - Plateforme pour développer, livrer, exécuter des applications

* [GitLab](https://www.gitlab.com/) - Outil de versionning

* [Github](https://www.github.com/) - Outil de versionning

* [Heroku](https://www.heroku.com) - Outil permettant le déploiement des applications

### Ressources
***

Voici les dépôts nécessaires à l'installation du projet

**Le dépôt d'origine :** https://gitlab.com/iw-intensive-week-1-2021/groupe-7-iw3-4

**Le dépôt de backup :** https://github.com/WarunyRajendran/groupe-7-iw3-4

### Installation
***

Se rendre dans le dépôt principale qui est : ```git@gitlab.com:iw-intensive-week-1-2021/groupe-7-iw3-4.git```

1. Cloner le dépôt via le lien ssh

```
$ git clone git@gitlab.com:iw-intensive-week-1-2021/groupe-7-iw3-4.git
```

2. Une fois le clone terminé, se rendre dans le dossier du projet

```cmd
$ cd groupe-7-iw3-4
```

3. Lancer Docker afin d'exécuter l'application. 

```docker
$ docker compose up -d --build
````

Cette commande va build l'image créée avec le dockerfile avant de up

4. Une fois le up docker compose terminé. Effectuer la migration pour la base de données

```docker
$ docker container exec -it groupe-7-iw3-4_php_1 php artisan migrate
```

5. Une fois la migration terminée, se rendre sur ce lien via le navigateur afin de voir le résultat attendu. 

```sh
localhost:8080
```

### Déploiement
***

Le déploiement va s'effectuer avec l'outil Heroku. 

1. Accéder au site de Heroku. Connectez-vous à votre compte, sinon créez-en un.

2. Une fois la création compte terminé vous pouvez vous connecter.

3. Pour créer une application, suivre les étapes suivantes :

> New -> Create new app

> Saisissez votre nom d'application

> Create app

4. Une fois l'application créée. Se rendre sur https://devcenter.heroku.com/articles/heroku-cli et suivre la documentation (selon votre OS) permettant l'installation de Heroku CLI. 

Heroku CLI va permettre de créer et gérer vos applications à l'aide des commandes sur le terminal.

### Deux méthodes de déploiement
***

**Application liée à Heroku Git**


Suivre les commandes suivantes :

```
$ heroku login
```

```
$ heroku git:remote -a votre-nom-app
```

Pour déployer les changements

```
$ git add .
```

```
$ git commit -am "make it better"
```

```
$ git push heroku master
```

Une fois le push effectué, vous pouvoir voir votre application.

> Open app

Situé en haut à gauche

```Fin application lié à Heroku Git```

**Application liée à un compte GitHub**

Suivre dans l'ordre les numéros présents sur l'image ci-dessous. Veillez à respecter le nom du repository comme indiqué à l'étape 3.

![alt text](https://i.ibb.co/fG5kp4F/Heroku-deploy.jpg)

Ensuite, choisissez la branche que vous souhaitiez déployer. 

> Deploy

```Fin application lié à Github```

```Votre déploiement est terminé :)```

### Licence
***

https://choosealicense.com/licenses/gpl-3.0/