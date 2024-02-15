## Design Patterns

Il concetto di Design Patterns è definito su [Wikipedia](https://it.wikipedia.org/wiki/Design_pattern) come:

> Una soluzione progettuale generale ad un problema ricorrente.

Questo concetto, derivante da quello similare esistente in architettura, è comparso per la prima volta nel libro [Design Patterns - Elementi per il riuso di software ad oggetti](https://it.wikipedia.org/wiki/Design_Patterns) i cui autori, detti [Gang of Four](<https://it.wikipedia.org/wiki/Gang_of_Four_(scrittori)>), sono 4 importanti figure del panorama informatico internazionale: Erich Gamma, Richard Helm, Ralph Johnson e John Vlissides.

Per capire meglio il concetto possiamo dire che ogni design pattern identifica un problema generalizzato da risolvere e associa ad esso una soluzione; questo generalmente viene rappresentato tramite uno schema UML, di supporto per comprendere meglio quanto proposto.

In generale, design patterns e programmazione ad oggetti sono strettamente legati poiché spesso i primi vengono descritti e spiegati utilizzando di oggetti.
Questo non vuol dire che, ad esempio, nella programmazione funzionale non vengano utilizzati, ma naturalmente necessitano di strutture differenti; in alcuni casi, a dire il vero, alcuni Design Patterns sono più facilmente implementabili con quest'ultimo paradigma.

Internet ha molte risorse valide sull'argomento, fra queste possiamo citare:

- [Refactoring Guru](https://refactoring.guru/design-patterns/) molto dettagliato e che spiega ogni Design Pattern evidenziando di ognuno vantaggi e svantaggi e confrontandoli con gli altri. Sono presenti esempi in codice acquistabili separatamente in tutti i linguaggi.
- [Il canale Youtube di Christopher Okhravi](https://www.youtube.com/@ChristopherOkhravi)
- [Design Patterns su Wikipedia Italiano](https://it.wikipedia.org/wiki/Design_pattern)
- [Design Patterns su Wikipedia Inglese](https://en.wikipedia.org/wiki/Design_pattern)

Il libro della Gang of Four identifica un elenco iniziale di design pattern, ognuno dei quali ha un nome che identifica la soluzione al problema generico che andrà a risolvere.
Generalmente chi sta sviluppando una certa porzione di codice per implementare una o più funzionalità potrebbe "riconoscere" un design pattern durante l'analisi di un problema specifico che si sta cercando di risolvere e decidere di applicarlo, ottenendo una serie di vantaggi, tra cui:

- **Facilità di riuso e test del software**: Ogni design pattern è stato studiato e catalogato di modo da essere una soluzione pressoché universale ad ogni problema analogo a quello descritto, di conseguenza è possibile riutilizzare una implementazione in più punti del proprio codice. Inoltre, questi pattern sono solitamente accompagnati da suggerimenti e metodologie per il loro testing, il che rende il processo di scrittura dei test automatizzati più semplice ed efficace.
- **Miglior comprensione del codice**: Essendo conosciuti e avendo un nome inequivocabile, è possibile riconoscere i design pattern e creare un linguaggio comune quando si documenta e sviluppa il software.
- **Soluzioni provate e testate**: Nascendo dall'esperienza congiunta di più sviluppatori, e avvalorati nel corso degli anni, i design pattern difficilmente nascondono delle sorprese, e la loro adozione può garantire una soluzione _battle-tested_ e dimostrata ad un problema specifico.

Naturalmente, come ogni cosa nel mondo del software, i design pattern comportano degli svantaggi, tra cui:

1. Possono generare parti di codice più complicate. Una porzione di codice intelligibile e senza logiche complesse potrebbe beneficiare dal non utilizzo dei design pattern, che ne complicherebbero la struttura. 
2. Per essere applicati alla lettera, i design pattern necessitano che chi li adotti accetti determinate assunzioni, ma è verosimile che chi sviluppa da poco tempo possa non conoscerli e trovarsi in difficoltà nella lettura e analisi del codice.
3. Le prestazioni spesso non coincidono con l'adozione di design pattern, in quanto lo scopo di questi ultimi è di risolvere un problema, non necessariamente in maniera ottimizzata.

**Come sempre se la domanda è: meglio utilizzarli o no? La risposta è, naturalmente, dipende dal contesto.**

In generale dato un problema non sempre è semplice attribuirgli, se esiste, un design pattern che lo "riconosca"; a volte infatti il limite fra uno o l'altro non è sempre definito quindi si può entrare ad esempio scomponendo il problema più complesso (Divide et impera) in altri più semplici per i quali si potrebbero riconoscere dei pattern specifici.\
A volte invece questa scomposizione non è possibile e, nel caso, si può comunque fare il refactoring scegliendo quello più simile o anche quello più conveniente.

**E' importante sottolineare che non ci sono dei vincoli stringenti che ne impongono l'utilizzo;** \
E' possibile applicarli oppure no, si possono mescolare a piacere, chiaramente una aderenza maggiore implica la facilità di riconoscerli da parte di altri programmatori che conoscono l'argomento.

Generalmente dopo un refactoring, la nostra applicazione sarà più aderente ai [principi di sviluppo software SOLID](https://it.wikipedia.org/wiki/SOLID) il che implica appunto il principalmente il primo dei vantaggi elencati soprattutto il riuso e la facilità di test.\
Come viene definito nel design pattern possiamo definire il design pattern vero e proprio che ne demarca i suoi confini ed il client che definisce tutta la parte esterna ad esso che vi interagisce.\
Il vantaggio principale dell'utilizzo implica che le modifiche apportate tendono a non cambiare sensibilmente il client.

Nel nostro libro li definiremo brevemente evitando di listarli in maniera accademica; il libro sarà un incipit a un futuro approfondimento, in quanto esistono numerose risorse, come già detto, che ne spiegano i dettagli per cui vi rimandiamo ad esse nel caso vogliate saperne qualcosa di più.

Oltre al libro sui Design Patterns in questione ne sono stati introdotti altri che vedremo successivamente.\
Il libro della Gang of Four (GOF) suddivide i Design Pattern in 3 categorie:

1. Patterns creazionali
2. Patterns strutturali
3. Patterns comportamentali

## Patterns creazionali

I Patterns creazionali definiscono uno schema progettuale che in particolare si concentra sulla creazione degli oggetti che concorrono a risolvere un determinato problema.
In questo contesto indichiamo generalmente come prodotti gli oggetti creati utilizzando un oggetto generalmente denominato Factory (fabbrica) che, al suo interno, ne definisce la logica di costruzione che quindi risulta isolata dall'esterno.
Le altre tipologie definite dalla GOF, che sono la strutturale e la comportamentale, si distiguono da questa perché presuppogono già l'esistenza di tutti gli oggetti coinvonti.

I pattern creazionali definiti dalla GOF sono:

- Factory Method : definisce, nella classe Factory, uno o più metodi detti appunto factory methods che creano i nostri oggetti prodotto.
- Abstract Factory : serve a creare famiglie (possibilmente) fisse di oggetti prodotto sempre utilizzando una interfaccia/classe chiamata appunto Abstract factory dove anche gli oggetti prodotto sono generici (anch'essi utilizzano una interfaccia o classe astratta).
- Builder : definisce una particolare classe factory che crea oggetti complessi e viene utilizzato quando gli oggetti sono generalmente composti da altri oggetti creando anch'essi.
- Prototype : permette di costruire oggetti clonando oggetti già esistenti. Javascript utilizza proprio il concetto di prototype per estendere gli oggetti (parliamo proprio degli oggetti e non delle classi che sono state introdotte successivamente).
- Singleton : permette di costruire un oggetto garantendo che ne esista una sola istanza

Come già detto i confini non sono ben definiti per cui, ad esempio, un oggetto complesso potrebbe essere creato tramite un builder e, se una parte dovesse richiedere una clonazione con un successivo raffinamento, sarà necessario utilizzare anche un Prototype che si occupa appunto della parte di clonazione.
Se non ci fosse la possibilità di effettuare una separazione netta si potrebbe utilizzare il Builder o il Prototype.

## Patterns strutturali

I Patterns strutturali definiscono uno schema progettuale che in particolare risolvono problematiche inerenti alla struttura degli oggetti in modo che la soluzione sia flessibile ed efficiente; capiremo meglio questo concetto andando a vedere brevemente tutti i design pattern appartenenti a questa categoria.

I pattern strutturali definiti dalla GOF sono:

- Adapter: Un adapter è un pattern che traduce delle chiamate di una interfaccia alle chiamate di un'altra. Fornisce una soluzione astratta al problema della interoperabilità fra interfacce. Nella vita reale abbiamo ad esempi gli adattatori delle spine.
- Bridge: è un design pattern che separa una astrazione dalla sua separazione. Questo avviene separando l'interfaccia dalla sua implementazione potendo ad esempio cambiare facilmente l'implementazione. Un esempio molto utilizzato è il JDBC o in generale i driver dei database.
- Decorator: è un pattern che permette di aggiungere funzionalità attraverso il wrapping, cioè incapsulando un oggetto esistente.
  Di conseguenza il nuovo oggetto potrà avere alcune funzionalità (non è detto tutte) dell'oggetto incapsulato e la nuova funzionalità aggiunta al suo interno.
- Façade: è un modo per semplificare un insieme di sottosistemi che formano un sistema complesso. Tramite questa semplificazione fornita attraverso una o più classi (poche) cosiddetta di facciata è possibile utilizzare le funzionalità più utili.
- Flyweight: permette di suddividere un oggetto che ha alcuni dei membri ripetibili in 2 parti una con parti che non si ripetono ed un gruppo di membri che insieme tendono a ripetersi. Questo meccanismo tende a limitare (e ottimizzare) l'occupazione di memoria questo perché ogni parte ripetuta viene memorizzata una sola volta.
- Proxy: si interpone ad un oggetto (di solito di servizio) e interagisce con esso utilizzando la stessa intefaccia. Un esempio sono i Proxy server che possono mandare il messaggio richiesto verso i server web veri e propri impedendo ad esempio l'accesso ad alcuni potenzialmente pericolosi.

come si vede in ognuno di essi compare una struttura davanti al nostro client che può variare in ogni design pattern. Ad esempio nell'adapter la struttura cambia l'interfaccia (in quanto struttura della classe), nel Bridge cambia l'implementazione, nel Facade cambia ancora l'interfaccia che risulta più semplice

## Patterns comportamentali

I Patterns strutturali definiscono uno schema progettuale che in particolare risolve problematiche di comportamento degli oggetti definiti nel pattern. Generalmente questo comportamento si riflette in particolare sugli algoritmi e sulle responsabilità degli oggetti stessi.

I pattern comportamentali definiti dalla GOF sono:

- Chain of responsibility: Il pattern permette di separare gli oggetti che invocano richieste, dagli oggetti che le gestiscono. In pratica viene definita una catena di oggetti dove la richiesta viene propagata finchè uno di essi che viene implementato non decide di gestirla. Ogni elemento della catena viene chiamato handler.
- Command: permette di isolare il codice che esegue una azione più o meno complessa dal client che la esegue oppure prendere una richiesta, memorizzarla in modo che possa essere eseguita in un secondo momento ad esempio dopo un certo evento.
- Iterator: permette di visitare tutti gli elementi di una altro oggetto, detto contenitore, senza dipendere dalla struttura interna di esso.
  Un esempio tipico può essere il cursore per la lettura di una datasource.
- Mediator: incapsula l'interazione fra i vari oggetti di un loro insieme facendo in modo che la comunicazione col client venga gestita sempre da una unica entità favorendo il disaccoppiamento fra gli oggetti stessi.
- Memento: si occupa di memorizzare lo stato corrente di un altro oggetto detto Originator cercando di non violare l'incapsulamento. Può essere utile nei casi in cui si possa avere uno storico dell'oggetto stesso richiedendo al Memento il ripristino di uno stato precedente. (Il cosiddetto Undo/Redo)
- Observer: è una struttura formata da un Observer che osserva un cambiamento di stato di un Soggetto che possiamo definire Observable (Osservabile o Osservato) che fa appunto accadere quando lo stato all'interno di esso cambia. Esistono Librerie con RxJS si basano principalmente su questo pattern. Quando l'Observable cambia stato tutti gli Observer registrati ricevono l'informazione del cambiamento.
- State: è di fatto riconducibile ad un diagramma a stati finiti; consente ad un oggetto di modificare il proprio comportamento al cambiamento (ed in base) al suo stato interno.
- Strategy: permette di scegliere più comportamenti di un algoritmo (generalmente una variante di esso) a runtime associandolo (incapsulandolo) in una singola classe che lo implementa
- Template method: E' generalmente un metodo che implementa lo scheletro di un algorirmo e al suo interno possono essere chiamate parti (generalmente step) utilizzando la sovrascrittura dei passi senza dover cambiare la struttura del client chiamante.
- Visitor: in esso si separa una struttura dati dalla logica di attraversamento (visita) dell'algoritmo di visita e quindi dalle operazioni fatte su di essa. Gli algoritmi di visita possono cambiare senza cambiare la struttura del client.

## Altri pattern

Come già detto la Gang of four ha iniziato a definirli e successivamente sulla loro falsa riga ne sono stati individuati altri che descriveremo brevemente di seguito.

- Client/Server: è un pattern cosiddetto architetturale poichè può essere ad esempio l'architettura del prodotto che si vuole sviluppare. Esistono due "componenti" il client che effettua richieste ed il server che le riceve e risponde ad uno o più client.\
  Esempio classico sono quasi tutti i server di database che ad ogni richiesta, ad esempio di esecuzione di una query, rispondono con i risultati.
- Model-View-Controller: è un pattern dove definiamo due entità separate il model che è la nostra entità che vogliamo rappresentare e contiene i suoi dati, il view che dice come mostrarla all'utente esterno e ne permette l'interazione; infine il Controller che effettua le interazioni fra i due.
- Dependency Injection: E' un pattern che permette di iniettare una dipendenza in una classe attraverso l'Inversion of control. Questo viene fatto iniettando una interfaccia o una classe astratta in modo da poter cambiare la sua implementazione in qualsiasi momento.\
  Abbiamo 3 tipi di iniezioni:

  - Injection nel costruttore
  - Injection tramite setter
  - Injection tramite interfaccia

# Note e appunti (Da eliminare a fine stesura)

- Spingere di più sul concetto che i Design Pattern siano delle soluzioni _tipo_ a problemi _tipo_ ma che non sempre la situazione sarà così lineare da permetterci in primis di comprendere il problema che stiamo affrontando e inoltre non è detto che la soluzione sia ottimale in termini di, ma non solo: performance, tempi di sviluppo, armonia con altre scelte architetturali, esperienza del team.
- In linea con quanto sopra: Non tutti i dev di un team potrebbero essere in grado di adottare i design pattern nella maniera corretta e, come ogni standard, se non rispettato può portare più problemi che benefici.
- Importante delineare il fatto che spesso i Design Pattern, come altri concetti e best practise del software, siano astrazioni applicative e molti dei concetti rappresentati dai pattern possano essere ritrovati sia a livelli di astrazione più alti (Architettura e addirittura Infrastruttura) o più bassi (Singole righe di codice o singole funzioni).
- (Già citato in una frase) Come linea generale eviteremo di listare i design pattern in maniera accademica in quanto il libro sarà un incipit a un futuro approfondimento, ma ci concentreremo sui perché della loro nascita e del loro utilizzo, le principali dinamiche e i principali concetti attorno ad essi, e i pro e i contro generali.
- I concetti SOLID sono una parte a se stante di una certa importanza nella programmazione, bisogna capire se parlarne qui o in altre parti per poi farne riferimento.
