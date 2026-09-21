# Bob Premium Package for i (PPi) — Cas d'usage clés

**Bob PPi** étend Bob IDE avec une connaissance native d'IBM i : RPG, CL, COBOL, DDS, Db2 for i, IWS, QSYS et IFS.
Bob PPi s'appuie sur un ensemble de **skills** (instructions spécialisées) et de **workflows** (processus multi-étapes) qui s'activent automatiquement selon le contexte de la demande.

---

## ✓ Compréhension d'application

Bob lit et explique en langage naturel un programme RPG ou COBOL de milliers de lignes — logique, flux de données, fichiers utilisés.

> *"Explique ce que fait ce module de facturation."*

**Skills activés :** `rpg-primer-basics` → `rpg-ile-free` · `cobol-primer-basics` · `dds-primer-basics`
**Workflow disponible :** *Business Rules Extraction* — analyse structurée du code source et génération d'un rapport de compréhension.

---

## ✓ Génération de documentation

Bob génère automatiquement la documentation technique d'un source — procédures, paramètres, logique métier, diagrammes Mermaid.

> *"Documente HELLOSRV.rpgle en Markdown."*

**Skills activés :** `rpg-primer-basics` · `cl-primer-basics`
**Workflow disponible :** *Business Rules Extraction* — produit un livrable Markdown structuré directement exploitable.

---

## ✓ Extraction de règles métier

Bob identifie et formalise les règles enfouies dans le code — conditions, calculs, validations, fichiers DDS référencés.

> *"Quelles sont les règles de calcul de remise dans ce programme ?"*

**Skills activés :** `rpg-primer-basics` · `dds-primer-basics` · `cobol-primer-basics`
**Workflow disponible :** *Business Rules Extraction* — workflow dédié qui parcourt les sources, extrait les décisions logiques et génère un rapport structuré des règles métier.

---

## ✓ Analyse de l'environnement IBM i

Bob interroge le système via SQL (`QSYS2`, `SYSTOOLS`) et CL pour analyser : bibliothèques, objets, jobs, autorités, serveurs IWS actifs.

> *"Liste les services IWS actifs et leur statut sur ce système."*

**Skills activés :** `iws-admin` · `cl-primer-basics` → `cl-best-practices`
**Outils Bob :** `execute_sql_statement` (QSYS2.OBJECT_STATISTICS, QSYS2.ACTIVE_JOB_INFO) · `execute_cl_command`

---

## ✓ Assistance SQL et optimisation

Bob écrit, corrige et optimise des requêtes Db2 for i — SQL services, index advice, requêtes embarquées en RPG (`EXEC SQL`), curseurs.

> *"Réécris cette jointure pour utiliser l'index sur CUSTNO."*

**Skills activés :** `db2-sql-primer`
**Outils Bob :** `execute_sql_statement` · `search_sql_examples` + `fetch_sql_example` pour les exemples SQL services documentés.

---

## ✓ Génération de spécifications techniques

Bob produit un livrable complet : PCML, commandes de déploiement IWS, format JSON attendu, instructions de compilation et de test.

> *"Génère les specs pour exposer GETGREETING en REST via IWS."*

**Skills activés :** `iws-admin` · `rpg-primer-basics` → `rpg-ile-free`
**Outils Bob :** `execute_pase_command` (installWebService.sh) · `write_stream_file` (PCML) · `execute_cl_command` (CRTSRVPGM)

---

## ✓ Analyse de dépendances

Bob cartographie qui appelle quoi — modules, service programs, fichiers physiques — avant toute modification ou refactorisation.

> *"Quels programmes sont impactés si je change la signature de GETGREETING ?"*

**Skills activés :** `rpg-primer-basics` · `cl-primer-basics`
**Workflow disponible :** *Business Rules Extraction* — inclut l'analyse des dépendances inter-objets.
**Outils Bob :** `execute_sql_statement` (QSYS2.BOUND_MODULE_INFO, QSYS2.PROGRAM_INFO) · `search_qsys`

---

## Tableau récapitulatif

| Cas d'usage | Exemple de prompt | Skills activés | Workflow | Outils Bob |
|---|---|---|---|---|
| ✓ Compréhension d'application | *"Explique ce module de facturation"* | `rpg-primer-basics` `cobol-primer-basics` `dds-primer-basics` | Business Rules Extraction | `read_member` `search_qsys` |
| ✓ Génération de documentation | *"Documente HELLOSRV.rpgle en Markdown"* | `rpg-primer-basics` `cl-primer-basics` | Business Rules Extraction | `read_member` `write_file` |
| ✓ Extraction de règles métier | *"Quelles sont les règles de remise ?"* | `rpg-primer-basics` `dds-primer-basics` `cobol-primer-basics` | Business Rules Extraction | `read_member` `search_qsys` |
| ✓ Analyse de l'environnement IBM i | *"Liste les services IWS actifs"* | `iws-admin` `cl-primer-basics` | — | `execute_sql_statement` `execute_cl_command` |
| ✓ Assistance SQL et optimisation | *"Optimise cette jointure sur CUSTNO"* | `db2-sql-primer` | — | `execute_sql_statement` `search_sql_examples` |
| ✓ Génération de spécifications techniques | *"Génère les specs IWS pour GETGREETING"* | `iws-admin` `rpg-primer-basics` | — | `execute_pase_command` `write_stream_file` `execute_cl_command` |
| ✓ Analyse de dépendances | *"Qui appelle GETGREETING ?"* | `rpg-primer-basics` `cl-primer-basics` | Business Rules Extraction | `execute_sql_statement` `search_qsys` |

---

*Pour en savoir plus : [bob.ibm.com/docs/ide/premium-packages/bob-for-i/bob-for-i-index](https://bob.ibm.com/docs/ide/premium-packages/bob-for-i/bob-for-i-index)*
