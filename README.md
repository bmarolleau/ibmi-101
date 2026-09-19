# IBM i — Developer Guide & Modernization Reference

This repository contains a comprehensive practitioner's guide for IBM i developers — from platform fundamentals and legacy RPG to modern free-format development, SQL, DevOps, and application modernization with IBM Bob.

---

## Main Document

### [IBM i Development and Modernization — A Practitioner's Guide](IBMi-Complete-Developer-Guide-EN.md)

A single, structured reference covering the full IBM i development stack:

| Part | Topics |
|------|--------|
| **Part I** | IBM i platform architecture, object model, jobs, storage, modernization introduction, Power hardware |
| **Part II** | QSYS library system, IFS, source members vs stream files |
| **Part III** | Development tools — PDM/SEU, 5250, RDi, VS Code + IBM Bob |
| **Part IV** | Compilation and build — OPM vs ILE, modules, service programs, binding |
| **Part V** | RPG language — legacy fixed-format to modern free-form |
| **Part VI** | Files, I/O and DDS — disk files, display files, printer files |
| **Part VII** | SQL and Db2 for i — SQLRPGLE, cursors, DML, commitment control |
| **Part VIII** | CL — variables, overrides, SBMJOB |
| **Part IX** | Debugging — STRDBG, VS Code debugger, PSDS, DSPPGMREF |
| **Part X** | Source code management and DevOps — Git, CI/CD |
| **Part XI** | Performance and security |
| **Part XII** | Quick references — build commands, IBM official links |

---

## What's Inside

- **IBM i platform explained** — architecture pillars, TCO, reliability, industries, ERP landscape, 4GL tools
- **38 years of innovation** — AS/400 origins through Power11 and the AI era
- **RPG from legacy to modern** — fixed-format, RPG IV, fully free-form, conversion guide
- **SQL-first development** — DDS to DDL migration, RLA to SQL, Db2 for i optimisation
- **Modernization challenges and road map** — 7 challenges, 5-layer path, refactoring guide with IBM Bob
- **IBM Bob throughout** — every challenge, every tool, every conversion step references how IBM Bob can help

---

## Key Assets

```
assets/
  ibmi-eras.png               — IBM i 38 years of innovation diagram
  history-convergence.png     — AS/400 + RS/6000 → Power Systems convergence
  ibmi-pptx/                  — Screenshots and diagrams used throughout the guide
```

---

## Tools Referenced

| Tool | Vendor | Purpose |
|------|--------|---------|
| **IBM Bob** | IBM | AI-powered IBM i developer assistant — VS Code + Code for IBM i |
| **IBM ACS** | IBM | Access Client Solutions — 5250, SQL Scripts, Visual Explain |
| **VS Code + Code for IBM i** | Halcyon / open-source | Modern IDE for IBM i development |
| **RDi** | IBM | Eclipse-based IDE for QSYS member editing and debugging |
| **RPGUnit** | Open-source | Unit testing framework for RPG |
| **ARCAD** | ARCAD Software | Enterprise modernization, SCM, CI/CD, code analysis |
| **Aldon LMi** | Rocket Software | Change management, approval workflows, audit trails |
| **TD/OMS (Turnover)** | Remain Software | Object-level version control and promotion |
| **Lansa** | Lansa | 4GL low-code IDE generating RPG on IBM i |
| **Synon / CA 2E** | Broadcom | Legacy 4GL generating RPG — widely deployed |
| **Profound UI / Profound.js** | Profound Logic | Modernize 5250 UIs to web/mobile; Node.js on IBM i |
| **Fortra** | Fortra | IBM i security, automation, and operations tooling |

---

## Contributing

Content is assembled and maintained using IBM Bob. To suggest corrections or additions, open a pull request or raise an issue.

---

## References

- [IBM i 7.6 Documentation](https://www.ibm.com/docs/en/i/7.6.0)
- [Modernizing IBM i (Redbook)](https://www.redbooks.ibm.com/docs/MD260020/MD260020.html)
- [Fortra IBM i Marketplace Survey](https://www.fortra.com/resources/guides/ibm-i-marketplace-survey-results)
- [IBM Access Client Solutions](https://www.ibm.com/support/pages/ibm-i-access-client-solutions)
- [Code for IBM i (VS Code extension)](https://marketplace.visualstudio.com/items?itemName=HalcyonTechLtd.code-for-ibmi)
