# Table Of Contents

- Cos'è il refactoring?
- Quando fare refactoring?
- Quando NON fare refactoring?

# Altre idee

- Differenza (Di intenti oltre che di tempo ed effort) tra refactoring automatico e manuale

## Che cos'è il refactoring

Alcuni direbbero che il refactoring è l'arte di crearsi problemi.
Il refactoring è un insieme di attività dedite a rivedere una o più parti del codice con cui è composta la nostra applicazione.
Può interessare un singolo metodo, una singola classe, un intero modulo.
L'obiettivo di queste attività è rivedere la logica piuttosto che la scrittura del codice che la compone, in modo da ottenere migliori performance (o un maggior disaccoppiamento, una maggiore testabilità) senza però, in alcun modo, alterarne il comportamento e, soprattutto, aggiungere nuove funzionalità.
Se l'attività è stata fatta bene, al termine avremo un codice più pulito, comprensibile, di cui non è stato alterato il comportamento e che passa perfettamente tutti i test già presenti.
Ma andiamo per gradi.

## Quando

Sono diverse le occasioni in cui è possibile fare refactoring e, in alcune di queste, non solo è consigliato ma obbligatorio.
Poniamo il caso che abbiamo una parte del nostro software con del codice "legacy", ovvero scritto più di tre mesi fà, che funziona egregiamente, fa il suo ma, ci rendiamo conto che le performance non sono quelle che ci attendiamo.
Fatta una rapida analisi, notiamo che, magari, ci sono dei cicli ripetuti, o parti di codice che potrebbero essere evitate se solo avessimo posto dei semafori a monte.
Con del buon refactoring potremmo rivedere il codice, eliminare delle dipendenze inutili o utilizzare dei costrutti del linguaggio più adatti, con il risultato di migliorare le performance.
E se non sono le performance a preoccuparci, ma la poltiglia di codice scritto, magari di fretta e sotto pressione, che non rispetta principi base, come la responsabilità singola? Anche in questo caso, possiamo rivedere il codice, renderlo più leggibile e comprensibile così da ottenere un altro bel risultato: eliminare debito tecnico.
Ma, come detto, le occasioni non mancano.
Una di queste, ad esempio, è quando dobbiamo aggiungere una nuova feature. Prima di iniziarne lo sviluppo, sicuramente è buona pratica leggere il codice in cui questa nuova funzionalità andrà a integrarsi e, se quest'ultimo risulta di difficile comprensione, è un'ottima occasione per effettuarne la rifattorizzazione. Questo ci permetterebbe di ottenere una maggiore conoscienza del codice.
Un'altra, forse la migliore, dove è (quasi) obbligatorio, è la risoluzione di un bug in una parte di codice convulso, la cui sola lettura ci fa venire il mal di testa. Un'attività di refactoring potrebbe facilmente portare alla luce l'errore presente nel codice.

## Quando è meglio evitare

Non sempre è utile effettuare refactoring. Ci sono casi in cui il codice è già perfettamente ottimizzato anche se, a una vista inesperta, potrebbe risultare di difficile lettura.
Ci sono casi in cui le performance sono fondamentali e i principi solid non sono sempre rispettati. In questi casi, il refactoring ci porterebbe a creare dei layer aggiuntivi di codice che, sebbene ci renderebbe il codice più comprensibile, avrebbe un impatto negativo sulle performance. Un esempio sono le librerie che permettono le connessioni con delle basi di dati, dove magari è fondamentale la gestione della latenza.

## Come
