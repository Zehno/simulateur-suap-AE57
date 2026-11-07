# Guide d'installation — Scope SUAP V1

Tu peux réaliser l'installation depuis un ordinateur. Les noms des boutons peuvent légèrement varier selon l'interface.

## 1. Créer le dépôt GitHub (gratuit)
1. Crée un compte sur https://github.com si tu n'en as pas.
2. Clique sur **New repository**.
3. Nom : `scope-suap`.
4. Choisis **Public**, puis **Create repository**.
5. Dans le dépôt, clique sur **Add file > Upload files**.
6. Dépose `index.html` et valide avec **Commit changes**.

## 2. Activer GitHub Pages
1. Ouvre l'onglet **Settings** du dépôt.
2. Dans le menu latéral, ouvre **Pages**.
3. Dans **Build and deployment**, choisis **Deploy from a branch**.
4. Branche : `main`; dossier : `/ (root)`.
5. Enregistre. GitHub affiche l'adresse publique du site après quelques instants.

Conserve cette adresse : elle ne dépend pas du téléphone utilisé.

## 3. Créer le projet Supabase
1. Crée un compte sur https://supabase.com et un projet gratuit.
2. Dans le projet, ouvre **SQL Editor > New query**.
3. Copie-colle le contenu du fichier `supabase.sql`, puis clique sur **Run**.
4. Ouvre **Project Settings > API** (ou **Data API / API Keys** selon l'interface).
5. Copie l'URL du projet et la clé publique `anon` / `publishable`. N'utilise jamais `service_role` / `secret`.

## 4. Configurer chaque appareil
1. Ouvre l'adresse GitHub Pages sur le téléphone formateur.
2. Ajoute `?mode=control` à la fin de l'adresse pour ouvrir le pilotage.
3. Va dans **Réglages**.
4. Renseigne l'URL Supabase et la clé publique, puis **Enregistrer la configuration**.
5. Génère un code de session ou saisis-en un, puis clique **Connecter / rejoindre**.
6. Sur l'appareil stagiaire, ouvre l'adresse GitHub Pages sans `?mode=control`, va dans **Réglages**, saisis les mêmes paramètres Supabase et le même code, puis connecte.

## 5. Utilisation
- Le formateur pilote FC, FR, PAS, PAD, SpO₂, EtCO₂, température et rythme ECG depuis son panneau.
- Le stagiaire consulte les courbes et les valeurs, navigue dans l'ECG 12D, gèle/reprend les courbes, déclenche une mesure TA simulée et active/désactive les alarmes.
- Les scénarios prédéfinis sont lancés depuis l'interface formateur. Tu peux aussi construire une chronologie en ajoutant les étapes actuelles, puis l'exporter en JSON.
- Adulte / pédiatrie est sélectionnable dans les réglages.

## 6. Sécurité et usage
Cette V1 est un prototype pédagogique. La table SQL autorise l'accès anonyme pour simplifier la synchronisation sans compte. Le code de session n'est pas une authentification forte : ne saisis aucune donnée réelle, nominative ou médicale. Pour un usage partagé à plus grande échelle, il faudra ajouter une authentification et des règles d'accès par session.

Aucun signal ne doit être interprété comme un examen médical. Les tracés ECG, pléthysmographiques et capnographiques sont synthétiques. Ce simulateur ne doit jamais être connecté à un patient réel.
