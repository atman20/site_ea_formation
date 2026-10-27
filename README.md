# site_ea_formation
Site internet de EA formation

## Télécharger et visualiser le nouveau site

1. Cliquez sur **Code → Download ZIP** sur GitHub, puis décompressez l’archive.
2. Ouvrez **local-site/index.html** dans votre navigateur (JavaScript activé).
3. Les 11 pages HTML, le CSS, le JavaScript et l’illustration sont dans `local-site/`.

Aucun hébergement ni installation npm n’est nécessaire. Une archive autonome est également disponible : [ea-formation-local.zip](ea-formation-local.zip).

- [Guide d’utilisation locale](local-site/LISEZ-MOI.md)
- [Schéma PostgreSQL facultatif](local-site/sql/schema.sql)
- [Modèles de requêtes SQL pour une future API](local-site/sql/queries.sql)
- [Informations à valider avant publication](local-site/PUBLICATION.md)
- [Sources et développement avec Vite (facultatif)](DEVELOPPEMENT.md)

Le formulaire est une démonstration : il ne transmet et n’enregistre aucun message. Le SQL n’est pas connecté au navigateur ; une API serveur sera nécessaire pour l’utiliser. Les informations officielles, les formations et les preuves Qualiopi restent à vérifier avant toute publication publique.

L’ajout des fichiers dans ce dépôt ne déploie pas le site et n’active pas GitHub Pages.
