---
layout: default
title: DevOps in pillole
parent: Cultura
nav_order: 1
---

<!-- prettier-ignore-start -->
# DevOps in pillole
{: .no_toc }

- TOC
{:toc}

<!-- prettier-ignore-end -->

## DevOps: Una rivoluzione nella cultura del software

DevOps rappresenta molto più di una semplice metodologia tecnica: è un vero e proprio cambiamento culturale che coinvolge l’intera organizzazione, ridefinendo il modo in cui sviluppo (_development_) e operazioni (_operations_) collaborano per realizzare e distribuire software di qualità, in modo rapido ed efficiente. In un mercato sempre più competitivo e dinamico, aziende come Google, Amazon, Facebook e Netflix hanno abbracciato DevOps per garantire innovazione continua e risposte tempestive alle esigenze degli utenti.

## I principi fondamentali di DevOps

Alla base di DevOps ci sono alcuni principi chiave che guidano i team verso prestazioni elevate:

- **Collaborazione continua:** DevOps elimina i silos tradizionali tra sviluppo e operations, promuovendo un ambiente in cui la comunicazione è aperta e i team lavorano insieme durante tutto il ciclo di vita dell’applicazione.
- **Automazione:** L’automazione dei processi, dalla scrittura del codice al testing, fino al rilascio e al monitoraggio, riduce la complessità, minimizza gli errori umani e accelera i tempi di consegna.
- **Integrazione e consegna continue (CI/CD):** Questi processi consentono di integrare regolarmente le modifiche al codice e di distribuirle rapidamente in ambienti di produzione, garantendo feedback immediati e una maggiore affidabilità del software.
- **Infrastruttura come codice (IaC):** Gestire l’infrastruttura tramite codice permette di replicare ambienti in modo coerente e di automatizzare il provisioning delle risorse.
- **Feedback rapido e miglioramento continuo:** Il monitoraggio costante e i cicli di feedback brevi permettono ai team di individuare e risolvere rapidamente i problemi, adattando il prodotto alle reali esigenze degli utenti.

### Cultura della Collaborazione e della Condivisione

**Il cuore del DevOps è la cultura**. Nessuno strumento può compensare la mancanza di comunicazione tra team.

**Best Practice:**

- _Team cross-funzionali_: sviluppatori, sistemisti, QA e sicurezza devono collaborare fin dalle fasi iniziali del progetto.
- _Riunioni quotidiane brevi (stand-up)_: migliorano la visibilità e la sincronizzazione del lavoro.
- _Blameless post-mortem_: analizzare gli incidenti senza cercare colpevoli, ma per imparare e migliorare.

### Integrazione e Consegna Continua (CI/CD)

Automatizzare build, test e deploy riduce gli errori e accelera le iterazioni.

**Best Practice:**

- _Pipeline CI/CD automatizzate_: con strumenti come GitHub Actions, GitLab CI, Jenkins, CircleCI.
- _Test automatici e di regressione_: unit, integration, end-to-end.
- _Feature toggle_: per rilasciare codice in produzione in modo sicuro senza esporre subito tutte le funzionalità.

### Infrastructure as Code (IaC)

L’infrastruttura è parte integrante del software e deve essere trattata come codice.

**Best Practice:
**- Uso di strumenti come Terraform, Ansible, Pulumi o AWS CloudFormation.

- Versionamento dell’infrastruttura in git, con revisioni e code review.
- Ambienti replicabili: staging identico alla produzione per test più affidabili.

### Monitoraggio e logging continui

DevOps senza visibilità è cieco. Il monitoraggio è essenziale per garantire affidabilità e performance.

**Best Practice:**

- Monitoraggio proattivo: con alert su metriche critiche (CPU, RAM, errori, latenza).
- Log centralizzati e strutturati: tramite ELK stack, Grafana Loki, o servizi cloud (CloudWatch, Azure Monitor).
- SLO/SLA e SLI: definizione chiara degli obiettivi di affidabilità e indicatori di performance.

### Sicurezza DevSecOps

Integrare la sicurezza fin dall’inizio del ciclo di sviluppo, non alla fine.

**Best Practice:**

- Scan del codice statico (SAST) e delle dipendenze (SCA) in CI.
- Gestione segreti sicura (Vault, AWS Secrets Manager, GitHub Actions Secrets).
- Controlli di accesso basati sui ruoli (RBAC) e principio del minimo privilegio.

### Automazione intelligente

Automatizzare tutto ciò che è ripetibile, ma con criterio.

**Best Practice:**

- Automazione del provisioning, delle configurazioni, dei test e dei rilasci.
- ChatOps: integrazione dei comandi DevOps in strumenti come Slack o MS Teams.
- Documentazione automatica e aggiornamento continuo delle pipeline.

### Feedback rapido e iterazioni brevi

Il ciclo di feedback deve essere continuo e veloce, per favorire l'apprendimento e il miglioramento costante.

**Best Practice:**

- Release frequenti e a basso rischio.
- Canary releases e blue/green deployment per evitare downtime.
- Raccolta attiva dei feedback dagli utenti e dai sistemi.

## La cultura DevOps

DevOps non si limita all’adozione di nuovi strumenti o processi, ma richiede una trasformazione culturale profonda. I valori fondanti sono trasparenza, responsabilità condivisa e fiducia reciproca. Ogni membro del team è coinvolto sia nello sviluppo che nella gestione operativa, assumendosi la responsabilità dell’intero ciclo di vita del prodotto, dall’ideazione al rilascio e oltre.

> "DevOps è un cambiamento culturale in cui i team adottano una cultura di progettazione del software, un flusso di lavoro e un set di strumenti che elevano i requisiti operativi allo stesso livello di importanza rivestito dall'architettura, dalla progettazione e dallo sviluppo."

## Vantaggi di DevOps

Adottare DevOps porta benefici tangibili su più livelli:

- **Tecnici:** Rilasci più frequenti e affidabili, riduzione della complessità, risoluzione rapida dei problemi.
- **Culturali:** Team più produttivi, motivati e orientati al risultato, maggiore soddisfazione dei clienti.
- **Aziendali:** Accelerazione del time-to-market, ambienti più stabili, migliore allineamento tra obiettivi di business e sviluppo tecnologico.

## DevOps e la sicurezza come si sposano?

Nel contesto DevOps, la sicurezza non può più essere un’attività isolata a fine ciclo.
Nasce così **DevSecOps**, un'estensione naturale del DevOps che ha l’obiettivo di integrare la sicurezza fin dall’inizio del processo di sviluppo, rendendola parte integrante della cultura e delle pipeline.

### DevSecOps in pratica

La sicurezza viene automatizzata insieme ai test e al deployment.
Gli sviluppatori hanno visibilità sui problemi di sicurezza durante il coding, grazie a tool di analisi statica (SAST) o di gestione delle dipendenze vulnerabili (SCA).
I team condividono la responsabilità della compliance, della gestione dei segreti e delle configurazioni sicure.
Le pipeline CI/CD includono controlli di sicurezza automatici, come scan delle immagini Docker o verifica delle policy infrastrutturali.

DevSecOps punta a spostare la sicurezza “a sinistra” nel ciclo di sviluppo, garantendo che ogni cambiamento – dal codice all’infrastruttura – sia sicuro per impostazione predefinita, senza rallentare il rilascio del software.

## Fonti

- https://www.atlassian.com/it/devops/what-is-devops
- https://github.com/andredesousa/devops-best-practices
- https://www.atlassian.com/it/devops/what-is-devops/benefits-of-devops
- https://www.apogeonline.com/libri/devops-fabio-mora/
- https://about.gitlab.com/it-it/topics/devops//
- https://agileplaza.it/principi-di-devops/
- https://azure.microsoft.com/it-it/resources/cloud-computing-dictionary/what-is-devops
- https://www.redhat.com/it/topics/devops
