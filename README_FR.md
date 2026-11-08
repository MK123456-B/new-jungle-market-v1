# NEW JUNGLE MARKET V1 — socle de développement

Ce dossier est un premier socle technique, pas la marketplace complète.

## Prérequis
Node.js LTS, npm, Git et un projet Supabase. Pour Android, utiliser Expo Go ou un émulateur.

## Configuration Supabase
1. Créer un projet Supabase.
2. Exécuter `supabase/migrations/001_profiles_businesses.sql` dans SQL Editor.
3. Copier l'URL et la clé publique Supabase dans les fichiers `.env.example` copiés en `.env.local` (Web) et `.env` (Mobile).
4. Ne jamais exposer la clé `service_role`.

## Web
`cd apps/web && npm install && cp .env.example .env.local && npm run dev`

## Android
`cd apps/mobile && npm install && cp .env.example .env && npx expo start`

Acode peut éditer les fichiers. L'installation et la compilation sont plus fiables avec Node.js sur ordinateur.

## Git
À la racine : `git init && git add . && git commit -m "Initialisation NEW JUNGLE MARKET V1"`

## Limites
Le socle contient les applications de départ, les types partagés et les premières tables profils/boutiques. Les abonnements, catalogue, commandes, paiements, livraisons, messagerie, sponsoring, administration complète, tests et déploiement restent à construire et vérifier.
