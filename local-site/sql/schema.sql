-- Schéma prévu pour PostgreSQL 14 ou supérieur.
-- À exécuter dans une base locale dédiée. Aucune donnée de démonstration.
-- Le site statique n'utilise pas cette base : une API serveur reste nécessaire.
BEGIN;
CREATE TABLE IF NOT EXISTS contact_requests (
    id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    full_name varchar(120) NOT NULL CHECK (length(trim(full_name)) > 0),
    email varchar(200) NOT NULL CHECK (position('@' IN email) > 1),
    subject varchar(100) NOT NULL CHECK (subject IN (
        'formation', 'alternance', 'entreprise', 'financement',
        'amenagement', 'reclamation', 'autre'
    )),
    message varchar(4000) NOT NULL CHECK (length(trim(message)) > 0),
    status varchar(20) NOT NULL DEFAULT 'nouveau'
        CHECK (status IN ('nouveau', 'en_cours', 'traite', 'archive')),
    created_at timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX IF NOT EXISTS contact_requests_status_created_idx
    ON contact_requests (status, created_at DESC);
COMMIT;
-- Ne jamais exposer PostgreSQL au navigateur ni y mettre ses identifiants.
-- Définir les habilitations, l'information RGPD et la durée de conservation
-- avant de collecter de vraies demandes. Ne pas collecter de données médicales.
