# EA Formation — fichiers locaux autonomes

Ce dossier contient 11 pages HTML, un fichier CSS, un fichier JavaScript et une illustration SVG locale. Aucun npm, Vite ou hébergement externe n'est nécessaire.

## Visualiser

Ouvrez `index.html` directement dans votre navigateur. Les liens entre pages fonctionnent aussi en ouverture locale. JavaScript doit être activé.

Option recommandée si vous disposez de Python : depuis ce dossier, lancez :

```sh
python3 -m http.server 8080 --bind 127.0.0.1
```

Puis ouvrez l'adresse locale du serveur dans votre navigateur. Le serveur écoute uniquement sur votre ordinateur. Arrêt : Ctrl+C. Aucun déploiement n'est effectué.

## Modifier

- `assets/site.js` : contenu et navigation communs ; chaque HTML sélectionne sa page avec `data-page`.
- `assets/style.css` : design et adaptation aux écrans.
- `assets/atelier.svg` : illustration.
- Les fichiers HTML : structure de chaque point d'entrée.

## SQL (facultatif)

Vous n'avez pas besoin d'une base pour visualiser le site. `sql/schema.sql` crée une table de demandes de contact sur PostgreSQL 14+. Dans une base locale dédiée existante :

```sh
psql -d ea_formation -f sql/schema.sql
```

`sql/queries.sql` contient des modèles de requêtes paramétrées pour une future API. Il ne doit pas être exécuté en bloc. PostgreSQL n'est pas fourni avec ces fichiers.

Le formulaire reste une démonstration et n'enregistre rien. Une API avec validation côté serveur, protection antispam et authentification pour la consultation sera nécessaire pour utiliser la base. Aucun identifiant de base ne doit figurer dans les fichiers JavaScript du navigateur.

## Contenus à finaliser

Les informations officielles et les preuves Qualiopi n'ont pas encore été vérifiées. Consulter `PUBLICATION.md` : catalogue, contacts, certification, résultats, documents contractuels et mentions légales restent à valider. Il n'y a aucun traceur ni ressource externe intégrée.
