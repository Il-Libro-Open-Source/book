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

[TODO] Espandere il concetto, triggered vs continous functions

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

- **Start-up**: 5. Il monolite è l'architettura software più semplice da implementare, in quanto non richiede particolari accorgimenti per la comunicazione tra i vari componenti o una necessità di valutazioni iniziali elevate. Molti linguaggi di programmazione, inoltre, offrono dei framework che permettono di implementare un monolite in pochi minuti. Esempi principali sono Ruby on Rails, Django, Spring Boot, Laravel, ecc.
- **Costi**: 3. Pur essendo un'architettura _a costo zero_ in termini di start-up, il costo cresce esponenzialmente per via della necessità di _scalare orizzontalmente_.
- **Sviluppo e manutenzione**: 4. Il monolite è tra le architetture software più semplice da sviluppare e mantenere, per gli stessi motivi espressi nella voce _start-up_. I framework sono ormai molto maturi e permettono di sviluppare e mantenere un monolite in maniera molto semplice.
- **Tracciabilità**: 4. Essendo tutti i componenti parte dello stesso processo o blocco, è facile individuare la porzione di codice che ha generato un problema o un bug.
- **Scalabilità**: 1. Il monolite è tra le architetture software più difficile da scalare, in quanto non è possibile scalare i singoli componenti, ma è necessario scalare l'intero sistema. In questi casi, infatti, al monolite viene affiancato il concetto di _scalabilità verticale_, ovvero l'incremento delle risorse hardware a disposizione del sistema (CPU, RAM, storage, ecc.) quando queste non sono più sufficienti per gestire il carico di lavoro. La valutazione è dovuta alla necessità, nella maggior parte delle implementazioni di questo tipo, di dover riavviare il sistema per scalare le risorse hardware.
- **Performance**: 2. La performance del monolite è legata alla capacità di scalare le risorse hardware a disposizione del sistema. Di conseguenza la curva di crescita dei tempi di risposta tende ad essere esponenziale. Solitamente le performance, seppur notevoli nelle prime fasi di vita del software, tendono a degradare nel tempo.

### Monolite Modulare

Il monolite modulare è un'architettura software in cui tutte le funzionalità sono sviluppate e distribuite come un singolo pacchetto, ma con la differenza che il codice è organizzato in moduli. Questi moduli possono essere sviluppati e distribuiti in maniera indipendente, ma sono comunque parte dello stesso _blocco_, inteso che l'applicativo online è unico, come nel caso del monolite _classico_.

I moduli devono essere quanto possibile indipendenti tra di loro, il che affianca questa architettura al concetto di _architettura esagonale_, tanto che alle volte i due termini vengono usati indistintamente per intendere lo stesso concetto.

Da non confondersi con altre architetture, in questo caso i moduli sono parte dello stesso processo o applicativo, rendendo necessaria la _scalabilità verticale_.

- **Start-up**: 4. Essendo una variante del monolite, la start-up è molto semplice, ma la necessità di organizzare il codice in moduli può richiedere un po' di tempo.
- **Costi**: 3. Pur essendo un'architettura _a costo zero_ in termini di start-up, il costo cresce esponenzialmente per via della necessità di _scalare orizzontalmente_.
- **Sviluppo e manutenzione**: 5. Rispetto a un monolite _classico_, il monolite modulare è più semplice da sviluppare e mantenere, in quanto i moduli hanno un compito ben definito e sono quanto più possibile indipendenti tra di loro.
- **Tracciabilità**: 2. Compattando i moduli in un unico blocco, è più difficile individuare la porzione di codice che ha generato un problema o un bug in quanto solitamente il codice dei singoli moduli viene minificato o comunque ottimizzato per la produzione.
- **Scalabilità**: 1. Il monolite, anche in forma modulare, è l'architettura software più difficile da scalare, in quanto non è possibile scalare i singoli componenti, ma è necessario scalare l'intero sistema. In questi casi, infatti, al monolite viene affiancato il concetto di _scalabilità verticale_, ovvero l'incremento delle risorse hardware a disposizione del sistema (CPU, RAM, storage, ecc.) quando queste non sono più sufficienti per gestire il carico di lavoro. La valutazione è dovuta alla necessità, nella maggior parte delle implementazioni di questo tipo, di dover riavviare il sistema per scalare le risorse hardware.
- **Performance**: 1. La performance del monolite modulare presenta le stesse falle del monolite _classico_, con l'aggiunta che per far funzionare questa architettura è necessario un ulteriore livello di astrazione, ovvero il modulo, che può portare ad un degrado delle performance.

[TODO] microkernel, microservices, service-based, service-oriented, event-driven, space-based.
