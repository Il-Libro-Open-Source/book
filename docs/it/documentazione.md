---
layout: default
title: Community e Networking
nav_order: /
---

<!-- prettier-ignore-start -->
# Documentazione
{: .no_toc }

- TOC
{:toc}

<!-- prettier-ignore-end -->

La documentazione tecnica è una parte fondamentale dell'ecosistema legato al software.

Questo capitolo descrive:
- Che cosa è la documentazione tecnica.
- La necessità e l'importanza della documentazione tecnica per il software.
- Accorgimenti per scrivere una buona documentazione tecnica.
- Linguaggi per sviluppare la documentatione tecnica.
- La gestione delle specifiche tecniche.
- La gestione delle specifiche di testing.
- La standardizzazione.
- La collaborazione coi Technical Writers.

## Che cosa è la documentazione tecnica
La documentazione tecnica per il software è un elemento fondamentale nell'ambito dello sviluppo e della manutenzione dei sistemi informatici. Essenzialmente, essa consiste in una raccolta di informazioni dettagliate riguardanti il software stesso.

Considerando il punto di vista degli sviluppatori, in generale, la documentazione tecnica serve per descrivere i seguenti aspetti del software:
- **L'architettura**. In questo caso, la documentazione delinea la struttura interna del sistema, i componenti principali e le relazioni tra di essi. Questo fornisce una panoramica chiara delle funzionalità offerte e delle interazioni previste tra i diversi moduli del software.
- **Le specifiche di progettazione**. Questa parte della documentazione comprende informazioni sulle funzionalità del software, i requisiti di sistema, le prestazioni attese e le limitazioni conosciute. Questo aiuta gli sviluppatori a comprendere appieno il comportamento atteso dal software e a progettare soluzioni appropriate per le esigenze specifiche.
- **Guide per gli sviluppatori**. Questa parte della documentazione fornisce istruzioni dettagliate su come configurare l'ambiente di sviluppo, come compilare il codice sorgente, come eseguire i test, e come contribuire al progetto in base agli standard prefissati. Questa guida è essenziale per consentire a nuovi sviluppatori di integrarsi rapidamente nel team e contribuire in modo efficace al software.

## Necessità ed importanza della documentazione tecnica
La documentazione del software è spesso vista come un'attività secondaria, e viene spesso trascurata in favore dello sviluppo del codice. Tuttavia, sottovalutarne l'importanza può avere conseguenze significative sul ciclo di vita del software e sulla sua gestione dello a lungo termine.

La documentazione non è semplicemente un compito aggiuntivo per i dev, incastrati come sono tra riunioni (tante) e sviluppo (spesso, poco). Piuttosto, è un elemento cruciale per garantire la comprensione, la manutenibilità, e l'evoluzione del software stesso. 

In primo luogo, la documentazione svolge un ruolo fondamentale nella comprensione del software. Il codice può essere complesso e intricato - e tutt'altro che "self-documenting"! . La documentazione, invece, fornisce un'annotazione chiara e comprensibile di ciò che fa il software, di come è strutturato e come si interagisce con altri componenti del sistema. Questo è particolarmente cruciale per consentire ai nuovi sviluppatori di integrarsi rapidamente in un progetto avviato, ed ai membri esistenti del team di lavorare in modo efficiente ed efficace.

In secondo luogo, la documentazione facilita la manutenzione del software nel tempo. Con una documentazione accurata, infatti, i problemi possono essere individuati e risolti più rapidamente, poiché gli sviluppatori hanno una guida chiara su come il software sia stato progettato e implementato. Senza una documentazione adeguata, la manutenzione del software diventa un compito arduo e laborioso, aumentando il rischio di errori e ritardi nel rilascio delle correzioni.

Inoltre, la documentazione svolge un ruolo essenziale nella collaborazione tra team. Quando più persone lavorano su un progetto software, infatti, la documentazione diventa il mezzo principale attraverso il quale le informazioni vengono condivise e comunicate. Una documentazione ben curata riduce al minimo la dipendenza da specifici membri del team e favorisce una cultura di collaborazione e condivisione delle conoscenze. Questo diventa particolarmente importante nelle aziende che lavorano in full-remote e magari con membri del team sparsi in diverse parti del mondo, nelle quali non è possibile andare a cercare un collega in ufficio per un chiarimento.

Non meno importante, la documentazione del software è cruciale per la conformità normativa e la sicurezza. In settori come la sanità, la finanza, e la sicurezza informatica, è fondamentale tenere traccia di come il software sia stato sviluppato, testato e implementato. In questi casi, inoltre, la documentazione fornisce una traccia chiara delle decisioni prese durante il processo di sviluppo e aiuta a dimostrare la conformità alle normative e agli standard di settore in caso di controlli.

Infine, la documentazione è essenziale per garantire la continuità del business. Nel caso in cui i membri del team lascino l'organizzazione o cambino ruolo, una documentazione completa e aggiornata consente una transizione fluida e minimizza l'impatto sul progetto. Senza una documentazione adeguata, l'organizzazione rischia di perdere conoscenze critiche e di subire interruzioni nei progetti software in corso. Allo stesso modo, la documentazione è fondamentale qualora un progetto venga dato in outsourcing ad una azienda terza. Fare reverse engineering del codice è spesso una necessità, ma avere documentato il progetto permette all'azienda terzista ed ai suoi sviluppatori di risparmiare tempo, e di avere delle linee guida chiare da seguire, potendo capire il ciclo di vita del prodotto per come è stato pensato fino a quel momento.

## Accorgimenti per scrivere una buona documentazione tecnica
Scrivere una documentazione efficace non è solo una pratica buona, ma è essenziale per garantire che il software possa essere compreso, utilizzato, e mantenuto nel corso del tempo. Ecco alcuni accorgimenti da tenere a mente quando si scrive la documentazione per il software:
- **Conoscere il pubblico**. Prima di iniziare a scrivere, è fondamentale comprendere chi sarà il pubblico che leggerà ed utilizzerà la documentazione. Per esempio: ci stiamo rivolgendo ad un pubblico di soli sviluppatori senior o è necessario considerare anche un pubblico di junior? Ci rivolgiamo ad una platea nazionale o internazionale? Gli sviluppatori avranno sicuramente esigenze diverse in base alla loro seniority, ma anche alla lingua usata per scrivere la documentazione. Per cui, adattare lo stile, il livello di dettaglio, ed il linguaggio utilizzato in base al pubblico aiuterà a garantire che la documentazione sia utile ed efficace ad uno specifico pubblico.
- **Essere chiari e concisi**. È importante evitare l'uso di gergo tecnico e complesso quando non necessario, per far sì che il proprio pubblico comprenda chiaramente la documentazione. Allo stesso modo, è importante mantenere le descrizioni concise, evitando ripetizioni e informazioni superflue: la chiarezza è fondamentale e spiegare i concetti in modo semplice e diretto, evitando ambiguità e confusione, è l'obiettivo da tenere sempre a mente.
- **Fornire esempi pratici**. Niente aiuta a comprendere un concetto più degli esempi pratici, specialmente in un ambiente legato allo sviluppo. Includere esempi di codice, casi d'uso, e scenari comuni per illustrare i concetti in modo chiaro e tangibile è fondamentale.
- **Mantenere la documentazione aggiornata**. Il software è in costante evoluzione, quindi è essenziale mantenere la documentazione aggiornata alle ultime versioni e modifiche. Ogni volta che viene apportata una modifica significativa al software, è importante assicurarsi di aggiornare la documentazione.
- **Organizzare la documentazione in modo logico**. Non c'è niente di più inutile di una buona documentazione organizzata male. La struttura della documentazione, infatti, deve essere logica e intuitiva, facilitando la ricerca delle informazioni desiderate. Per far ciò, è importante utilizzare una gerarchia chiara, suddividendo la documentazione in sezioni e sottosezioni facilmente navigabili. 

## Linguaggi per sviluppare al documentazione tecnica
Esistono diveri tool commerciali e linguaggi per stendere documentazione tecnica. In questa sezione, non tratteremo i diversi tool commerciali in quanto il loro utilizzo è legato a scelte aziendali. Ad ogni modo, si tratta spesso di strumenti che non richiedono particolari conoscenze e competenze, per cui sono facili da imparare per un pubblico che abbia delle conoscenze informatiche di base.

È importante, invece, conoscere i _linguaggi_ utilizzati per stendere tale documentazione. Nello specifico, il Markdown ed il reStructuredText (reST) sono due linguaggi di markup ampiamente utilizzati per la formattazione di documenti testuali, ma con scopi e funzionalità leggermente diversi.

Il Markdown è un linguaggio di markup leggero, progettato per essere facile da leggere e scrivere, anche in forma non formattata. È ampiamente utilizzato per scrivere documentazione, note, pagine web e altro ancora. La sua sintassi è intuitiva e semplice, ed è supportato da molti editor di testo e piattaforme di hosting come GitHub, che lo rende una scelta popolare tra gli sviluppatori e i professionisti del settore tecnologico. È sicuramente la scelta preferenziale quando si voglia iniziare a documentare un progetto legato al software.

Vale la pena menzionare anche il reStructuredText (reST) che è un linguaggio di markup più strutturato e flessibile, particolarmente popolare nell'ecosistema Python. Questo linguaggio è stato progettato per creare documentazione tecnica e di progetto in modo chiaro e coerente.  È utilizzato principalmente per scrivere documentazione di progetti Python, grazie al suo stretto legame con il tool di generazione della documentazione [Sphinx](https://www.sphinx-doc.org/en/master/), il quale consente di compilare la documentazione scritta in reST in vari formati, inclusi HTML, PDF e ePub, facilitando la distribuzione e la consultazione della documentazione di progetto. Il reST richiede una curva di apprendimento leggermente più ripida rispetto al Markdown, ma offre una maggiore flessibilità e potenza per la creazione di documentazione più strutturata e complessa. È naturalmente anch'esso integrabile con i più noti IDE, ed è supportato dalle più note piattaforme di hosting, come GitHub.
