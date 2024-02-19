# Refactor

## Che cos'è il refactoring

Alcuni direbbero che il refactoring è l'arte di crearsi problemi.
Il refactoring è un insieme di attività dedite a rivedere una o più parti del codice con cui è composta la nostra applicazione.
Può interessare un singolo metodo, una singola classe, un intero modulo.
L'obiettivo di queste attività è rivedere la logica piuttosto che la scrittura del codice che la compone, in modo da ottenere migliori performance (o un maggior disaccoppiamento, una maggiore testabilità) senza però, in alcun modo, alterarne il comportamento e, soprattutto, aggiungere nuove funzionalità.
Se l'attività è stata fatta bene, al termine avremo un codice più pulito, comprensibile, di cui non è stato alterato il comportamento e che passa perfettamente tutti i test già presenti.
Ma andiamo per gradi.

## Benefici

Uno dei principali benefici che otterremo con il refactoring è la rimozione di porzioni di codice non performanti, sostituiti da codice più trasparente e chiaro. E con questo, un'evidente riduzione del debito tecnico accumulato.
Un codice scritto bene, non solo aiuta a chi lo ha scritto di poterlo rivedere a distanza di qualche tempo senza troppi mal di testa ma, con il crescere del software e l'introduzione di nuove funzionalità, rende più semplice la vita ai futuri sviluppatori che dovranno interfacciarsi con esso.
Da un codice scritto bene, si possono ottenere migliori performance. Magari non direttamente ma, una buona attività di refactoring ci permetterà di avere molto più chiaro come il software interagisce, dandoci la possibilità di individuare eventuali colli di bottiglia, anche a livello architetturale.

## Quando

La scrittura del codice non è del tutto lineare, soprattutto se scritto a più mani. Ogni sviluppatore ha un suo stile, delle sue convinzioni, un determinato livello di preparazione. Questo porta spesso ad avere del codice, scritto a colpi di commit, funzionante ma difficile da comprendere, con scorciatoie evitabili, metodi prolissi o, peggio ancora, costanti che non dovrebbero esserlo.
Sono diverse le occasioni in cui è possibile fare refactoring e, in alcune di queste, non solo è consigliato ma obbligatorio.
Poniamo il caso che abbiamo una parte del nostro software con del codice "legacy", magari scritto rispettando dei pattern che, nel tempo, si sono rivelati sbagliati. Oppure scritto di fretta, senza rispettare i principi SOLID e con metodi e variabili che hanno nomi provvisori.
O ancora, il codice scritto risulta difficile da testare, perché presenta metodi o classi poco disaccoppiate. Con metodi privati che non fanno attività atomiche.
Fatta una rapida analisi, notiamo che, magari, ci sono dei cicli ripetuti, o parti di codice che potrebbero essere evitate se solo avessimo posto dei semafori a monte.
Con del buon refactoring potremmo rivedere il codice, eliminare delle dipendenze inutili o utilizzare dei costrutti del linguaggio più adatti, con il risultato di migliorarne la lettura, aderire agli standard del linguaggio (che, nell'ottica di rendere il nostro codice più condivisibile possibile, non fa mai male) e, perché no, migliorarne le performance e eliminare debito tecnico.
Come detto, le occasioni non mancano.
Potremmo cogliere l'occasione di una Code Review o l'aggiunta di una nuova feature. Prima di iniziarne lo sviluppo, sicuramente è buona pratica leggere il codice in cui questa nuova funzionalità andrà a integrarsi e, se quest'ultimo risulta di difficile comprensione, è un'ottima occasione per effettuarne la rifattorizzazione. Questo ci permetterebbe di ottenere una maggiore conoscienza del codice.
Un'altra, forse la migliore, dove è (quasi) obbligatorio, è la risoluzione di un bug in una parte di codice convulso, la cui sola lettura ci fa venire il mal di testa. Un'attività di refactoring potrebbe facilmente portare alla luce l'errore presente nel codice.
L'attività di refactoring può essere paragonata a una pulizia profonda di casa, piuttosto che a una routine di sistemazione della propria cameretta, necessaria per mantenere il codice sicuro, di valore ed efficiente.

## Quando è meglio evitare

Non sempre è utile effettuare refactoring.
Ci sono casi in cui il codice è già perfettamente ottimizzato anche se, a una vista inesperta, potrebbe risultare di difficile lettura.
Ci sono casi in cui le performance sono fondamentali e i principi SOLID non sono sempre rispettati. In questo caso, il refactoring ci porterebbe a creare dei layer aggiuntivi di codice che, sebbene ci renderebbe il codice più comprensibile, avrebbe un impatto negativo sulle performance. Un esempio sono le librerie che permettono le connessioni con delle basi di dati, dove magari è fondamentale la gestione della latenza.
In questi casi, ma più in generale, è necessario tenere a mente che l'attività di refactoring ha tra gli obiettivi quello di rivedere il codice rendendolo più mantenibile, nonché rifattorizzabile.
Diretta conseguenza di questo obiettivo, è la sua applicazione nella pratica del TDD (Test Driven Development), dove il refactoring copre uno degli step.

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

Forse il metodo più popolare, utilizzato per mettere in pratica il TDD (Test Driven Development), dove lo sviluppatore suddivide il processo di scrittura del codice in tre fasi:

- Analizza quali sono le esigenze e scrive dapprima il test, che, per ovvi motivi, fallirà (_Red_);
- Scrive il codice necessario affinché il test passi (_Green_);
- Lo migliora (_Refactoring_)

### Rinominare i metodi oscuri

Ci sono metodi che hanno nomi degni di un codice morse ma che poco dicono sull'operazioni che vanno a intraprendere.
Un buon inizio potrebbe essere quello di rinominarli in modo che chi legge, abbia la possibilità di capire cosa fa quel metodo senza necessità alcuna di andarlo a verificare.

### Cambiare la firma dei metodi

Partendo dal presupposto che il codice è vivo, si ci può trovare nelle condizioni in cui al metodo inizialmente venivano passate diverse informazioni, che magari ora non sono più necessarie. E magari non lo sono perché nel frattempo, quella parte di codice era stata già snellita in qualche attività precedente.
Possiamo quindi rimuovere le informazioni in eccesso, modificandone la firma.
Inoltre, potremmo verificare, nei linguaggi tipizzati, se c'è la possibilità di rendere detta firma più stringente, ammettendo e/o restituendo tipi meno generici.

### Estrarre nuovi metodi

Principalmente si tratta di individuare frammenti di codice che effettuano operazioni contingentate e che possono essere estratte dal codice principale e inserite in una funzione a se stante.
Questo permette di avere un codice meno complesso da interpretare, soprattutto se la nomenclatura dei nuovi metodi è sufficientemente chiara.

### Semplificare i metodi esistenti

Quando il codice infrange la regola _KISS_ (Keep It Simple, Stupid).
Mentre tentiamo l'approccio dell'estrazione, ci rendiamo conto che ci sono parti di codice troppo complesse, piene di condizionalità o che generano ripercussioni su diverse parti del codice.
In questo caso, sarà necessario intervenire dapprima sul rendere meno complesso possibile il codice, rivedendo le condizionalità rendendole più semplici e chiare, magari anche rivedendo come il metodo in oggetto interagisce con il contesto circostante.

### Astrarre

Spesso, molte delle classi o dei metodi che vengono creati, hanno qualche parte di codice in comune, come le firme dei metodi o l'inizializzazione del contesto.
Sebbene questo potrebbe non essere sempre possibile, dopo avere estratto i metodi, ci potremmo trovare dinanzi a molti di questi che sono simili se non uguali. Con l'astrazione possiamo creare delle classi che contengono tali metodi. Metodi che potrebbero divenire ancora più semplici e generici, nonchè facili da interpretare.

## Un Esempio

Un caso semplice ma spesso presente nel nostro codice, potrebbe essere quello di migliorare le performance rimuovendo le variabili temporanee (il codice che segue è pseudo-codice):

```
function applyDiscount() {
  basePrice = cart.totalPrice();
  return basePrice * discount();
}
```

Il codice di partenza potrebbe già andare bene così ma, volendolo migliorare, potremmo dichiare la variabile temporanea in modo da facilitare al compilatore la vita, ovvero:

```
function applyDiscount() {
  final basePrice = cart.totalPrice();
  return basePrice * discount();
}
```

Con questa modifica, non abbiamo modificato in alcun modo il comportamento. Ovviamente, otterremo un piccolo vantaggio sulle performance a patto che, il linguaggio che stiamo usando può trarre vantaggi dalla differenza tra variabili mutabili e non.
Ma, riguardando ancora un attimo il codice, potremmo apportare un'altra modifica:

```
function applyDiscount() {
  return cart.totalPrice() * discount();
}
```

Rimuovendo la creazione di una variabile, che oggettivamente risulta solo superflua, andiamo a migliorare sicuramente le performance, non abbiamo introdotto alcuna complessità e la lettura del codice è ancora ampiamente comprensibile.

## Costi

Lo sviluppo di un software ha un costo, ovviamente anche il refactoring ne ha uno. Ma, fatto con regolarità, sfruttando tutte le occasioni possibili, ovvero effettuando micro-interventi di refactoring, non solo il suo costo è trascurabile ma, complessivamente, abbassa i costi grazie alla maggiore mantenibilità, scalabilità e performance ottenute.

## Refactoring vs Riscrittura

Si potrebbe obiettare che riscrivere una parte del nostro software, basandosi sull'esperienza acquisita, è più veloce o forse più auspicabile del refactoring.
In realtà questa affermazione è fallace: riscrivere significa affrontare un'attività che comporta del tempo non sempre definito, che apporta delle modifiche al funzionamento del software, che andrà testato probabilmente con dei nuovi test e che, non da ultimo, andrà rilasciato in blocco.
Con il refactoring, dove il dictat del non modificare in alcun modo il comportamento ci impone che i test devono continuare a funzionare senza alcun nostro intervento, è un'attività contingentata che può essere fatta durante lo sviluppo di una nuova funzionalità, se non durante la scrittura dei test stessi. E, soprattutto, il lavoro può essere rilasciato durante il normale ciclo di vita del software, annegato tra i vari rilasci e/o correzioni.

## Automazione

Esistono ovviamente diversi strumenti pe automatizzare le procedure di refactoring, spesso integrati direttamente nell'IDE. Forse il più famoso è Sonarqube.
Questi strumenti, basati su motori di analisi affidabili e complessi, riescono a individuare dalla banale duplicazione del codice alla mancata adozione di buone pratiche, spesso specifiche del linguaggio di programmazione adottato.
A volte riescono a fare miracoli ma, a noi preme focalizzarci su un punto della questione: l'effort.
Quanto effort occorre ad effettuare del refactoring con questi strumenti. O meglio, quanto semplificano la vita dello sviluppatore.
È innegabile che sono dei validi aiuti e che sono formidabili nel farci notare parti di codice da semplificare a cui, magari, non avevamo nemmeno fatto caso.
Ma, affidare il refactoring all'automazione, può creare delle situazioni in cui il codice modificato è così tanto da rendere complicato il controllo da parte dello sviluppatore, che sarebbe tentato di prendere in blocco tutte le modifiche. Se poi siamo in presenza di una scarsa copertura di test, la frittata è fatta.
C'è poi un altro aspetto da considerare: la specificità. Gli strumenti utilizzati sono perfettamente in grado di identificare un eventuale problema, darci indici ci complessità ma non riescono a renderci edotti del codice nel suo complesso. Senza conoscere come le varie parti del codice interagiscono nel contesto, difficilmente riusciremo a individuare eventuali errori logici o colli di bottiglia.
Ciò nonostante, rimangono degli ottimi aiutanti: se ad essi affidiamo la correzione di tutti quegli "errori" semplici, come la tipizzazione delle variabili (nel caso di linguaggi tipizzati, ovviamente) o la riscrittura di una funzione utilizzando il pattern _Early Return_, ci ritroveremo a dover rifattorizzare del codice già scremato, lasciando la nostra mente libera di concentrarsi sul resto del lavoro da fare.
