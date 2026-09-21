# Bob Premium Package for i (PPi) — Key Use Cases

**Bob PPi** extends Bob IDE with native IBM i knowledge: RPG, CL, COBOL, DDS, Db2 for i, IWS, QSYS and IFS.
Bob PPi relies on a set of **skills** (specialized instruction sets) and **workflows** (multi-step automated processes) that activate automatically based on the context of your request.

---

## ✓ Application Understanding

Bob reads and explains in plain language an RPG or COBOL program thousands of lines long — logic, data flow, files used.

> *"Explain what this billing module does."*

**Skills activated:** `rpg-primer-basics` → `rpg-ile-free` · `cobol-primer-basics` · `dds-primer-basics`
**Available workflow:** *Business Rules Extraction* — structured source code analysis and generation of a comprehension report.

---

## ✓ Documentation Generation

Bob automatically generates technical documentation from source code — procedures, parameters, business logic, Mermaid diagrams.

> *"Document HELLOSRV.rpgle in Markdown."*

**Skills activated:** `rpg-primer-basics` · `cl-primer-basics`
**Available workflow:** *Business Rules Extraction* — produces a structured Markdown deliverable ready to use.

---

## ✓ Business Rule Extraction

Bob identifies and formalizes rules buried in the code — conditions, calculations, validations, referenced DDS files.

> *"What are the discount calculation rules in this program?"*

**Skills activated:** `rpg-primer-basics` · `dds-primer-basics` · `cobol-primer-basics`
**Available workflow:** *Business Rules Extraction* — dedicated workflow that scans sources, extracts decision logic, and generates a structured business rules report.

---

## ✓ IBM i Environment Analysis

Bob queries the system via SQL (`QSYS2`, `SYSTOOLS`) and CL to analyze: libraries, objects, jobs, authorities, active IWS servers.

> *"List the active IWS services and their status on this system."*

**Skills activated:** `iws-admin` · `cl-primer-basics` → `cl-best-practices`
**Bob tools:** `execute_sql_statement` (QSYS2.OBJECT_STATISTICS, QSYS2.ACTIVE_JOB_INFO) · `execute_cl_command`

---

## ✓ SQL Assistance and Optimization

Bob acts as an embedded **Db2 for i Expert** (*Expert in a Box*): it analyzes queries, detects performance issues, suggests fixes, and leverages IBM i SQL services to validate.

> *"Rewrite this join to use the index on CUSTNO."*
> *"Are there any full table scans in this program?"*

**PPi slash command:** `/review_sql` — analyzes a query or the active file and produces a full diagnostic: missing indexes, filter selectivity, `EXEC SQL` anti-patterns in RPG, `SYSTOOLS.ACT_ON_INDEX_ADVICE` recommendations.
**Skills activated:** `db2-sql-primer`
**Bob tools:** `execute_sql_statement` · `search_sql_examples` · `fetch_sql_example`

> *Documentation: [bob.ibm.com/docs/ide/premium-packages/bob-for-i/slash-commands](https://bob.ibm.com/docs/ide/premium-packages/bob-for-i/slash-commands)*

---

## ✓ Technical Specification Generation

Bob produces a complete deliverable: PCML, IWS deployment commands, expected JSON format, compile and test instructions.

> *"Generate the IWS specs to expose GETGREETING as a REST service."*

**Skills activated:** `iws-admin` · `rpg-primer-basics` → `rpg-ile-free`
**Bob tools:** `execute_pase_command` (installWebService.sh) · `write_stream_file` (PCML) · `execute_cl_command` (CRTSRVPGM)

---

## ✓ Dependency Analysis

Bob maps who calls what — modules, service programs, physical files — before any change or refactoring.

> *"Which programs are impacted if I change the signature of GETGREETING?"*

**Skills activated:** `rpg-primer-basics` · `cl-primer-basics`
**Available workflow:** *Business Rules Extraction* — includes inter-object dependency analysis.
**Bob tools:** `execute_sql_statement` (QSYS2.BOUND_MODULE_INFO, QSYS2.PROGRAM_INFO) · `search_qsys`

---

## Summary Table

| Use Case | Example Prompt | Skills Activated | Workflow | Bob Tools |
|---|---|---|---|---|
| ✓ Application Understanding | *"Explain this billing module"* | `rpg-primer-basics` `cobol-primer-basics` `dds-primer-basics` | Business Rules Extraction | `read_member` `search_qsys` |
| ✓ Documentation Generation | *"Document HELLOSRV.rpgle in Markdown"* | `rpg-primer-basics` `cl-primer-basics` | Business Rules Extraction | `read_member` `write_file` |
| ✓ Business Rule Extraction | *"What are the discount rules?"* | `rpg-primer-basics` `dds-primer-basics` `cobol-primer-basics` | Business Rules Extraction | `read_member` `search_qsys` |
| ✓ IBM i Environment Analysis | *"List the active IWS services"* | `iws-admin` `cl-primer-basics` | — | `execute_sql_statement` `execute_cl_command` |
| ✓ SQL Assistance and Optimization | `/review_sql` · *"Optimize this join on CUSTNO"* | `db2-sql-primer` | — | `execute_sql_statement` `search_sql_examples` |
| ✓ Technical Specification Generation | *"Generate IWS specs for GETGREETING"* | `iws-admin` `rpg-primer-basics` | — | `execute_pase_command` `write_stream_file` `execute_cl_command` |
| ✓ Dependency Analysis | *"Who calls GETGREETING?"* | `rpg-primer-basics` `cl-primer-basics` | Business Rules Extraction | `execute_sql_statement` `search_qsys` |

---

*Learn more: [bob.ibm.com/docs/ide/premium-packages/bob-for-i/bob-for-i-index](https://bob.ibm.com/docs/ide/premium-packages/bob-for-i/bob-for-i-index)*
