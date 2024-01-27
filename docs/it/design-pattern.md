## Design Patterns

Il concetto di Design Patterns è definito su [Wikipedia](https://it.wikipedia.org/wiki/Design_pattern) come:
> Una soluzione progettuale generale ad un problema ricorrente.

Questo concetto, derivante da un concetto similare esistente in architettura, è comparso per la prima volta nel libro [Design Patterns - Elementi per il riuso di software ad oggetti](https://it.wikipedia.org/wiki/Design_Patterns) i cui autori, detti [Gang of Four](https://it.wikipedia.org/wiki/Gang_of_Four_(scrittori)), sono 4 importanti autori del panorama informatico internazionale: Erich Gamma, Richard Helm, Ralph Johnson e John Vlissides.

Per capire meglio il concetto possiamo dire che ogni design pattern identifica un problema generalizzato da risolvere e gli associa una soluzione; Questo generalmente tramite , ad esempio, uno schema UML che la descrive e aiuta sensibilmente a capirla.\
In generale Design patterns e Programmazione ad oggetti sono strettamente legati poiché sia il libro che pagine internet che ne parlano sono descritti con l'utilizzo di oggetti.\
Questo non vuol dire che ad esempio nella programmazione funzionale non vengano utilizzati ma naturalmente necessitano di strutture differenti tanto è vero che alcuni Design Patterns sono più facilmente implementabili con quest'ultimo paradigma.

Internet ha molte risorse sull'argomento anche valide , fra queste possiamo consigliare:

- [Refactoring Guru](https://refactoring.guru/design-patterns/) molto dettagliato e che spiega nel dettaglio ogni Design Pattern con esempi anche in codice acquistabili separatamente in tutti i linguaggi.
- [Il canale Youtube di Christopher Okhravi](https://www.youtube.com/@ChristopherOkhravi)
- [Design Patterns su Wikipedia Italiano](https://it.wikipedia.org/wiki/Design_pattern)
- [Design Patterns su Wikipedia Inglese](https://en.wikipedia.org/wiki/Design_pattern)

Il libro della Gang of four identifica un elenco iniziale di design pattern ognuno dei quali ha un nome che richiama il problema generico che andrà a risolvere.
Generalmente un programmatore che sta sviluppando una certa parte di codice per implementare una o più funzionalità potrebbe "riconoscere" un design pattern al problema specifico che si sta cercando di risolvere e potrebbe anche non utilizzarlo ma l'utilizzo dello stesso può portare ad una serie di vantaggi.
I principali vantaggi di questo utilizzo sono:

- **Facilità di riuso e test del software**: la creazione di più classi che possono spezzare logicamente il proprio problema implica la possibilità di utilizzare queste logiche in altri contesti o addirittura nello stesso prodotto che si sta sviluppando. Questo spezzare logicamente implica anche la facilità di test soprattutto automatici migliorando la qualità del software.
- **Miglior comprensione del codice**: essendo conosciuti e avendo un nome è possibile riconoscerli (più o meno) facilmente da più persone.
- **Soluzioni provate e testate**: se riconosciamo il problema e applichiamo la soluzione siamo sicuri che funzionano.

Naturalmente , come ogni cosa esistente , ha anche dei svantaggi tra cui:

1. Possono generare parti di codice più complicate, questo perchè ci possono essere casi in cui si può evitare di utilizzarli se il codice esistente ad esempio è semplice
2. In determinati casi minore comprensione del codice anche per il discorso del punto precedente e del fatto che la verità che ci sono programmatori che non li conoscono.
3.

**Come sempre se la domanda è meglio utilizzarli o no la risposta è , naturalmente , dipende dal contesto.**

Il libro sui Design Patterns della Gang of four suddivide i Design Pattern in 3 categorie:

1. Patterns creazionali
2. Patterns strutturali
3. Patterns comportamentali

Oltre al libro in questione ne sono stati introdotti altri che vedremo successivamente.

## Patterns creazionali

## Patterns strutturali

## Patterns comportamentali

## Altri pattern


# Note e appunti

- Spingere di più sul concetto che i Design Pattern siano delle soluzioni _tipo_ a problemi _tipo_ ma che non sempre la situazione sarà così lineare da permetterci in primis di comprendere il problema che stiamo affrontando e inoltre non è detto che la soluzione sia ottimale in termini di, ma non solo: performance, tempi di sviluppo, armonia con altre scelte architetturali, esperienza del team.
- In linea con quanto sopra: Non tutti i dev di un team potrebbero essere in grado di adottare i design pattern nella maniera corretta e, come ogni standard, se non rispettato può portare più problemi che benefici.
- Importante delineare il fatto che spesso i Design Pattern, come altri concetti e best practise del software, siano astrazioni applicative e molti dei concetti rappresentati dai pattern possano essere ritrovati sia a livelli di astrazione più alti (Architettura e addirittura Infrastruttura) o più bassi (Singole righe di codice o singole funzioni).
- Come linea generale eviteremo di listare i design pattern in maniera accademica in quanto il libro sarà un incipit a un futuro approfondimento, ma ci concentreremo sui perché della loro nascita e del loro utilizzo, le principali dinamiche e i principali concetti attorno ad essi, e i pro e i contro generali.