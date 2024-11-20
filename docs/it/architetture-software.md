---
layout: default
title: Architettura software
parent: Technical topics
nav_order: 2
---

<!-- prettier-ignore-start -->
# Architetture Software
{: .no_toc }

- TOC
{:toc}

<!-- prettier-ignore-end -->

Il termine "architettura software" viene spesso utilizzato in maniera molto generica e impropria. In questo documento cercheremo di dare una definizione e di descriverne le principali.

Inoltre, cercheremo di dare un'idea di "chi si occupa di architetture software" e di descrivere il suo ruolo all'interno di un team di sviluppo.

L'argomento è molto vasto e complesso, per cui proveremo a dare una visione generale, senza entrare troppo nel dettaglio, in quanto ogni singola sezione di questo capitolo potrebbe concretizzarsi in un libro a sé stante.

## Cos'è l'architettura software?

Wikipedia ci dà uno spunto di partenza:

> L'architettura software è l'insieme delle strutture necessarie per ragionare su un sistema software e la disciplina per creare tali strutture e sistemi. Ogni struttura comprende elementi software, relazioni tra loro e proprietà di entrambi gli elementi e delle relazioni.

In altre parole, l'architettura software è l'insieme di tutte le decisioni prese durante la progettazione di un sistema software.

## I diversi aspetti dell'architettura software

L'architettura software è un argomento molto vasto e complesso, ma possiamo identificare alcuni punti chiave che si applicano nella maggior parte dei casi:

- **Componenti e moduli**: identificano i principali componenti o moduli del software e descrivono le loro responsabilità. Questi componenti possono essere funzioni, classi o persino interi microservizi in un sistema distribuito.
- **Flusso e comunicazione dei dati**: descrive il modo in cui i dati attraversano le diverse parti del sistema, inclusi meccanismi di input e output, database e servizi esterni. Comprendere il flusso di dati è fondamentale per garantire una comunicazione e un'elaborazione efficiente dei dati.
- **Comportamento del sistema**: definisce il comportamento previsto del software in varie condizioni, incluso il modo in cui vengono gestiti gli errori, ripristinati i guasti e organizzati gli adattamenti per far fronte all'aumento del carico.
- **Attributi di qualità**: soddisfano i requisiti non funzionali, come prestazioni, sicurezza, scalabilità e manutenibilità. Le decisioni di progettazione per ottimizzare il software vengono prese in funzione di queste qualità.
- **Vincoli e modelli**: l'architettura software spesso opera entro determinati vincoli, come budget, stack tecnologico o standard di conformità. Chi si occupa dell'architettura sfrutta i modelli di progettazione e le migliori pratiche per soddisfare questi vincoli, ottenendo al tempo stesso la funzionalità desiderata.

In sostanza, l'architettura software fornisce un approccio strutturato alla costruzione di sistemi software complessi, garantendo che siano scalabili, manutenibili e in grado di soddisfare i requisiti e gli standard di qualità previsti. È una disciplina cruciale nell'ingegneria del software che aiuta chi sviluppa a prendere decisioni informate e a creare software che resistano alla prova del tempo.

## Il contesto aziendale

Chi si occupa di architetture software non può vivere in una bolla e non può esulare dal contesto aziendale nel quale si trova: ogni progetto va contestualizzato tenendo conto di queste caratteristiche durante la fase di progettazione per rendere l'implementazione più semplice.

Essere quindi in grado di ascoltare e recepire le richieste e i cambiamenti del business e saper rispecchiare il tutto nel proprio lavoro quotidiano è fondamentale per prendere decisioni coerenti e creare architetture efficaci.

L'architettura software gioca un ruolo fondamentale nel plasmare non solo gli aspetti tecnici di un sistema software ma anche l'organizzazione e la cultura più ampia all'interno della quale viene sviluppato e mantenuto. Un'architettura software ben progettata può favorire una cultura organizzativa positiva in diversi modi. In primo luogo, può promuovere la collaborazione e la comunicazione tra i team di sviluppo fornendo un modello chiaro della struttura e dei componenti del sistema. Quando i membri del team hanno una comprensione condivisa dell'architettura, diventa più facile per loro lavorare insieme in modo efficace, allineare i propri sforzi e prendere decisioni informate, promuovendo una cultura del lavoro di squadra e della cooperazione.

Inoltre, l'architettura del software può seguire la strategia e gli obiettivi generali dell'organizzazione. Un'architettura ben ponderata può garantire che il sistema software sia allineato con gli obiettivi aziendali, rendendo più facile per l'organizzazione adattarsi alle mutevoli condizioni del mercato e alle esigenze dei clienti. Questo allineamento tra software e obiettivi aziendali può aiutare a promuovere una cultura agile e reattiva, in cui l'organizzazione è più propensa ad abbracciare il cambiamento e l'innovazione.

In sintesi, l'architettura software non rappresenta solo un aspetto tecnico ma è un potente strumento in grado di plasmare la cultura dell'organizzazione. Quando si progetta tenendo conto della collaborazione, della comunicazione e in funzione degli obiettivi aziendali, si può promuovere una cultura del lavoro di squadra, dell'adattabilità e dell'innovazione all'interno dell'organizzazione, contribuendo in definitiva al successo dei progetti di sviluppo software e dell'azienda nel suo insieme.

## Chi si occupa di architetture software?

Chi si occupa di architettura del software è di solito una persona con una certa esperienza nel campo dell'ingegneria del software, ed è responsabile della progettazione e della supervisione della struttura di alto livello e della visione tecnica di un progetto o sistema software. Queste figure sono fondamentali per colmare il divario tra i requisiti concettuali di una soluzione software e la sua diretta implementazione. Il ruolo va oltre il codice: implica prendere decisioni strategiche sulla progettazione del sistema, garantire che sia in linea con gli obiettivi dell'organizzazione e ottimizzarlo in base ai vincoli prestabiliti.

Di seguito le caratteristiche chiave che chi ricopre questo ruolo dovrebbe avere:

- **Competenza tecnica**: questa figura dovrebbe avere una profonda conoscenza di vari linguaggi di programmazione, metodologie di sviluppo software e modelli architetturali. Deve rimanere aggiornata con le tecnologie emergenti e le tendenze nell'ingegneria del software. Seppure ci siano varie opinioni sulla necessità di conoscere più di un linguaggio di programmazione, è indubbio che conoscerne più di uno possa aiutare a trovare soluzioni più efficaci in modo particolare se aiuta la comprensione dei limiti che i vari contesti pongono.
- **Attitudine al problem-solving**: sono essenziali forti capacità analitiche e di risoluzione dei problemi. Questa figura deve analizzare problemi complessi, identificare soluzioni e prendere decisioni che incidono sulla progettazione complessiva del sistema.
- **Capacità di comunicazione**: una comunicazione efficace è fondamentale poiché le persone che ricoprono questo ruolo devono collaborare con team interfunzionali, parti interessate e con il team di sviluppo. Devono articolare la propria visione, le scelte progettuali e i concetti tecnici alle parti interessate non tecniche, facendo da ponte tra i due mondi.
- **Leadership**: Queste figure spesso assumono ruoli di leadership, guidando i team di sviluppo, facendo da mentor a figure junior e garantendo che la visione architetturale venga seguita durante tutto il ciclo di vita del progetto.
- **Design Thinking**: Le persone che ricoprono questo ruolo dovrebbero possedere una mentalità orientata al design, concentrandosi sulla creazione di soluzioni eleganti ed efficienti. Ciò include la progettazione per scalabilità, prestazioni, sicurezza ed esperienza utente.
- **Business thinking**: comprendere il contesto di business aziendale e gli obiettivi che l'azienda si è posta di raggiungere. Queste figure devono allineare le loro decisioni tecniche con gli obiettivi strategici dell'organizzazione.
- **Adattabilità**: il panorama del software è in continua evoluzione. La figura dovrebbe essere aperta e adattarsi a nuove tecnologie e metodologie e capace di rivalutare e riadattare l'architettura quando necessario, non solo per necessità tecniche, ma anche per rispondere ai cambiamenti del mercato e per soddisfare le esigenze dei clienti.

Sebbene sia vero che il ruolo viene ricoperto da persone con una certa esperienza, non è detto che una figura junior non possa occuparsi di architetture software. Anzi, è molto importante che lo faccia, in quanto è un ottimo modo per imparare e crescere, ma il consiglio è di iniziare in un contesto controllato, più piccolo in modo da poter sperimentare meglio. L'affiancamento di una figura senior che possa guidare è sicuramente di aiuto per una persona junior.

## Misurare la bontà di un'architettura

Il termine _fitness function_ viene spesso adottato quando si parla di architetture evolutive, ovvero architetture software il cui scopo è quello di evolvere nel tempo, adattandosi ai cambiamenti del business e del mercato. Possono essere assimilabili a delle metriche che permettono di valutare quanto un'architettura software sia adatta a raggiungere gli obiettivi prefissati o ad eventuali obiettivi futuri del business.

Apiumhub nel 2020 ha pubblicato un [post](https://apiumhub.com/tech-blog-barcelona/architectural-fitness-function) sul proprio blog in cui definisce questo concetto in maniera molto chiara:

> La _fitness function_ è un tipo di funzione obiettivo utilizzata per riassumere quanto una determinata soluzione di architettura software sia vicina al raggiungimento degli obiettivi prefissati. Nel definire un'architettura evolutiva, l'architetto del software cerca un algoritmo "migliore"; la funzione fitness definisce cosa significa "migliore" in questo contesto.

Esempi di fitness function possono essere: punteggio di scalabilità, percentuale di errori, tempo medio di risposta, quantità di messaggi persi dal broker, ecc.

Poiché gli obiettivi prefissati di un'architettura variano da progetto a progetto, non esiste una _fitness function_ che è possibile usare ovunque. Di seguito diamo alcune idee di implementazione.

### Triggered Fitness function

Le _triggered fitness function_ (funzioni di fitness _attivate_ o _triggerate_) vengono eseguite in base a un evento particolare, ad esempio il team di sviluppo che esegue un test unitario, una pipeline di distribuzione che esegue una serie di operazioni o una persona del QA che esegue determinate attività stabilite.

Questo tipo di funzioni ha da un lato il vantaggio di poter essere eseguito in maniera molto rapida, ma dall'altro lato ha il difetto di non essere rappresentativo di una situazione reale. Infatti, questo tipo di fitness function non tiene in considerazione il carico di lavoro che il sistema deve gestire durante il _day-by-day_, ma solo situazioni isolate e controllate.

Queste funzioni di fitness vengono spesso lanciate durante una _pipeline_ di distribuzione, in modo da intercettare eventuali variazioni prima che il software venga rilasciato in produzione.

Questo tipo di _fitness function_ richiede solitamente più manutenzione rispetto alle _continuous fitness function_, poiché deve essere adattato durante la vita del software, in base alle modifiche che vengono apportate.

Alcuni esempi sono i test unitari, i test di integrazione, ecc.

### Continuous Fitness function

Le _continuous fitness function_ (funzioni di fitness _continue_) vengono eseguite in modo continuo sull'ambiente in analisi, tramite raccolta di metriche in tempo reale o comunque a cadenze rapide. Questo tipo di funzioni di fitness sono utili per monitorare il sistema e rilevare eventuali problemi prima che si verifichino, o analizzare dei trend.

Questo tipo di funzioni ha da un lato il vantaggio di rappresentare la situazione reale, dall'altro lato ha il difetto di non essere replicabile, in quanto si basa su dati presi dall'ambiente che si sta analizzando (solitamente quello di produzione).

Queste funzioni di fitness vengono spesso lanciate in un ambiente di produzione, in modo da avere contezza del reale contesto nel quale vengono eseguite.

Alcuni esempi sono il monitoraggio dei tempi medi di risposta, il monitoraggio dei messaggi inviati e ricevuti in una coda, ecc.

## Quali sono le principali architetture software?

Esistono diverse architetture software, ognuna con i suoi pro e i suoi contro. In questa parte del libro, descriviamo le principali architetture software che, nel corso dei decenni, sono diventate uno standard de facto grazie alle loro molteplici implementazioni e casi di successo.

Per scegliere quale architettura usare in diversi contesti, possiamo fare riferimenti alle seguenti caratteristiche:

- **Start-up**: Il tempo necessario per definire l'architettura software e cominciare a sviluppare funzionalità. Tale tempo non è da sottovalutare poiché potrebbe richiede, in base al contesto aziendale, una serie di procedure che possono essere automatizzate da tools come le `platform engineering tools`.
- **Costi**: Il costo che si affronta nell'arco della vita di un progetto o un prodotto che implementi questa architettura. Da considerare che nell'effettiva valutazione dei costi bisogna differenziare eventuali costi di avvio, da pagare una tantum, da costi ricorrenti, da pagare periodicamente per la manutenzione.
- **Sviluppo e manutenzione**: La facilità con il quale è possibile effettuare modifiche e manutenzione al software. Per semplicità, anche l'aspetto del testing viene incluso in questo punto.
- **Tracciabilità**: La facilità con la quale è possibile individuare problemi o bug all'interno del software.
- **Scalabilità**: La facilità con la quale è possibile scalare il software, ovvero la capacità di gestire un carico di lavoro maggiore. Questo punto non fa riferimento alla scalabilità orizzontale o a quella verticale e non tiene conto dei costi, ma dell'impegno tecnico necessario per scalare il software.
- **Performance**: La velocità con la quale il software è in grado di elaborare i dati per rispondere ad un'esigenza di business.

Questi punti chiave sono da intendersi come una valutazione soggettiva, in quanto ogni architettura software può essere implementata in modi diversi, con conseguenze diverse, valutando criteri e parametri differenti in base alle proprie necessità e, pur essendo un elenco piuttosto esaustivo, mix di queste architetture hanno dimostrato di essere vincenti in molti casi, anche a discapito di quanto riportato qui sopra.

I punti chiave sono espressi con dei voti che vanno da 1 a 5, dove 1 è il voto più basso e 5 il voto più alto. Per _alto_ si intende il valore migliore per il punto chiave in questione, mentre per _basso_ si intende il valore peggiore per il punto chiave in questione, ovvero il valore che si vorrebbe evitare. Nel caso di _costi_, ad esempio, un voto alto significa che i costi sono bassi, mentre un voto basso significa che i costi sono alti.

Segue una tabella riepilogativa dei punti di forza e di debolezza di ogni architettura.

|                             | **Monolite**    | **Monolite modulare** | **Microkernel** | **Microservizi** | **Service-based** |
| --------------------------- | --------------- | --------------------- | --------------- | ---------------- | ----------------- |
| **Start-up**                | ⭐️⭐️⭐️⭐️⭐️ | ⭐️⭐️⭐️⭐️          | ⭐️⭐️⭐️⭐️    | ⭐️⭐️           | ⭐️⭐️⭐️         |
| **Costi**                   | ⭐️⭐️⭐️       | ⭐️⭐️⭐️             | ⭐️⭐️⭐️       | ⭐️⭐️⭐️⭐️     | ⭐️⭐️⭐️⭐️      |
| **Sviluppo e manutenzione** | ⭐️⭐️⭐️⭐️    | ⭐️⭐️⭐️⭐️⭐️       | ⭐️⭐️⭐️⭐️    | ⭐️⭐️           | ⭐️⭐️⭐️         |
| **Tracciabilità**           | ⭐️⭐️⭐️⭐️    | ⭐️⭐️                | ⭐️⭐️⭐️       | ⭐️⭐️⭐️        | ⭐️⭐️⭐️⭐️      |
| **Scalabilità**             | ⭐️             | ⭐️                   | ⭐️⭐️          | ⭐️⭐️⭐️⭐️⭐️  | ⭐️⭐️⭐️⭐️      |
| **Performance**             | ⭐️⭐️          | ⭐️                   | ⭐️⭐️⭐️⭐️    | ⭐️⭐️⭐️⭐️     | ⭐️⭐️⭐️⭐️      |

Nelle sezioni che seguono verranno indicati alcuni termini che possono non essere familiari a tutti. Per questo motivo, quanto segue è un glossario dei termini più utilizzati.

Quando parliamo di _scalabilità verticale_ ci riferiamo all'incremento delle risorse hardware a disposizione del sistema (CPU, RAM, storage, ecc.) quando queste non sono più sufficienti per gestire il carico di lavoro.

Quando parliamo di _scalabilità orizzontale_ ci riferiamo alla replicazione dei componenti del sistema, in modo da poter gestire un carico di lavoro maggiore. Le tecniche di scalabilità orizzontale sono varie e possono essere implementate in modi diversi, in base alle esigenze del sistema.

Quando parliamo di _layer applicativi_ ci riferiamo a un livello di astrazione del software. Il database, le API, il front-end, ecc. sono tutti layer del software.

### Monolite

Il monolite è un'architettura software in cui tutte le funzionalità sono sviluppate e distribuite come un singolo pacchetto. È il tipo di architettura più semplice da implementare, in quanto non richiede particolari accorgimenti per la comunicazione tra i vari componenti, dal momento che questi ultimi risiedono all'interno dello stesso applicativo.

Trattasi dell'architettura software più semplice da implementare e più diffusa, ma anche la più difficile da scalare, in quanto non è possibile replicare i singoli componenti, ma è necessario scalare l'intero sistema. In questi casi, infatti, al monolite viene affiancato il concetto di _scalabilità verticale_.

Solitamente questa architettura viene identificata anche come _Layered Architecture_.

In questa architettura i layer applicativi sono tutti parte dello stesso applicativo.

È importante notare che storicamente questa architettura è spesso risultata la più sensibile al concetto di _stratificazione del codice_, ovvero il continuo sviluppo di funzionalità una sopra l'altra in sostituzione o sovrapposizione di precedenti, rendendo il codice sempre più complesso e difficile da mantenere. Questo fenomeno è stato spesso chiamato _Big Ball of Mud_.

- **Start-up**: 5. Il monolite è l'architettura software più semplice da implementare, in quanto non richiede particolari accorgimenti per la comunicazione tra i vari componenti o una necessità di valutazioni iniziali elevate. Molti linguaggi di programmazione, inoltre, offrono dei framework che permettono di implementare un monolite in pochi minuti. Fra i principali framework troviamo Ruby on Rails, Django, Spring Boot, Laravel, ecc.
- **Costi**: 3. Pur essendo un'architettura _a basso costo_ in termini di start-up, il costo cresce esponenzialmente per via della necessità di _scalare orizzontalmente_.
- **Sviluppo e manutenzione**: 4. Il monolite è tra le architetture software più semplici da sviluppare e mantenere, per gli stessi motivi espressi nella voce _start-up_. I framework sono ormai molto maturi e permettono di sviluppare e mantenere un monolite in maniera molto semplice.
- **Tracciabilità**: 4. Poiché tutti i componenti fanno parte dello stesso processo o blocco, è facile individuare la porzione di codice che ha generato un problema o un bug.
- **Scalabilità**: 1. Il monolite è tra le architetture software più difficili da scalare, in quanto non è possibile replicare i singoli componenti, ma è necessario scalare l'intero sistema. In questi casi, infatti, al monolite viene affiancato il concetto di _scalabilità verticale_. La valutazione è dovuta alla necessità, nella maggior parte delle implementazioni di questo tipo, di dover riavviare il sistema per scalare le risorse hardware.
- **Performance**: 2. La performance del monolite è legata alla capacità di scalare le risorse hardware a disposizione del sistema. Di conseguenza, la curva di crescita dei tempi di risposta tende a crescere sempre di più. Solitamente le performance, seppur buone nelle prime fasi di vita del software, tendono a degradare nel tempo.

### Monolite Modulare

Il monolite modulare è un'architettura software in cui tutte le funzionalità sono sviluppate e distribuite come un singolo pacchetto, ma con la differenza che il codice è organizzato in moduli. Questi moduli possono essere sviluppati e distribuiti in maniera indipendente, ma sono comunque parte dello stesso _blocco_, inteso che l'applicativo online è unico, come nel caso del monolite _classico_.

I moduli devono essere quanto possibile indipendenti tra di loro in modo da avere una suddivisione delle funzionalità segregata. La forza di questa architettura è comunque la possibilità, seppur da tenere sotto controllo, di far comunicare tra di loro i moduli tramite delle interfacce pubbliche.

Da non confondersi con altre architetture, in questo caso i moduli sono parte dello stesso processo o applicativo, rendendo necessaria la _scalabilità verticale_.

In questa architettura i layer applicativi sono tutti parte dello stesso applicativo.

- **Start-up**: 4. Essendo una variante del monolite, lo start-up è molto semplice, ma la necessità di organizzare il codice in moduli può richiedere un po' di tempo.
- **Costi**: 3. Pur essendo un'architettura _a basso costo_ in termini di start-up, il costo cresce esponenzialmente per via della necessità di _scalare orizzontalmente_.
- **Sviluppo e manutenzione**: 5. Rispetto a un monolite _classico_, il monolite modulare è più semplice da sviluppare e mantenere, in quanto i moduli hanno un compito ben definito e sono quanto più possibile indipendenti tra di loro.
- **Tracciabilità**: 2. Compattando i moduli in un unico blocco, è più difficile individuare la porzione di codice che ha generato un problema o un bug in quanto solitamente il codice dei singoli moduli viene minificato o comunque ottimizzato per la produzione.
- **Scalabilità**: 1. Il monolite, anche in forma modulare, è l'architettura software più difficile da scalare, in quanto non è possibile scalare i singoli componenti, ma è necessario scalare l'intero sistema. In questi casi, infatti, al monolite viene affiancato il concetto di _scalabilità verticale_. La valutazione è dovuta alla necessità, nella maggior parte delle implementazioni di questo tipo, di dover riavviare il sistema per scalare le risorse hardware.
- **Performance**: 1. La performance del monolite modulare presenta le stesse problematiche del monolite _classico_, con l'aggiunta che per far funzionare questa architettura è necessario un ulteriore livello di astrazione, ovvero il modulo, che può portare ad un degrado delle performance.

### Microkernel

Chiamata anche _architettura a plugin_, si compone essenzialmente di un nucleo centrale che si occupa di gestire le comunicazioni tra i vari componenti, che sono sviluppati e distribuiti come plugin.
Questi plugin possono essere sviluppati e distribuiti in maniera indipendente, ma funzionando attorno ad un nucleo centrale, faranno sempre parte dello stesso _blocco_, inteso che l'applicativo online è unico, come nel caso del monolite _classico_.

Il concetto principale attorno a questa architettura è l'indipendenza totale tra i plugin. Per definizione, nessun plugin dovrebbe avere come dipendenza un altro plugin.

In questa architettura i layer applicativi sono tutti parte dello stesso applicativo.

- **Start-up**: 4. Essendo una variante del monolite, lo start-up è molto semplice, ma la necessità di organizzare il codice in un nucleo centrale e implementare un sistema di plugin può richiedere più tempo.
- **Costi**: 3. Pur essendo un'architettura _a basso costo_ in termini di start-up, il costo cresce esponenzialmente per via della necessità di _scalare orizzontalmente_.
- **Sviluppo e manutenzione**: 4. Trattasi di un'architettura semplice da mantenere e sulla quale aggiungere funzionalità, ma la necessità di non far comunicare i plugin tra di loro può aggiungere una lieve complessità.
- **Tracciabilità**: 3. Testare e tracciare eventuali bug in questa architettura è mediamente complesso. L'isolamento dei plugin aiuta con il testing, ma la correlazione col nucleo centrale a volte può rallentare il processo di tracciamento.
- **Scalabilità**: 2. Le difficoltà di scalabilità sono anche in questo caso dovute alla _singola unità di rilascio_ o _single deployment unit_, ovvero trattandosi di un unico applicativo, è necessario scalare l'intero sistema, dovendo quindi ricorrere alla _scalabilità verticale_.
- **Performance**: 4. Processi di comunicazione semplici e isolabilità rendono questa architettura molto performante.

### Microservizi

La _buzzword_ per eccellenza degli ultimi anni.

Questa architettura software si compone di un insieme di servizi indipendenti tra di loro, ognuno con un compito ben definito, che comunicano tra di loro attraverso un meccanismo di comunicazione _solitamente_ asincrono.

A differenza delle architetture _a singolo blocco_ viste sopra, questa architettura permette di scalare i singoli componenti, in quanto ogni componente è un applicativo separato (servizio) e viene rilasciato in maniera indipendente.

In questa architettura ogni microservizio solitamente ha il proprio database e il proprio back-end (basato su API), mentre il front-end è solitamente un'interfaccia grafica che comunica con i microservizi attraverso le API, a prescindere da dove risieda o da come sia implementato. I database sono solitamente piccoli e si occupano di gestire solo i dati necessari al microservizio in questione.

A differenza delle altre architetture citate, la condivisione del database è da considerarsi un _anti-pattern_, ovvero una pratica da non adottare, in quanto può portare a problemi di _coupling_ tra i microservizi, esattamente l'opposto di quanto si vuole ottenere con questa architettura.

Per definizione i microservizi non dovrebbero comporsi di più di una manciata di endpoint e relative funzioni, in quanto altrimenti si parla più di _service-based architecture_.

Da notare che il _decoupling_ creato da questa architettura può portare ad un notevole aumento della complessità.

- **Start-up**: 2. Lo start-up di un'architettura di questo tipo è complessa, in quanto è necessario stabilire sistemi di _orchestrazione_ o di _coreografia_ dei microservizi. Inoltre, il tipo di comunicazione (sincrono o asincrono) e il protocollo adottato (HTTP, AMQP, ecc.) devono essere valutati con attenzione.
- **Costi**: 4. Potendo scalare indipendentemente i singoli microservizi, i costi sono contenuti, in quanto è possibile scalare solo i microservizi che ne hanno bisogno, e solo nei momenti in cui si ritiene necessario.
- **Sviluppo e manutenzione**: 2. Il sistema di orchestrazione o coreografia dei microservizi può aggiungere una complessità non indifferente, soprattutto se non si ha esperienza in questo campo. Inoltre, la necessità di comunicare tra i microservizi può aggiungere un ulteriore livello di complessità.
- **Tracciabilità**: 3. Testare e tracciare eventuali bug in questa architettura è complesso. L'isolamento dei microservizi aiuta in questo caso, ma la tracciabilità è piuttosto complessa e richiede integrazione di _distributed tracing_ o _open telemetry_.
- **Scalabilità**: 5. La scalabilità è il punto di forza di questa architettura, in quanto ogni microservizio può essere replicato indipendentemente dagli altri.
- **Performance**: 4. La performance di questa architettura è legata alla capacità di scalare i singoli microservizi. Con una buona configurazione di auto-scaling si possono raggiungere eccellenti risultati, anche se la necessità di mettere in comunicazione, via HTTP, socket o qualsiasi altra forma, una quantità elevata di sistemi può impattare sulle performance.

### Service-based

Il _service-based è un'architettura software in cui l'applicativo viene suddiviso in una manciata di servizi (Solitamente da 3 a 12) che comunicano tra di loro attraverso un meccanismo di comunicazione \_solitamente_ asincrono.

Ci si aspetta che i servizi siano in costante comunicazione tra di loro e che rispettino dei contratti (interfacce) precedentemente stabiliti. Questo tipo di architettura è molto simile a quella dei microservizi, ma con la differenza che i servizi sono solitamente più grandi e con un compito ben definito.

In questa architettura ogni servizio solitamente ha il proprio database, il proprio back-end e il proprio front-end, anche se ci sono casi in cui il database possa essere condiviso tra i servizi (in questo caso si suggerisce di utilizzare un utente dedicato per l'accesso alle singole tabelle o agli schemi di pertinenza), altri in cui il front-end vive in un applicativo separato o, ancora, altri in cui il front-end è unico per tutti i servizi.

Questa architettura viene spesso indicata come "l'anello mancante" tra il monolite e i microservizi, anche se la dimensione dei servizi e il successivo _decoupling_ sono temi piuttosto complessi da gestire.

- **Start-up**: 3. Lo start-up di un'architettura di questo tipo è complessa, ma non quanto quella a microservizi, anche se molte delle problematiche sono simili.
- **Costi**: 4. Potendo scalare indipendentemente i singoli servizi, i costi sono contenuti, in quanto è possibile scalare solo i servizi che ne hanno bisogno, e solo nei momenti in cui lo si ritiene necessario.
- **Sviluppo e manutenzione**: 3. Come per lo start-up, le sfide e le necessità sono simili a quelle dei microservizi, ma trattandosi di entità più grandi, la complessità diminuisce.
- **Tracciabilità**: 4. Testare e tracciare eventuali bug in questa architettura è piuttosto semplice vista la normale dimensione dei servizi. L'isolamento aiuta, e anche qui si suggerisce l'integrazione di _distributed tracing_ o _open telemetry_.
- **Scalabilità**: 4. La scalabilità è il punto di forza di questa architettura, in quanto ogni servizio può essere replicato indipendentemente dagli altri, ma la dimensione degli stessi può rendere più complicato del previsto il processo.
- **Performance**: 4. La performance di questa architettura è legata alla capacità di scalare i singoli servizi. Con una buona configurazione di auto-scaling si possono raggiungere eccellenti risultati, anche se la necessità di mettere in comunicazione, via HTTP, socket o qualsiasi altra forma, una quantità elevata di sistemi può impattare sulle performance.

### Altre architetture e pattern

Architetture come la _space-based architecture_ o la _service-oriented architecture_ vengono utilizzate in contesti specifici e non sono solitamente utilizzate come architetture software di riferimento, di conseguenza vengono citate solo per completezza d'informazione.

Una nota importante riguarda la _cell-based architecture_ che si pone come punto di incontro tra i microservizi e la _service-based architecture_. Partendo dal concetto di microservizi, potremmo identificare una _cell_ come un conglomerato di microservizi che rispondono a una necessità di business con una interfaccia unificata. Se si parte invece dal concetto di _service-based_, potremmo identificare una _cell_ come ulteriore scomposizione per facilitarne la manutenzione e la scalabilità.

Altri termini, come la _event-driven architecture_ o la _event-sourcing architecture_ in realtà spesso si riferiscono ad un pattern di progettazione, ovvero un modo di progettare un sistema software, e non un'architettura software a tutti gli effetti. Il concetto di _event-driven_ viene infatti _affiancato_ più che _sostituito_ ad un'architettura software, come nel caso dei microservizi o del _service-based_.

## Documentazione

### Architecture Decision Records

Gli _Architecture Decision Records_ (ADR) sono un modo per documentare le decisioni prese durante la progettazione di un sistema software. Questo tipo di documentazione è molto utile per capire il perché di determinate scelte e per capire come il sistema è stato progettato.

A differenza di una classica documentazione tecnica o di un diagramma, gli ADR sono molto più semplici da scrivere e da leggere, in quanto sono composte da pochi elementi:

- **Titolo**: il titolo della decisione presa.
- **Stato**: lo stato della decisione presa. Solitamente può essere _Proposta_, _Accettata_, _Completata_, _Rifiutata_ o _Sostituita_.
- **Contesto**: il contesto in cui è stata presa la decisione.
- **Decisione**: la decisione presa.
- **Conseguenze**: le conseguenze della decisione presa.

Gli ADR vengono spesso utilizzate nelle aziende in cui si fa leva sul _BDD_ (Behavior Driven Development) per la stesura dei ticket nel proprio sistema di ticketing, puntando ad uno specifico ADR per dare informazioni aggiuntive e contesto a chi legge il ticket.

## Conclusioni

L'architettura software è un argomento molto vasto e complesso, materia che ognuno di noi dovrebbe conoscere e comprendere, in quanto influenza ogni aspetto dello sviluppo software.

Un'architettura scelta in maniera frettolosa o senza una valutazione attenta può portare a conseguenze disastrose, come ad esempio un sistema che non riesce a gestire il carico di lavoro o che non riesce a soddisfare i requisiti di qualità e scalabilità richiesti.

D'altro canto, si consiglia a chiunque legga questi contenuti di non basarsi sulle mere valutazioni fatte, che sono generaliste e non applicabili a tutti i contesti, ma di approfondire l'argomento e di valutare con attenzione ogni aspetto, in quanto ogni architettura software ha i suoi pro e i suoi contro, e ogni progetto ha le sue esigenze, e spesso la verità sta nel mezzo o, come piace dire a noi dev: _dipende_.

## Riferimenti

La lista di architetture software è ispirata e rivisitata a partire dal materiale prodotto e distribuito da [Mark Richards](https://www.developertoarchitect.com/), autore di molti libri sull'architettura software, video e webinar pubblicati su varie piattaforme, tra cui O'Reilly e YouTube.
