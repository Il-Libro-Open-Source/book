---
layout: default
title: Refactoring
parent: Sviluppo
nav_order: 4
---

<!-- prettier-ignore-start -->
# Refactoring
{: .no_toc }

- TOC
{:toc}

<!-- prettier-ignore-end -->

## Che cos'è il refactoring

Alcuni direbbero che il refactoring è l'arte di crearsi problemi.
Il refactoring è un insieme di attività dedite alla revisione di una o più parti del codice di cui è composta la nostra applicazione.
Può interessare un singolo metodo, una singola classe, un intero modulo.
L'obiettivo di queste attività è rivedere la logica oppure la scrittura del codice che la compone, in modo da ottenere migliori performance (o un maggior disaccoppiamento, una maggiore testabilità) senza però, in alcun modo, alterarne il comportamento e, soprattutto, aggiungere nuove funzionalità.
Se l'attività è stata fatta bene, al termine avremo un codice più pulito, comprensibile, di cui non è stato alterato il comportamento e che passa perfettamente tutti i test già presenti.
Ma andiamo per gradi.

## Benefici

Uno dei principali benefici che otterremo con il refactoring è la rimozione di porzioni di codice non performanti, sostituiti da codice più trasparente e chiaro. E con questo, un'evidente riduzione del debito tecnico accumulato.
Un codice scritto bene non solo aiuta chi lo ha scritto a poterlo rivedere a distanza di tempo senza troppi mal di testa ma, con il crescere del software e l'introduzione di nuove funzionalità, rende più semplice la vita a chi in futuro dovrà interfacciarsi con esso.
Da un codice scritto bene si possono ottenere migliori performance. Magari non direttamente, ma una buona attività di refactoring ci permetterà di avere molto più chiaro come il software interagisce, dandoci la possibilità di individuare eventuali colli di bottiglia, anche a livello architetturale.

## Quando

La scrittura del codice non è del tutto lineare, soprattutto se fatta a più mani. Ogni developer ha un suo stile, delle sue convinzioni e un determinato livello di preparazione. Questo porta spesso ad avere del codice, scritto a colpi di commit, funzionante ma difficile da comprendere, con scorciatoie evitabili, metodi prolissi o, peggio ancora, costanti che non dovrebbero esserlo.
Sono diverse le occasioni in cui è possibile fare refactoring e, in alcune di queste, non solo è consigliato ma obbligatorio.
Poniamo il caso di avere una parte del nostro software con del codice "legacy", magari scritto rispettando dei pattern che, nel tempo, si sono rivelati sbagliati. Oppure scritto di fretta, senza rispettare i principi SOLID e con metodi e variabili che hanno nomi provvisori.
O ancora, il codice scritto risulta difficile da testare, perché presenta metodi o classi poco disaccoppiate. Con metodi privati che non fanno attività atomiche.
Fatta una rapida analisi potremmo notare che magari ci sono dei cicli ripetuti, o parti di codice che potrebbero essere evitate se solo avessimo posto dei semafori a monte.
Con del buon refactoring potremmo rivedere il codice, eliminare delle dipendenze inutili o utilizzare dei costrutti del linguaggio più adatti, con il risultato di migliorarne la lettura, aderire agli standard del linguaggio (che, nell'ottica di rendere il nostro codice più condivisibile possibile, non fa mai male) e, perché no, migliorarne le performance ed eliminare debito tecnico.
Come detto, le occasioni non mancano.
Potremmo cogliere l'occasione di una Code Review o l'aggiunta di una nuova feature. Prima di iniziarne lo sviluppo, sicuramente è buona pratica leggere il codice in cui questa nuova funzionalità andrà a integrarsi e, se quest'ultimo risulta di difficile comprensione, è un'ottima occasione per effettuarne il refactoring. Questo ci permetterebbe di ottenere una maggiore conoscenza del codice.
Un'altra occasione potrebbe essere la risoluzione di un bug in una porzione di codice complessa, la cui sola lettura ci fa venire il mal di testa. Un'attività di refactoring potrebbe facilmente portare alla luce l'errore presente nel codice, e spesso risulta la strada migliore, in quanto porta non solo ad una risoluzione, ma anche ad un codice migliore e più mantenibile in futuro, riducendo il rischio di regressioni.
L'attività di refactoring può essere paragonata a una pulizia profonda di casa, piuttosto che a una routine di sistemazione della propria cameretta, necessaria per mantenere il codice sicuro, di valore ed efficiente.

## Quando è meglio evitare

Non sempre è utile effettuare refactoring.
Ci sono casi in cui il codice è già perfettamente ottimizzato anche se, a una vista inesperta, potrebbe risultare di difficile lettura.
Ci sono casi in cui le performance sono fondamentali e i principi SOLID non sono sempre rispettati. In questo caso, il refactoring ci porterebbe a creare dei layer aggiuntivi di codice che, sebbene possa rendere il codice più comprensibile, avrebbe un impatto negativo sulle performance. Un esempio sono le librerie che permettono le connessioni con delle basi di dati, dove magari è fondamentale la gestione della latenza.
In questi casi, ma più in generale, è necessario tenere a mente che l'attività di refactoring ha tra gli obiettivi quello di rivedere il codice rendendolo più mantenibile, nonché rifattorizzabile.
Diretta conseguenza di questo obiettivo è la sua applicazione nella pratica del TDD (Test Driven Development), dove il refactoring copre uno degli step.

## Come

Come si può intuire, con le attività di refactoring andremo a migliorare il codice in modo da renderlo meno complesso, più mantenibile, più resiliente.
Per farlo, potremmo iniziare con:

- Red-Green-Refactor;
- Rinominare i metodi oscuri;
- Cambiare la firma dei metodi;
- Estrarre nuovi metodi;
- Semplificare i metodi esistenti;
- Astrarre.

### Red-Green-Refactor

Forse il metodo più popolare, utilizzato per mettere in pratica il TDD (Test Driven Development), dove chi sviluppa suddivide il processo di scrittura del codice in tre fasi:

- Si analizzano quali sono le esigenze e si scrive dapprima il test, che, per ovvi motivi, fallirà (_Red_);
- Si scrive il codice necessario affinché il test passi (_Green_);
- Lo si migliora (_Refactoring_)

### Rinominare i metodi oscuri

Ci sono metodi che hanno nomi degni di un codice morse ma che poco dicono sulle operazioni che vanno a intraprendere.
Un buon inizio potrebbe essere quello di rinominarli in modo che chi legge abbia la possibilità di capire cosa fa quel metodo, senza necessità alcuna di andarlo a verificare.
Prendiamo ad esempio questo metodo:

```typescript
function getNetto() {
  basePrice = cart.totalPrice();
  return basePrice * discount();
}
```

Leggendone il contenuto è chiaro che ci sta tornando il totale del carrello al netto di eventuali sconti ma, senza conoscerne il contenuto, come facciamo a esserne sicuri?
Proviamo quindi a rinominarlo con qualcosa di più espressivo.

```typescript
function getAmountWithAppliedDiscount() {
  basePrice = cart.totalPrice();
  return basePrice * discount();
}
```

Cambiandone il nome, abbiamo reso più chiaro cosa farà e rendiamo più semplice la vita a chi quel metodo dovrà usarlo.

### Cambiare la firma dei metodi

Partendo dal presupposto che il codice è vivo, si possono verificare dei casi in cui un metodo riceva più informazioni del necessario.
Ad esempio potremmo avere un metodo che, nella prima stesura, aveva necessità di numerose informazioni, ma, con successive riscritture, alcune di queste risultino superflue e non utilizzate.
Un altro caso può essere quello in cui un metodo necessiti di numerose informazioni che potrebbero essere accorpate in uno o più aggregati. Questo è particolarmente vero nei linguaggi tipizzati, dove potremmo verificare la possibilità di rendere detta firma più stringente, aggregando e/o restituendo tipi meno generici.

Prendiamo ad esempio la seguente funzione:

```typescript
function updateAddress(userId: number, street: string, city: string, zipCode: string, country: string): void {}
```

Questa funzione potrebbe essere semplificata tramite l'introduzione di un aggregato/tipo `Address` che possa racchiudere al proprio interno tutte le informazioni necessarie:

```typescript
function updateAddress(userId: number, address: Address): void {}
```

In questi casi, possiamo rimuovere le informazioni in eccesso piuttosto che sostituirle con nuovi formati, modificando di fatto la firma del metodo.
C'è però da prestare particolare attenzione a questa pratica: se modificare la firma su un piccolo progetto personale è quasi privo di controindicazioni, farlo su un ambiente su cui lavorano più persone o da cui dipendono altri software su cui non abbiamo modo di intervenire, può creare non pochi problemi. Prendete il caso di una libreria utilizzata da più team: il cambiamento di una singola firma causerebbe il mancato funzionamento di tutti i software che dipendono da essa.
Questo non significa che non sia possibile farlo ma che bisogna agire con maggiore cautela, adottando un giusto percorso di _deprecation_. Deprecare una firma, o parte di essa, indicando quando quella firma stessa terminerà di funzionare e quali alternative adottare, dando quindi la possibilità a chi utilizza il nostro software e quel metodo in particolare di adeguarsi, è di sicuro la strada da seguire.

### Estrarre nuovi metodi

Principalmente si tratta di individuare frammenti di codice che effettuano operazioni contingentate e che possono essere estratte dal codice principale e inserite in una funzione a se stante.
Questo permette di avere un codice meno complesso da interpretare, soprattutto se la nomenclatura dei nuovi metodi è sufficientemente chiara.

### Semplificare i metodi esistenti

Quando il codice infrange la regola _KISS_ (Keep It Simple, Stupid).
Mentre tentiamo l'approccio dell'estrazione, ci rendiamo conto che ci sono parti di codice troppo complesse, piene di condizionalità o che generano ripercussioni su diverse parti del codice.
In questo caso, sarà necessario intervenire dapprima sul rendere meno complesso possibile il codice, rivedendo le condizionalità rendendole più semplici e chiare, magari anche rivedendo come il metodo in oggetto interagisce con il contesto circostante.

### Astrarre

Spesso, molte delle classi o dei metodi che vengono creati hanno qualche parte di codice in comune, come le firme dei metodi o l'inizializzazione del contesto.
Sebbene questo potrebbe non essere sempre possibile, dopo avere estratto i metodi, ci potremmo trovare dinanzi a funzioni con comportamenti sovrapponibili. Con l'astrazione possiamo creare delle classi che contengono tali metodi. Metodi che potrebbero divenire ancora più semplici e generici, nonché facili da interpretare.

## Un Esempio

Un caso semplice, ma spesso presente nel nostro codice, potrebbe essere quello di migliorare le performance rimuovendo le variabili temporanee (il codice che segue è pseudo-codice):

```typescript
function applyDiscount() {
  basePrice = cart.totalPrice();
  return basePrice * discount();
}
```

Il codice di partenza potrebbe già andare bene così ma, volendolo migliorare, potremmo dichiare la variabile temporanea in modo da facilitare al compilatore la vita, ovvero:

```typescript
function applyDiscount() {
  final basePrice = cart.totalPrice();
  return basePrice * discount();
}
```

Con questa modifica non abbiamo cambiato in alcun modo il comportamento. Ovviamente otterremo un piccolo vantaggio sulle performance, a patto che il linguaggio che stiamo usando possa trarre vantaggi dalla differenza tra variabili mutabili e non.
Ma, riguardando ancora un attimo il codice, potremmo apportare un'altra modifica:

```typescript
function applyDiscount() {
  return cart.totalPrice() * discount();
}
```

Rimuovendo la creazione di una variabile, che oggettivamente risulta solo superflua, andiamo a migliorare sicuramente le performance, non abbiamo introdotto alcuna complessità e la lettura del codice è ancora ampiamente comprensibile.

## Costi

Lo sviluppo di un software ha un costo, ovviamente anche il refactoring ne ha uno. Ma, fatto con regolarità, sfruttando tutte le occasioni possibili, ovvero effettuando micro-interventi di refactoring, non solo il suo costo tende a diventare trascurabile ma, complessivamente, abbassa i costi grazie alla maggiore manutenibilità, scalabilità e performance ottenute.

## Refactoring vs Riscrittura

Riscrivere tutto da capo o rivedere il lavoro fatto: un bel dilemma.
Quando ci si trova davanti a del codice che necessita di refactoring a tutti è sorto il dubbio: "ma non faccio prima a riscriverlo da capo?"
Questa domanda ce la poniamo, in genere, perché, basandoci sull'esperienza acquisita, ci convinciamo che saremmo più veloci a riscrivere tutto e otterremmo un risultato decisamente migliore. Ma, forse, non stiamo tenendo conto di due fattori fondamentali:

- L'attività di refactoring non dovrebbe alterare il comportamento attuale, e lo stesso dovrebbe valere per i test.
- Scrivendo nuovo codice, potremmo andare incontro a successive revisioni e riscritture, e avremmo necessità di scrivere nuovi test.

Il refactoring è un'attività contingentata che ci permette di guardare con distacco al nostro stesso codice, dandoci la possibilità di migliorarlo proprio alla luce dell'esperienza acquisita. E, imponendoci l'immutabilità delle firme nonché il rispetto dei test attuali, ci permette inoltre di poter rilasciare il nuovo codice con molta più tranquillità.

## Automazione

Esistono ovviamente diversi strumenti per automatizzare le procedure di refactoring, spesso integrati direttamente nell'IDE. Forse il più famoso è [Sonarqube](https://www.sonarsource.com/products/sonarqube/).
Questi strumenti, basati su motori di analisi affidabili e complessi, riescono a individuare dalla banale duplicazione del codice alla mancata adozione di buone pratiche, spesso specifiche del linguaggio di programmazione adottato.
A volte riescono a fare miracoli, ma a noi preme focalizzarci su un punto della questione: l'**effort**.
Quanto effort occorre ad effettuare del refactoring con questi strumenti? O meglio, quanto semplificano la vita di chi sviluppa?
È innegabile che sono dei validi aiuti e che sono formidabili nel farci notare parti di codice da semplificare a cui, magari, non avevamo nemmeno fatto caso.
Tuttavia, affidare il refactoring all'automazione può creare delle situazioni in cui il codice modificato è così tanto, da rendere complicato il controllo da parte di chi sviluppa, tanto che potrebbe avere la tentazione di prendere in blocco tutte le modifiche. Se poi siamo in presenza di una scarsa copertura di test, la frittata è fatta.
C'è poi un altro aspetto da considerare: la **specificità**. Gli strumenti utilizzati sono perfettamente in grado di identificare un eventuale problema e a darci indici di complessità, ma non riescono a renderci edotti del codice nel suo complesso. Senza conoscere come le varie parti del codice interagiscono nel contesto, difficilmente riusciremo a individuare eventuali errori logici o colli di bottiglia.
Ciò nonostante, rimangono degli ottimi aiutanti: se ad essi affidiamo la correzione di tutti quegli "errori" semplici, come la tipizzazione delle variabili (nel caso di linguaggi tipizzati, ovviamente) o la riscrittura di una funzione utilizzando il pattern _Early Return_, ci ritroveremo a dover rifattorizzare del codice già scremato, lasciando la nostra mente libera di concentrarsi sul resto del lavoro da fare.
