-- Modèles de requêtes PostgreSQL destinés à une future API serveur.
-- Les paramètres $1, $2… doivent être liés par le pilote PostgreSQL.
-- Ce fichier n'est pas un script de données à exécuter tel quel.

-- Création d'une demande après validation côté serveur :
INSERT INTO contact_requests (full_name, email, subject, message)
VALUES ($1, $2, $3, $4)
RETURNING id, created_at;

-- Liste paginée, accessible uniquement à un administrateur autorisé :
SELECT id, full_name, email, subject, status, created_at
FROM contact_requests
ORDER BY created_at DESC
LIMIT $1 OFFSET $2;

-- Consultation d'une demande :
SELECT id, full_name, email, subject, message, status, created_at, updated_at
FROM contact_requests WHERE id = $1;

-- Changement d'état :
UPDATE contact_requests
SET status = $2, updated_at = CURRENT_TIMESTAMP
WHERE id = $1
RETURNING id, status, updated_at;

-- Suppression selon la politique de conservation validée :
DELETE FROM contact_requests WHERE id = $1;
