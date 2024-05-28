---
layout: default
title: Domain Driven Design
nav_order: 12
---

<!-- prettier-ignore-start -->
# _Domain Driven_Design
{: .no_toc }

- TOC
{:toc}

<!-- prettier-ignore-end -->

Il Domain Driven Design é una tecnica di modellazione del codice molto utile per progetti con team medio / grandi.

Il termine é stato coniato da Eric Evans nel suo libro `Domain-Driven Design: Tackling Complexity in the Heart of Software` pubblicato nel 2003.

## Subdomains

Il Domain Driven Design (DDD) suddivide il dominio di un'applicazione in varie tipologie di sottodomini per affrontare differenti aspetti di un sistema complesso. Ecco una breve descrizione dei principali tipi di sottodominio nel DDD:

### Sottodominio Core (Core Domain)

Questo è il cuore del modello di dominio, dove si trova la logica fondamentale che distingue l'azienda o l'applicazione dai concorrenti. È il centro dell'innovazione e dell'investimento strategico, poiché contiene le funzionalità più cruciali per il successo dell'impresa.

### Sottodominio di Supporto (Supporting Subdomain)

Non centrale come il Core Domain, ma ancora necessario per supportare le operazioni dell'azienda. Questi sottodomini forniscono funzionalità che facilitano o migliorano le operazioni realizzate dai core domain, ma non offrono un vantaggio competitivo diretto.

### Sottodominio Generico (Generic Subdomain)

Si tratta di aree del sistema che sono necessarie per il funzionamento ma che sono standardizzate e non specifiche per il contesto dell'azienda. Esempi possono includere funzioni come gestione degli utenti, autenticazione o logging. Sono spesso candidati per l'outsourcing o l'uso di soluzioni software preesistenti.

L'identificazione e la classificazione dei sottodomini in una delle categorie sopra menzionate aiutano le organizzazioni a concentrare le risorse e gli sforzi là dove sono più necessari e a utilizzare soluzioni standardizzate dove possibile, ottimizzando così il tempo e il costo dello sviluppo software.

## Ubiquitous Language (Linguaggio Onnipresente)

L'Ubiquitous Language è un concetto fondamentale che riguarda lo sviluppo di un linguaggio comune tra tutti i partecipanti di un progetto software. Questo linguaggio è condiviso tra sviluppatori, analisti, stakeholder e qualsiasi altra persona coinvolta nel progetto. L'obiettivo è eliminare ambiguità e garantire che tutti comprendano esattamente gli stessi concetti quando discutono di aspetti del sistema.

Lo Ubiquitous Language è più di un semplice gergo; è un insieme di termini e frasi che sono strettamente allineati con il dominio dell'applicazione. Viene utilizzato costantemente in tutte le comunicazioni, sia nella documentazione che nelle conversazioni, e dovrebbe essere riflettuto direttamente nel codice, rendendo il codice più leggibile e comprensibile.

Questo linguaggio evolve man mano che la comprensione del dominio cresce e si adatta durante lo sviluppo del software, garantendo che il linguaggio e il software rimangano perfettamente allineati con i bisogni del business. La creazione e il mantenimento di un Ubiquitous Language efficace sono cruciali per il successo dell'implementazione del DDD, poiché aiuta a prevenire malintesi e migliora la coerenza del progetto.

## Bounded contexts

il concetto di Bounded Context è essenziale per gestire la complessità nei grandi sistemi software. Un Bounded Context delimita la pertinenza di un particolare modello di dominio, creando chiari confini all'interno dei quali un modello specifico è definito e applicabile. Questo permette di mantenere la coerenza del modello all'interno di quel contesto, pur permettendo l'esistenza di differenti modelli in altri contesti all'interno dello stesso sistema.

Ecco alcuni punti chiave riguardanti i Bounded Contexts:

### Isolamento

Ogni Bounded Context isola il suo modello da altri modelli, evitando collisioni e ambiguità tra terminologie e regole di business che possono differire significativamente tra un contesto e l'altro.

### Integrazione

Anche se un sistema può avere più Bounded Contexts, spesso è necessario che questi contesti si integrino. Ciò avviene tramite meccanismi ben definiti di integrazione e traduzione, come ad esempio API, eventi di dominio, o pattern specifici come l'Anti-Corruption Layer, che prevengono le dipendenze dirette e i conflitti tra i contesti.

### Mappatura

La relazione tra modelli in differenti Bounded Contexts può essere mappata attraverso pattern come Shared Kernel, Customer/Supplier, Conformist, o Partnership, facilitando la gestione delle interazioni tra team diversi che lavorano in contesti distinti.

### Autonomia

Ogni team può sviluppare, scalare e distribuire le sue funzionalità indipendentemente all'interno del proprio Bounded Context, promuovendo pratiche di sviluppo agile e microservizi.

I Bounded Contexts aiutano a organizzare e strutturare sistemi complessi, facendo in modo che parti diverse del sistema possano evolversi in modo indipendente pur contribuendo al successo complessivo del progetto.

## Cooperation

la cooperazione tra i diversi Bounded Contexts è cruciale per il funzionamento complessivo del sistema. Eric Evans, descrive vari livelli di cooperazione tra i Bounded Contexts per gestire come questi si relazionano e interagiscono. Ecco una panoramica di questi livelli di cooperazione:

### Partnership

In questo livello di cooperazione, due o più team lavorano insieme verso obiettivi comuni, coordinando strettamente le loro attività. Questo richiede una comunicazione frequente e un alto livello di collaborazione per assicurarsi che i cambiamenti in un contesto non abbiano impatti negativi sugli altri.

### Shared Kernel

Qui, diversi Bounded Contexts condividono una parte comune del modello di dominio. Questo kernel condiviso (composto da codice e modello di dati) deve essere gestito attentamente per evitare conflitti, e ogni modifica al kernel condiviso deve essere negoziata tra tutti i team coinvolti.

### Customer/Supplier

In questo modello, un Bounded Context (il fornitore) fornisce servizi o dati a un altro Bounded Context (il cliente). Il cliente dipende dal fornitore e deve adattarsi alle sue interfacce e ai suoi tempi di consegna, mentre il fornitore deve assicurarsi di soddisfare le esigenze del cliente.

### Conformist

Un Bounded Context può decidere di conformarsi completamente al modello di un altro contesto per evitare la complessità della negoziazione. Questo accade spesso quando il contesto "follower" non ha sufficiente influenza o interesse per negoziare cambiamenti.

### Anticorruption Layer (ACL)

Questo livello di cooperazione introduce uno strato che funge da traduttore tra due contesti per prevenire che il modello di uno influenzi o corrompa quello dell'altro. L'ACL agisce come un buffer, traducendo le richieste e le risposte tra i due contesti in modo che ciascuno possa mantenere il proprio modello interno puro e coerente.

### Open Host Service

Un Bounded Context offre un'API o un servizio ben definito che altri context possono utilizzare senza la necessità di una stretta collaborazione o negoziazione.

### Published Language

Questo livello implica la creazione di un linguaggio o un protocollo standard che tutti i Bounded Contexts interessati possono comprendere e utilizzare per comunicare tra loro.

Questi livelli di cooperazione aiutano a definire e gestire le interazioni tra diverse parti di un sistema in modo strutturato, facilitando l'evoluzione indipendente dei Bounded Contexts pur mantenendo la coerenza e l'integrità complessiva del sistema.

## Domain model pattern

Il Domain Model pattern è una rappresentazione concettuale e dettagliata del dominio di problema, che enfatizza la cattura della logica e del comportamento del business in modo che il software possa essere più funzionale, manutenibile e scalabile.

### Entities

Sono oggetti che hanno un'identità persistente attraverso il tempo e diverse rappresentazioni. Una entità è unica per la sua identità, non solo per i suoi attributi.

Esempio: In un'applicazione bancaria, un conto corrente è un'entità perché persiste mentre i suoi attributi (come il saldo) possono cambiare.

### Value Objects

Sono oggetti che non possiedono un'identità e sono definiti solo dai loro attributi. Sono immutabili, il che significa che una volta creati, i loro dati non possono essere modificati.

Esempio: Un indirizzo in un sistema di gestione delle spedizioni può essere un oggetto di valore, rappresentando una combinazione di via, città, stato e CAP.

### Aggregates

Un Aggregato è un cluster di entità e oggetti di valore che vengono trattati come un'unità per le operazioni di persistenza e di business.
Ogni aggregato ha una Radice di Aggregato, un'entità particolare all'interno dell'aggregato che funge da punto di ingresso e di controllo per tutte le operazioni sull'aggregato.

Esempio: Un ordine con i suoi dettagli di ordine e pagamenti potrebbe essere un aggregato, con l'ordine stesso come radice.
Servizi di Dominio (Domain Services):

Contengono logica di business che non appartiene naturalmente a nessuna entità o oggetto di valore. Questi servizi aiutano a mantenere il modello pulito da logiche che non si adattano bene agli oggetti di dominio.
Esempio: Un servizio che calcola l'ammontare degli interessi su più conti potrebbe essere realizzato come un servizio di dominio.

### Domain services

Forniscono un meccanismo per accedere agli aggregati o entità, astraendo la logica di accesso ai dati dietro un'interfaccia più orientata al dominio.
Esempio: Un Domain service di clienti potrebbe fornire metodi per trovare clienti specifici, aggiungere nuovi clienti, o aggiornare informazioni esistenti.

## Event sourced domain model

L'Event Sourced Domain Model è un approccio di modellazione che si basa sulla cattura di tutti i cambiamenti apportati allo stato di un'applicazione come una sequenza di eventi. Questo modello non solo traccia lo stato corrente degli oggetti di dominio, ma anche come essi hanno raggiunto tale stato attraverso un registro immutabile di tutti gli eventi che hanno modificato lo stato nel tempo.

Caratteristiche principali dell'Event Sourced Domain Model:

### Eventi come Registro Primario

Invece di memorizzare solo lo stato corrente di un'entità nel database, l'event sourcing memorizza una sequenza di eventi che rappresentano le azioni eseguite su quell'entità. Ogni evento riflette un cambiamento nello stato dell'entità.

### Replay degli Eventi

Lo stato corrente di un'entità può essere ricostruito "riproducendo" gli eventi dal primo all'ultimo. Questo processo permette non solo di vedere lo stato attuale ma anche di esaminare lo stato dell'entità in qualsiasi punto nel passato.

### Audit Trail Naturale

Poiché tutti i cambiamenti sono registrati come eventi, l'event sourcing fornisce automaticamente un tracciato completo e auditable delle modifiche. Questo è particolarmente utile in domini come la finanza o la salute, dove la tracciabilità e l'audit sono cruciali.

### Resilienza e Recovery

L'immagazzinamento degli eventi piuttosto che degli stati rende più facile recuperare da errori o disastri. Se lo stato corrente viene perso o corrotto, può essere ricostruito riproducendo gli eventi.

### Decoupling Temporale

Gli eventi possono essere processati asincronamente o differiti, il che permette una maggiore flessibilità nell'architettura del sistema, come l'integrazione con architetture basate su CQRS (Command Query Responsibility Segregation) o sistemi di messaggistica.

Componenti chiave dell'Event Sourced Domain Model:

### Eventi di Dominio

Rappresentano cambiamenti significativi nello stato di un'entità o in un sistema e sono immutabili una volta che sono stati emessi.

### Aggregati

Gestiscono gli eventi e producono nuovi eventi come risultato di comandi. Gli aggregati sono responsabili della validazione delle regole di business prima di generare eventi.

### Repository di Eventi

Memorizzano gli eventi in un modo sequenziale e sono utilizzati per ricostruire lo stato degli aggregati quando necessario.

### Proiezioni

Sono viste costruite dagli eventi per fornire stati derivati utili per le query. Le proiezioni possono essere ottimizzate per specifiche operazioni di lettura e non devono necessariamente rappresentare l'intero stato di un'entità.

L'Event Sourced Domain Model è particolarmente utile in contesti dove la comprensione dell'evoluzione dello stato e la sua completa tracciabilità sono più importanti della semplice rappresentazione dello stato corrente.
