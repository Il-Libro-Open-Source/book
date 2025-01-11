## Design Pattern

Il concetto di Design Pattern è definito su [Wikipedia](https://it.wikipedia.org/wiki/Design_pattern) come:

> Una soluzione progettuale generale ad un problema ricorrente.

Questo concetto, derivante da quello similare esistente in architettura, è comparso per la prima volta nel libro [Design Patterns - Elementi per il riuso di software ad oggetti](https://it.wikipedia.org/wiki/Design_Patterns) i cui autori, detti [Gang of Four](<https://it.wikipedia.org/wiki/Gang_of_Four_(scrittori)>), sono 4 importanti figure del panorama informatico internazionale: Erich Gamma, Richard Helm, Ralph Johnson e John Vlissides.

Per capire meglio il concetto possiamo dire che ogni design pattern identifica un problema generalizzato da risolvere e associa ad esso una soluzione; questo generalmente viene rappresentato tramite uno schema UML, di supporto per comprendere meglio quanto proposto.

Spesso design pattern e programmazione ad oggetti sono strettamente legati poiché i primi vengono descritti e spiegati utilizzando gli oggetti.
Questo non vuol dire che, ad esempio, nella programmazione funzionale non vengano utilizzati, ma naturalmente necessitano di strutture differenti; in alcuni casi, a dire il vero, alcuni Design Patterns sono più facilmente implementabili con quest'ultimo paradigma.

Internet ha molte risorse valide sull'argomento, fra queste possiamo citare:

- [Il canale Youtube di Christopher Okhravi](https://www.youtube.com/@ChristopherOkhravi)
- [Design Patterns su Wikipedia Italiano](https://it.wikipedia.org/wiki/Design_pattern)
- [Design Patterns su Wikipedia Inglese](https://en.wikipedia.org/wiki/Design_pattern)

Questo capitolo ha come intento l'introduzione all'argomento, e non ha la presunzione di coprire ogni aspetto dei Design Pattern. Suggeriamo di affiancare la lettura alla navigazione del sito [Refactoring Guru](https://refactoring.guru/design-patterns/), che ne descrive le caratteristiche evidenziando per ognuno vantaggi e svantaggi. Mostrando anche esempi pratici ed esplicativi in diversi linguaggi di programmazione acquistabili nel sito.

Il libro della Gang of Four identifica un elenco iniziale di Design Pattern, ognuno dei quali ha un nome che identifica la soluzione al problema generico che andrà a risolvere.
Durante lo sviluppo, può essere semplice individuare e applicare un design pattern mentre si analizza un problema specifico, ottenendo una serie di vantaggi, tra cui:

- **Facilità di riuso e test del software**: ogni design pattern è stato studiato e catalogato di modo da essere una soluzione (quasi) universale ad ogni problema analogo a quello descritto; di conseguenza è possibile utilizzare un'implementazione simile in diverse porzioni di codice. All'interno della letteratura, questi pattern sono solitamente accompagnati da suggerimenti e metodologie per eseguire del testing, il che rende il processo di scrittura dei test automatizzati più semplice ed efficace.
- **Miglior comprensione del codice**: essendo conosciuti e avendo un nome inequivocabile, è possibile riconoscere i design pattern e creare un linguaggio comune quando si documenta e sviluppa il software.
- **Soluzioni provate e testate**: essendo frutto dell'esperienza congiunta di più persone che sviluppano, e avvalorati da diversi casi d'uso nel corso degli anni, i Design Pattern difficilmente nascondono delle sorprese, e la loro adozione può garantire una soluzione _battle-tested_ e dimostrata rispetto ad un problema specifico.

Naturalmente, come ogni cosa nel mondo del software, i design pattern comportano degli svantaggi, tra cui:

1. Può portare ad aumentare la complessità del codice, per cui andrebbero utilizzati con parsimonia per non creare sovrastrutture non necessarie. 
2. Per essere applicati nel modo migliore, i Design Pattern necessitano la conoscenza di alcune assunzioni, che però si maturano spesso tramite l'esperienza e la letteratura.
3. Le prestazioni spesso non coincidono con l'adozione di design pattern, in quanto lo scopo di questi ultimi è di risolvere un problema, non necessariamente in maniera ottimizzata.

**Come sempre, alla domanda se sia meglio utilizzarli o no, risponderemo con un cauto: _dipende_.**

In generale, non è sempre facile attribuire ad un problema esistente un dato Design Pattern e applicarlo; a volte la soglia tra l'applicazione di un pattern e un altro può essere molto sottile. Per questa ragione, è consigliato scomporre un problema complesso in altri più piccoli, utilizzando la metodologia nota come _divide et impera_, che rende più semplice individuare dei pattern specifici per i singoli problemi scomposti.
Non sempre, però, è possibile scomporre in questo modo un problema, e alle volte bisogna arrendersi alla impossibilità di applicare uno specifico pattern, adottando invece il puro buon senso e arrivando alla soluzione con gli strumenti che si hanno a disposizione.

è possibile applicarli singolarmente, oppure applicarne più di uno; chiaramente una aderenza maggiore implica la facilità nel riconoscerli da parte di altri/e dev che conoscono l'argomento.

Generalmente dopo un refactoring, la nostra applicazione sarà più aderente ai [principi di sviluppo software SOLID](https://it.wikipedia.org/wiki/SOLID) il che implica il riuso e la facilità di test, come accennato in precedenza.\

Oltre al libro sui Design Patterns in questione ne sono stati introdotti altri che vedremo successivamente.\
Il libro della Gang of Four (GOF) suddivide i Design Pattern in 3 categorie:

1. Patterns creazionali
2. Patterns strutturali
3. Patterns comportamentali

## Patterns creazionali

I [Pattern creazionali](https://refactoring.guru/design-patterns/creational-patterns) definiscono uno schema progettuale che in particolare si concentra sulla creazione degli oggetti che concorrono a risolvere un determinato problema.
In questo contesto indichiamo come _prodotti_ gli oggetti creati utilizzando un oggetto generalmente denominato Factory (tradotto in _fabbrica_) che, al suo interno, ne definisce la logica di costruzione, la quale risulta isolata dall'esterno.
Le altre tipologie definite dalla GOF, che sono la strutturale e la comportamentale, si distiguono da questa perché presuppogono già l'esistenza di tutti gli oggetti coinvolti.

I pattern creazionali definiti dalla GOF sono:

- Factory Method : definisce, nella classe Factory, uno o più metodi detti appunto factory methods che creano i nostri oggetti prodotto.
- Abstract Factory : serve a creare famiglie (possibilmente) fisse di oggetti "prodotto" sempre utilizzando una interfaccia/classe chiamata appunto Abstract factory dove anche gli oggetti "prodotto" sono generici (anch'essi utilizzano un'interfaccia o classe astratta).
- Builder : definisce una particolare classe factory che consente di costruire oggetti complessi step-by-step. È quindi possibile produrre diverse tipologie e rappresentazioni di un oggetto componendolo in base alle proprie necessità.
- Prototype : permette di costruire oggetti clonando oggetti già esistenti. Per esempio, JavaScript utilizza proprio il concetto di _prototype_ per estendere gli oggetti. Nota a margine: parliamo proprio degli oggetti e non delle classi che sono state introdotte successivamente.
- Singleton : permette di costruire un oggetto garantendo che ne verrà creata una sola istanza

Come già detto i confini non sono ben definiti per cui, ad esempio, un oggetto complesso potrebbe essere creato tramite un builder e, se una parte dovesse richiedere una clonazione con un successivo raffinamento, sarà necessario utilizzare anche un Prototype che si occuperà della parte di clonazione.
Se non ci fosse la possibilità di effettuare una separazione netta si potrebbe utilizzare il Builder o il Prototype.

## Patterns strutturali

I [Pattern strutturali](https://refactoring.guru/design-patterns/structural-patterns) definiscono uno schema progettuale atto a risolvere problematiche inerenti alla struttura degli oggetti, di modo da renderli flessibili ed efficienti; capiremo meglio questo concetto andando a vedere brevemente tutti i design pattern appartenenti a questa categoria.

I pattern strutturali definiti dalla GOF sono:

- Adapter: è un pattern che permette di interporre tra due interfacce che devono comunicare tra loro un _adattatore_, che traduce le chiamate in entrambe le direzioni nella maniera che ognuna di essere si aspetta. Fornisce una soluzione astratta al problema della interoperabilità fra interfacce. Nella vita reale abbiamo ad esempi gli adattatori delle spine.
- Bridge: è un design pattern strutturale che consente di dividere una classe di grandi dimensioni o un insieme di classi strettamente correlate in entità separate, astrazione e implementazione, che possono essere sviluppate indipendentemente l'una dall'altra. Solitamente questo pattern, per via del modo in cui è implementato, viene chiamato anche _composition-over-inheritance_.
- Decorator: è un pattern che permette di aggiungere funzionalità attraverso il wrapping, cioè incapsulando un oggetto esistente.
  Di conseguenza il nuovo oggetto avrà sia le funzionalità dell'oggetto originale che le nuove funzionalità aggiunte tramite decoratore.
- Façade: è un pattern che permette la semplificazione di un insieme complesso di classi o parti di un sistema, tramite la creazione di classi _di facciata_ che espongano solo le funzionalità più utili.
- Flyweight: è un pattern che permette di ottimizzare l'utilizzo della memoria di un sistema tramite il riutilizzo di membri comuni tra molti oggetti, senza doverne istanziare costantemente di nuovi. Ad esempio, se ho la necessità di realizzare 1.000 oggetti della classe _Dog_ che, tramite un metodo _Move_, modificano la propria posizione, è molto più sensato separare la classe _Dog_ in due classi, _Dog_ e _MovingDog_, collezionando nella prima le informazioni _statiche_, come razza e nome, mentre nella seconda le informazioni di _stato_ o _dinamiche_, come la posizione.
- Proxy: si interpone tra un oggetto (di solito di servizio) e il mondo esterno con cui comunica, utilizzando la stessa interfaccia, ma alterandone il comportamento. Un esempio sono i Proxy server che agiscono da intermezzo tra la propria macchina e il web, alterando e verificando ogni chiamata in ingresso e in uscita da essi, garantendo anonimato e un buon grado di sicurezza.


## Patterns comportamentali

I [Pattern comportamentali](https://refactoring.guru/design-patterns/behavioral-patterns) definiscono uno schema progettuale che in particolare risolve problematiche di comportamento degli oggetti definiti nel pattern. Generalmente questo comportamento si riflette in particolare sugli algoritmi e sulle responsabilità degli oggetti stessi.

I pattern comportamentali definiti dalla GOF sono:

- Chain of responsibility: questo pattern permette di separare gli oggetti che invocano richieste dagli oggetti che le gestiscono. In pratica viene definita una catena di oggetti dove la richiesta viene propagata finchè uno di quelli implementati non decide di gestirla. Ogni elemento della catena viene chiamato _handler_.
- Command: permette di isolare il codice che esegue una azione più o meno complessa dal client che la esegue oppure prendere una richiesta, memorizzarla in modo che possa essere eseguita in un secondo momento ad esempio dopo un certo evento.
- Iterator: permette di visitare tutti gli elementi di un altro oggetto, detto contenitore, senza dipendere dalla struttura interna di esso.
  Un esempio tipico può essere il cursore per la lettura di una datasource.
- Mediator: incapsula l'interazione fra i vari oggetti di un loro insieme facendo in modo che la comunicazione col client venga gestita sempre da una unica entità favorendo il disaccoppiamento fra gli oggetti stessi.
- Memento: si occupa di memorizzare lo stato corrente di un altro oggetto detto Originator cercando di non violare l'incapsulamento. Può essere utile nei casi in cui si possa avere uno storico dell'oggetto stesso richiedendo al Memento il ripristino di uno stato precedente. (Il cosiddetto Undo/Redo)
- Observer: è una struttura formata da un Observer che osserva un cambiamento di stato di un Subject (o Soggetto) che possiamo definire Observable (Osservabile o Osservato) che fa appunto accadere quando lo stato all'interno di esso cambia. Esistono Librerie con RxJS si basano principalmente su questo pattern. Quando l'Observable cambia stato tutti gli Observer registrati ricevono l'informazione del cambiamento.
- State: è di fatto riconducibile ad un diagramma a stati finiti; consente ad un oggetto di modificare il proprio comportamento al cambiamento (ed in base) al suo stato interno.
- Strategy: permette di scegliere più comportamenti di un algoritmo (generalmente una variante di esso) a runtime associandolo (incapsulandolo) in una singola classe che lo implementa
- Template method: è generalmente un metodo che implementa lo scheletro di un algorirmo e al suo interno possono essere chiamate parti (generalmente step) utilizzando la sovrascrittura dei passi senza dover cambiare la struttura del client chiamante.
- Visitor: in esso si separa una struttura dati dalla logica di attraversamento (visita) dell'algoritmo di visita e quindi dalle operazioni fatte su di essa. Gli algoritmi di visita possono cambiare senza cambiare la struttura del client.

## Altri pattern

Come già detto la Gang of Four ha iniziato a definirli e successivamente sulla loro falsa riga ne sono stati individuati altri che descriveremo brevemente di seguito.

- Client/Server: è un pattern cosiddetto architetturale poichè può essere ad esempio l'architettura del prodotto che si vuole sviluppare. Esistono due "componenti" il client che effettua richieste ed il server che le riceve e risponde ad uno o più client.\
  Esempio classico sono quasi tutti i server di database che ad ogni richiesta, ad esempio di esecuzione di una query, rispondono con i risultati.
- Model-View-Controller: è un pattern dove definiamo due entità separate, una per il considdetto _model_, ossia l'entità che vogliamo rappresentare e che contiene i suoi dati, contestualmente al View, che definisce come mostrarla all'utente esterno e ne permette l'interazione; infine esiste il Controller che serve a descrivere le interazioni fra i due.
- Dependency Injection: è un pattern che permette di iniettare una dipendenza in una classe attraverso l'Inversion of control. Questo viene fatto iniettando un'interfaccia o una classe astratta in modo da poter cambiare la sua implementazione in qualsiasi momento.\
  Abbiamo 3 tipi di iniezioni:

  - Injection nel costruttore
  - Injection tramite setter
  - Injection tramite interfaccia
  
In questo libro li abbiamo definiti brevemente evitando di descriverli in maniera accademica; questo capitolo è infatti un modo per approcciarsi al tema e approfondire successivamente, grazie anche all'esistenza di numerose risorse, che li dettagliano in maniera più puntuale come quelle che abbiamo già elencato.
