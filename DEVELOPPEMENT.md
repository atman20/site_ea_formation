# EA Formation — première version du site

Site responsive en français : identité violet profond / vert citron, illustration locale originale, sans ressources graphiques externes ni outil de suivi.

## Développement

Prérequis : Node.js 22.12+ ou 24 et npm.

```sh
npm ci
npm run dev -- --port 5173
```

```sh
npm run build
npm run preview -- --port 4173
```

Le serveur doit écouter sur `0.0.0.0` dans l’environnement cloud (déjà configuré dans les scripts). Les fichiers de production sont dans `dist/`. Pour l’hébergement, configurer une réécriture des chemins sans fichier vers `index.html` : la navigation utilise des routes côté navigateur. Le serveur Vite est destiné au développement, pas à l’hébergement public.

## Pages

Accueil `/`, catalogue `/formations`, CFA `/alternance`, entreprises `/entreprises`, financement `/financement`, centre `/centre`, qualité `/qualite`, handicap `/accessibilite`, contact `/contact`, mentions `/mentions`, confidentialité `/confidentialite`.

Le contenu des pages se trouve dans `src/main.js`, les styles dans `src/style.css`, l’illustration dans `public/atelier.svg`.

## État éditorial et fonctionnel

Le dépôt était vide. La consultation de `eaformation.fr` a été refusée par le proxy réseau (403). Les contenus de ce site n’ont donc pas été repris ni validés. Les pages institutionnelles sont un cadre éditorial à compléter, pas une attestation Qualiopi. Aucune certification, formation, adresse, résultat ou éligibilité à un financement n’est inventé.

Le formulaire effectue uniquement une validation locale : il ne transmet ni ne conserve de message. Il doit être raccordé à un service avant utilisation réelle, avec protection antispam, information RGPD et tests d’envoi. Aucun compte ni espace apprenant fonctionnel n’est inclus.

Voir `PUBLICATION.md` pour les informations nécessaires à la finalisation. Ne pas publier ce prototype comme un site officiel finalisé tant que les informations requises ne sont pas validées.
