# Architetture Software

## Una doverosa premessa

Il termine "architettura software" è un termine che viene utilizzato in maniera molto generica e spesso impropria. In questo documento cercheremo di dare una definizione di architettura software e di descrivere le principali architetture software.

Inoltre, cercheremo di dare una definizione di "chi si occupa di architetture software" e di descrivere il suo ruolo all'interno di un team di sviluppo.

L'argomento è molto vasto e complesso, per cui cercheremo di dare una visione generale, senza entrare troppo nel dettaglio, in quanto ogni singola sezione di questo capitolo potrebbe essere un libro a sé stante.

## Cos'è l'architettura software?

Wikipedia ci da uno spunto di partenza:

> L'architettura software è l'insieme delle strutture necessarie per ragionare su un sistema software e la disciplina per creare tali strutture e sistemi. Ogni struttura comprende elementi software, relazioni tra loro e proprietà di entrambi gli elementi e delle relazioni.

In parole povere, l'architettura software è l'insieme di tutte le decisioni prese durante la progettazione di un sistema software.

## Punti chiave dell'architettura software

L'architettura software è un argomento molto vasto e complesso, ma possiamo identificare alcuni punti chiave che sono comuni a tutte le architetture software.

- **Componenti e moduli**: identifica i principali componenti o moduli del software e descrive le loro responsabilità. Questi componenti possono essere funzioni, classi o persino interi microservizi in un sistema distribuito.
- **Flusso e comunicazione dei dati**: descrive il modo in cui i dati fluiscono tra le diverse parti del sistema, inclusi meccanismi di input e output, database e servizi esterni. Comprendere il flusso di dati è fondamentale per garantire una comunicazione e un'elaborazione dei dati efficienti.
- **Comportamento del sistema**: definisce il comportamento previsto del software in varie condizioni, incluso il modo in cui gestisce gli errori, ripristina i guasti e si adatta per far fronte all'aumento del carico.
- **Attributi di qualità**: soddisfa i requisiti non funzionali, come prestazioni, sicurezza, scalabilità e manutenibilità. Gli architetti prendono decisioni di progettazione per ottimizzare il software per queste qualità.
- **Vincoli e modelli**: l'architettura software spesso opera entro determinati vincoli, come budget, stack tecnologico o standard di conformità. Gli architetti sfruttano i modelli di progettazione e le migliori pratiche per soddisfare questi vincoli ottenendo al tempo stesso la funzionalità desiderata.

In sostanza, l'architettura software fornisce un approccio strutturato alla costruzione di sistemi software complessi, garantendo che siano scalabili, manutenibili e in grado di soddisfare i requisiti e gli standard di qualità previsti. È una disciplina cruciale nell'ingegneria del software che aiuta gli sviluppatori a prendere decisioni informate e a creare software che resista alla prova del tempo.

## Chi si occupa di architetture software?

Chi si occupa di architettura del software è di solito una persona con una certa seniority nel campo dell'ingegneria del software responsabile della progettazione e della supervisione della struttura di alto livello e della visione tecnica di un progetto o sistema software. Queste figure sono fondamentali per colmare il divario tra i requisiti concettuali di una soluzione software e la sua implementazione pratica. Il ruolo va oltre il codice; implica prendere decisioni strategiche sulla progettazione del sistema, garantire che sia in linea con gli obiettivi dell'organizzazione e ottimizzarlo per prestazioni, scalabilità e manutenibilità.

Di seguito le caratteristiche chiave che chi ricopre questo ruolo dovrebbe avere:

- **Competenza tecnica**: questa figura dovrebbe avere una profonda conoscenza di vari linguaggi di programmazione, metodologie di sviluppo software e modelli architettonici. Deve rimanere aggiornata con le tecnologie emergenti e le tendenze nell'ingegneria del software. Seppure ci siano varie opinioni sulla necessità di conoscere più di un linguaggio di programmazione, è indubbio che conoscere più di un linguaggio di programmazione possa aiutare a trovare soluzioni più efficaci.
- **Attitudine al problem-solving**: sono essenziali forti capacità analitiche e di risoluzione dei problemi. Questa figura deve analizzare problemi complessi, identificare soluzioni e prendere decisioni che incidono sulla progettazione complessiva del sistema.
- **Comunicazione**: una comunicazione efficace è fondamentale poiché le persone che ricoprono questo ruolo devono collaborare con team interfunzionali, parti interessate e con il team di sviluppo. Devono articolare la propria visione, le scelte progettuali e i concetti tecnici alle parti interessate non tecniche, facendo da ponte tra i due mondi.
- **Leadership**: Queste figure spesso assumono ruoli di leadership, guidando i team di sviluppo, facendo da mentor a figure junior e garantendo che la visione architetturale venga seguita durante tutto il ciclo di vita del progetto.
- **Design Thinking**: Le persone che ricoprono questo ruolo dovrebbero possedere una mentalità orientata al design, concentrandosi sulla creazione di soluzioni eleganti ed efficienti. Ciò include la progettazione per scalabilità, prestazioni, sicurezza ed esperienza utente.
- **Conoscenza del business**: comprendere gli obiettivi aziendali e i vincoli del progetto o prodotto è fondamentale. Queste figure devono allineare le loro decisioni tecniche con gli obiettivi strategici dell'organizzazione.
- **Adattabilità**: il panorama del software è in continua evoluzione. La figura dovrebbe essere adattabile e aperta a nuove tecnologie e metodologie, nonché capace di rivalutare e adattare l’architettura quando necessario.

## Ma quindi chi si occupa di architetture software deve essere necessariamente un senior?

No, non necessariamente. Anche se è vero che il ruolo viene ricoperto da persone con una certa esperienza, non è detto che una figura junior non possa occuparsi di architetture software. Anzi, è molto importante che lo faccia, in quanto è un ottimo modo per imparare e crescere, ma il consiglio è di affiancare sempre una figura senior che possa guidare e supportare la persona junior.

## Fitness functions

Il termine _fitness function_ viene spesso adottato quando si parla di architetture evolutive, ovvero architetture software il cui scopo è quello di evolvere nel tempo, adattandosi ai cambiamenti del business e del mercato. Possono essere assimilabili a delle metriche che permettono di valutare quanto un'architettura software sia adatta a raggiungere gli obiettivi prefissati o ad eventuali obiettivi futuri del business.

Apiumhub nel 2020 ha pubblicato un post sul proprio blog in cui definisce questo concetto in maniera molto chiara:

> La _fitness functions_ è un tipo di funzione obiettivo utilizzata per riassumere quanto una determinata soluzione di architettura software sia vicina al raggiungimento degli obiettivi prefissati. Nel definire un'architettura evolutiva, l'architetto del software cerca un algoritmo "migliore"; la funzione fitness definisce cosa significa "migliore" in questo contesto.

Esempi di fitness function possono essere: punteggio di scalabilità , percentuale di errori, tempo medio di risposta, quantità di messaggi persi dal broker, ecc.

### Triggered Fitness functions

Le _triggered fitness functions_ (funzioni di fitness _attivate_ o _triggerate_) vengono eseguite in base a un evento particolare, ad esempio il team di sviluppo che esegue un test unitario, una pipeline di distribuzione che esegue una serie di operazioni o una persona del QA che esegue determinate attività stabilite.

Questo tipo di funzioni ha da un lato il vantaggio di poter essere eseguito in maniera molto rapida, ma dall'altro lato ha il difetto di non essere rappresentative di una situazione reale. Questo tipo di fitness function non tiene in considerazione, infatti, il carico di lavoro che il sistema deve gestire durante il _day-by-day_, ma solo situazioni isolate e controllate.

Queste funzioni di fitness vengono spesso lanciate durante una _pipeline_ di distribuzione, in modo da intercettare eventuali variazioni prima che il software venga rilasciato in produzione.

Questo tipo di _fitness function_ richiedono solitamente più manutenzione rispetto alle _continuous fitness functions_, in quanto devono essere aggiornate durante la vita del software, in base alle modifiche che vengono apportate.

Alcuni esempi sono i test unitari, i test di integrazione, ecc.

### Continuous Fitness functions

Le _continuous fitness functions_ (funzioni di fitness _continue_) vengono eseguite in modo continuo sull'ambiente in analisi, tramite raccolta di metriche in tempo reale o comunque a cadenze rapide. Questo tipo di funzioni di fitness sono utili per monitorare il sistema e rilevare eventuali problemi prima che si verifichino, o analizzare dei trend.

Questo tipo di funzioni ha da un lato il vantaggio di rappresentare la situazione reale, dall'altro lato ha il difetto di non essere replicabile, in quanto si basa su dati presi dall'ambiente che si sta analizzando (solitamente quello di produzione).

Queste funzioni di fitness vengono spesso lanciate in un ambiente di produzione, in modo da avere contezza del reale contesto nel quale vengono eseguite.

Alcuni esempi sono il monitoraggio dei tempi medi di risposta, il monitoraggio dei messaggi inviati e ricevuti in una coda, ecc.
## Architecture Decision Records

Le _Architecture Decision Records_ (ADR) sono un modo per documentare le decisioni prese durante la progettazione di un sistema software. Questo tipo di documentazione è molto utile per capire il perché di determinate scelte e per capire come il sistema è stato progettato.

A differenza di una classica documentazione tecnica o di un diagramma, le ADR sono molto più semplici da scrivere e da leggere, in quanto sono composte da pochi elementi:

- **Titolo**: il titolo della decisione presa.
- **Stato**: lo stato della decisione presa. Solitamente può essere _Proposta_, _Accettata_, _Completata_, _Rifiutata_ o _Sostituita_.
- **Contesto**: il contesto in cui è stata presa la decisione.
- **Decisione**: la decisione presa.
- **Conseguenze**: le conseguenze della decisione presa.

Le ADR vengono spesso utilizzate nelle aziende in cui si fa leva sul _BDD_ (Behavior Driven Development) per la stesura dei ticket nel proprio sistema di ticketing, puntando ad uno specifico ADR per dare informazioni aggiuntive e contesto a chi legge il ticket.

## Quali sono le principali architetture software?

Esistono diverse architetture software, ognuna con i suoi pro e i suoi contro. Quanto segue è un elenco non esaustivo delle principali architetture software, diventato però nel corso dei decenni uno standard de facto.

Ad ogni architettura software è associato un elenco contenente i punti chiave che seguono:

- **Start-up**: Il tempo necessario per implementare questa architettura software e cominciare a sviluppare funzionalità. Potremmo anche definirla come la _time to market_.
- **Costi**: Il costo che si affronta nell'arco della vita di un progetto o un prodotto che implementi questa architettura.
- **Sviluppo e manutenzione**: La facilità con il quale è possibile effettuare modifiche e manutenzione al software. Per semplicità, anche l'aspetto del testing viene incluso in questo punto.
- **Tracciabilità**: La facilità con la quale è possibile individuare problemi o bug all'interno del software.
- **Scalabilità**: La facilità con la quale è possibile scalare il software, ovvero la capacità di gestire un carico di lavoro maggiore. Questo punto non fa riferimento alla scalabilità orizzontale o a quella verticale e non tiene conto dei costi, quanto dell'impegno tecnico necessario per scalare il software.
- **Performance**: La velocità con la quale il software è in grado di elaborare i dati e restituire una risposta o rispondere ad un'esigenza.

Questi punti chiave sono da intendersi come una valutazione soggettiva, in quanto ogni architettura software può essere implementata in modi diversi, con conseguenze diverse, valutando criteri e parametri differenti in base alle proprie necessità e, pur essendo un elenco piuttosto esaustivo, mix di queste architetture hanno dimostrato di essere vincenti in molti casi, anche a discapito di quanto riportato in questo elenco.

I punti chiave sono espressi con dei voti che vanno da 1 a 5, dove 1 è il voto più basso e 5 il voto più alto. Per _alto_ si intende il valore logicamente migliore per il punto chiave in questione, mentre per _basso_ si intende il valore logicamente peggiore per il punto chiave in questione, ovvero il valore che si vorrebbe evitare. Nel caso di _costi_, ad esempio, un voto alto significa che i costi sono bassi, mentre un voto basso significa che i costi sono alti.

### Monolite

Il monolite è un'architettura software in cui tutte le funzionalità sono sviluppate e distribuite come un singolo pacchetto. È il tipo di architettura più semplice da implementare, in quanto non richiede particolari accorgimenti per la comunicazione tra i vari componenti, in quanto tutti i componenti sono all'interno dello stesso processo.

Trattasi dell'architettura software più semplice da implementare e più diffusa, ma anche la più difficile da scalare, in quanto non è possibile scalare i singoli componenti, ma è necessario scalare l'intero sistema. In questi casi, infatti, al monolite viene affiancato il concetto di _scalabilità verticale_, ovvero l'incremento delle risorse hardware a disposizione del sistema (CPU, RAM, storage, ecc.) quando queste non sono più sufficienti per gestire il carico di lavoro.

Solitamente questa architettura viene identificata anche come _Layered Architecture_.

In questa architettura il database, il back-end e il front-end sono tutti parte dello stesso processo/applicativo.

- **Start-up**: 5. Il monolite è l'architettura software più semplice da implementare, in quanto non richiede particolari accorgimenti per la comunicazione tra i vari componenti o una necessità di valutazioni iniziali elevate. Molti linguaggi di programmazione, inoltre, offrono dei framework che permettono di implementare un monolite in pochi minuti. Esempi principali sono Ruby on Rails, Django, Spring Boot, Laravel, ecc.
- **Costi**: 3. Pur essendo un'architettura _a costo zero_ in termini di start-up, il costo cresce esponenzialmente per via della necessità di _scalare orizzontalmente_.
- **Sviluppo e manutenzione**: 4. Il monolite è tra le architetture software più semplice da sviluppare e mantenere, per gli stessi motivi espressi nella voce _start-up_. I framework sono ormai molto maturi e permettono di sviluppare e mantenere un monolite in maniera molto semplice.
- **Tracciabilità**: 4. Essendo tutti i componenti parte dello stesso processo o blocco, è facile individuare la porzione di codice che ha generato un problema o un bug.
- **Scalabilità**: 1. Il monolite è tra le architetture software più difficile da scalare, in quanto non è possibile scalare i singoli componenti, ma è necessario scalare l'intero sistema. In questi casi, infatti, al monolite viene affiancato il concetto di _scalabilità verticale_, ovvero l'incremento delle risorse hardware a disposizione del sistema (CPU, RAM, storage, ecc.) quando queste non sono più sufficienti per gestire il carico di lavoro. La valutazione è dovuta alla necessità, nella maggior parte delle implementazioni di questo tipo, di dover riavviare il sistema per scalare le risorse hardware.
- **Performance**: 2. La performance del monolite è legata alla capacità di scalare le risorse hardware a disposizione del sistema. Di conseguenza la curva di crescita dei tempi di risposta tende ad essere esponenziale. Solitamente le performance, seppur notevoli nelle prime fasi di vita del software, tendono a degradare nel tempo.

### Monolite Modulare

Il monolite modulare è un'architettura software in cui tutte le funzionalità sono sviluppate e distribuite come un singolo pacchetto, ma con la differenza che il codice è organizzato in moduli. Questi moduli possono essere sviluppati e distribuiti in maniera indipendente, ma sono comunque parte dello stesso _blocco_, inteso che l'applicativo online è unico, come nel caso del monolite _classico_.

I moduli devono essere quanto possibile indipendenti tra di loro, il che affianca questa architettura al concetto di _architettura esagonale_, tanto che alle volte i due termini vengono usati indistintamente per intendere lo stesso concetto. La forza di questa architettura è comunque la possibilità, seppur da tenere sotto controllo, di far comunicare tra di loro i moduli.

Da non confondersi con altre architetture, in questo caso i moduli sono parte dello stesso processo o applicativo, rendendo necessaria la _scalabilità verticale_.

In questa architettura il database, il back-end e il front-end sono tutti parte dello stesso processo/applicativo.

- **Start-up**: 4. Essendo una variante del monolite, la start-up è molto semplice, ma la necessità di organizzare il codice in moduli può richiedere un po' di tempo.
- **Costi**: 3. Pur essendo un'architettura _a costo zero_ in termini di start-up, il costo cresce esponenzialmente per via della necessità di _scalare orizzontalmente_.
- **Sviluppo e manutenzione**: 5. Rispetto a un monolite _classico_, il monolite modulare è più semplice da sviluppare e mantenere, in quanto i moduli hanno un compito ben definito e sono quanto più possibile indipendenti tra di loro.
- **Tracciabilità**: 2. Compattando i moduli in un unico blocco, è più difficile individuare la porzione di codice che ha generato un problema o un bug in quanto solitamente il codice dei singoli moduli viene minificato o comunque ottimizzato per la produzione.
- **Scalabilità**: 1. Il monolite, anche in forma modulare, è l'architettura software più difficile da scalare, in quanto non è possibile scalare i singoli componenti, ma è necessario scalare l'intero sistema. In questi casi, infatti, al monolite viene affiancato il concetto di _scalabilità verticale_, ovvero l'incremento delle risorse hardware a disposizione del sistema (CPU, RAM, storage, ecc.) quando queste non sono più sufficienti per gestire il carico di lavoro. La valutazione è dovuta alla necessità, nella maggior parte delle implementazioni di questo tipo, di dover riavviare il sistema per scalare le risorse hardware.
- **Performance**: 1. La performance del monolite modulare presenta le stesse falle del monolite _classico_, con l'aggiunta che per far funzionare questa architettura è necessario un ulteriore livello di astrazione, ovvero il modulo, che può portare ad un degrado delle performance.

## Microkernel

Chiamata anche _architettura a plugin_, si compone essenzialmente di un nucleo centrale che si occupa di gestire le comunicazioni tra i vari componenti, che sono sviluppati e distribuiti come plugin.
Questi plugin possono essere sviluppati e distribuiti in maniera indipendente, ma funzionando attorno ad un nucleo centrale, faranno sempre parte dello stesso _blocco_, inteso che l'applicativo online è unico, come nel caso del monolite _classico_.

Il concetto principale attorno a questa architettura è l'indipendenza totale tra i plugin. Per definizione, nessun plugin dovrebbe avere come dipendenza un altro plugin.

In questa architettura il database, il back-end e il front-end sono tutti parte dello stesso processo/applicativo.

- **Start-up**: 4. Essendo una variante del monolite, la start-up è molto semplice, ma la necessità di organizzare il codice in un nucleo centrale e implementare un sistema di plugin può richiedere un po' di tempo.
- **Costi**: 3. Pur essendo un'architettura _a costo zero_ in termini di start-up, il costo cresce esponenzialmente per via della necessità di _scalare orizzontalmente_.
- **Sviluppo e manutenzione**: 4. Trattasi di un'architettura semplice da mantenere e sul quale aggiungere funzionalità, ma la necessità di non far comunicare i plugin tra di loro può aggiungere una lieve complessità.
- **Tracciabilità**: 3. Testare e tracciare eventuali bug in questa architettura è mediamente complesso. L'isolamento dei plugin aiuta con il testing, ma la correlazione col nucleo centrale a volte può rallentare il processo di tracciamento.
- **Scalabilità**: 2. Le difficoltà di scalabilità sono anche in questo caso dovute alla _singola unità di rilascio_ o _single deployment unit_, che non ne permette la _scalabilità orizzontale_.
- **Performance**: 4. Processi di comunicazione semplice e isolabilità rendono questa architettura molto performante.

## Microservizi

La _buzzword_ per eccellenza degli ultimi anni.

Spesso affiancata alle architetture orientate agli eventi, questa architettura software si compone di un insieme di servizi indipendenti tra di loro, ognuno con un compito ben definito, che comunicano tra di loro attraverso un meccanismo di comunicazione _solitamente_ asincrono.

A differenza delle architetture _a singolo blocco_ viste sopra, questa architettura permette di scalare i singoli servizi, in quanto ogni servizio è un'unità di rilascio indipendente dagli altri.

In questa architettura ogni microservizio solitamente ha il proprio database e il proprio back-end (basato su API), mentre il front-end è solitamente un'interfaccia grafica che comunica con i microservizi attraverso le API, a prescindere da dove risieda o da come sia implementato. I database sono solitamente piccoli e si occupano di gestire solo i dati necessari al microservizio in questione.

- **Start-up**: 2. La start-up di un'architettura di questo tipo è complessa, in quanto è necessario stabilire sistemi di _orchestrazione_ o di _coreografia_ dei microservizi. Inoltre, il tipo di comunicazione (sincrono o asincrono) e il metodo adottato (HTTP, AMQP, ecc.) devono essere valutati con attenzione.
- **Costi**: 4. Potendo scalare indipendentemente i singoli microservizi, i costi sono contenuti, in quanto è possibile scalare solo i microservizi che ne hanno bisogno, e solo nei momenti in cui si ritiene necessario.
- **Sviluppo e manutenzione**: 2. Il sistema di orchestrazione o coreografia dei microservizi può aggiungere una complessità non indifferente, soprattutto se non si ha esperienza in questo campo. Inoltre, la necessità di comunicare tra i microservizi può aggiungere un ulteriore livello di complessità.
- **Tracciabilità**: 3. Testare e tracciare eventuali bug in questa architettura è complesso. L'isolamento dei microservizi aiuta in questo caso, ma la tracciabilità è piuttosto complessa e richiede integrazione di _distributed tracing_ o _open telemetry_.
- **Scalabilità**: 5. La scalabilità è il punto di forza di questa architettura, in quanto ogni microservizio può essere scalato indipendentemente dagli altri.
- **Performance**: 4. La performance di questa architettura è legata alla capacità di scalare i singoli microservizi. Con una buona configurazione di auto-scaling si possono raggiungere eccellenti risultati, anche se la necessità di mettere in comunicazione, via HTTP, socket o qualsiasi altra forma, una quantità elevata di sistemi può impattare sulle performance.

## Service-oriented

Il _service-oriented_ è un'architettura software in cui l'applicativo viene suddiviso in una manciata di servizi (Solitamente da 3 a 12) che comunicano tra di loro attraverso un meccanismo di comunicazione _solitamente_ asincrono.

Ci si aspetta che i servizi abbiano una costante comunicazione tra di loro e che rispettino dei contratti (interfacce) ben stabilite. Questo tipo di architettura è molto simile a quella dei microservizi, ma con la differenza che i servizi sono solitamente più grandi e con un compito ben definito.

In questa architettura ogni servizio solitamente ha il proprio database, il proprio back-end e il proprio front-end, anche se ci sono casi in cui il database sia condiviso tra i servizi (In questo caso si suggerisce un utente con accesso alle sole tabelle o schemi di pertinenza), altri in cui il front-end vive in un applicativo separato o, ancora, altri in cui il front-end è unico per tutti i servizi.

Questa architettura viene spesso indicata come "l'anello mancante" tra il monolite e i microservizi, anche se la dimensione dei servizi e il successivo _decoupling_ sono temi piuttosto complessi da gestire.

- **Start-up**: 3. La start-up di un'architettura di questo tipo è complessa, ma non quanto quella dei microservizi, anche se molte delle sfide sono simili.
- **Costi**: 4. Potendo scalare indipendentemente i singoli servizi, i costi sono contenuti, in quanto è possibile scalare solo i servizi che ne hanno bisogno, e solo nei momenti in cui si ritiene necessario.
- **Sviluppo e manutenzione**: 3. Come per lo start-up, le sfide e le necessità sono simili a quelle dei microservizi, ma essendo entità più grandi, la complessità diminuisce.
- **Tracciabilità**: 4. Testare e tracciare eventuali bug in questa architettura è piuttosto semplice vista la normale dimensione che i servizi hanno. L'isolamento aiuta, e anche qui si suggerisce l'integrazione di _distributed tracing_ o _open telemetry_.
- **Scalabilità**: 4. La scalabilità è il punto di forza di questa architettura, in quanto ogni servizio può essere scalato indipendentemente dagli altri, ma la dimensione degli stessi può rendere più complicato del previsto il processo.
- **Performance**: 4. La performance di questa architettura è legata alla capacità di scalare i singoli servizi. Con una buona configurazione di auto-scaling si possono raggiungere eccellenti risultati, anche se la necessità di mettere in comunicazione, via HTTP, socket o qualsiasi altra forma, una quantità elevata di sistemi può impattare sulle performance.

## Altre architetture e pattern

Architetture come la _space-based architecture_ vengono utilizzate in contesti specifici e non sono solitamente utilizzate come architetture software di riferimento, di conseguenza vengono citate solo per completezza d'informazione.

Altri termini, come la _event-driven architecture_ o la _event-sourcing architecture_ in realtà vanno ad intendere un pattern di progettazione, ovvero un modo di progettare un sistema software, e non un'architettura software a tutti gli effetti. Il concetto di _event-driven_ viene infatti _affiancato_ più che _sostituito_ ad un'architettura software, come nel caso dei microservizi o del service-oriented.

## Conclusioni

L'architettura software è un argomento molto vasto e complesso, ma è un argomento che ognuno di noi dovrebbe conoscere e comprendere, in quanto influenza ogni aspetto dello sviluppo software.

Un'architettura scelta in maniera frettolosa o senza una valutazione attenta può portare a conseguenze disastrose, come ad esempio un sistema che non riesce a gestire il carico di lavoro o che non riesce a soddisfare i requisiti di qualità e scalabilità richiesti.

D'altro canto, si consiglia a chiunque legga questi contenuti di non basarsi sulle mere valutazioni fatte, che sono generaliste e non applicabili a tutti i contesti, ma di approfondire l'argomento e di valutare con attenzione ogni aspetto, in quanto ogni architettura software ha i suoi pro e i suoi contro, e ogni progetto ha le sue esigenze, e spesso la verità sta nel mezzo o, come piace dire a noi dev, _dipende_.

## Riferimenti

La lista di architetture software è ispirata e rivisitata a partire dal materiale prodotto e distribuito da Mark Richards, autore di molti libri sull'architettura software, video e webinar pubblicati su varie piattaforme, tra cui O'Reilly e YouTube.
