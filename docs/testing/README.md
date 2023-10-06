# Testing

Il testing è una parte fondamentale di ogni progetto software. In questo capitolo vedremo come testare il nostro codice in modo efficace.

## Piramide del testing

Esistono diversi tipi di test, ognuno con un suo scopo ben preciso. Vediamoli brevemente:

- **Unit test**: testano una singola unità di codice (una funzione, un metodo, una classe, un modulo, ecc.). Sono i test più semplici da scrivere e da eseguire, ma non sono sufficienti per garantire la qualità del software.
- **Integration test**: testano il comportamento di più unità di codice quando vengono integrate tra loro. Sono più complessi da scrivere e da eseguire rispetto ai test di unità, ma sono più efficaci per garantire la qualità del software.
- **End-to-end test**: testano il comportamento di un'intera applicazione, simulando l'interazione di un utente con l'applicazione. Sono i test più complessi da scrivere e da eseguire, ma sono i più efficaci per garantire la qualità del software.

Nessuno di questi test esclude l'altro, e chiunque voglia scrivere del codice di qualità dovrebbe scrivere tutti e tre i tipi di test.

Solitamente i test di unità vengono eseguiti più frequentemente rispetto agli altri tipi di test, in quanto sono più veloci da eseguire. I test di integrazione e gli end-to-end test vengono eseguiti meno frequentemente, ad esempio durante il processo di rilascio del software.

Si fa spesso riferimento alla piramide del testing, che rappresenta la proporzione tra i diversi tipi di test:
<img src="./piramide.png" alt="Piramide del testing"/>

### Unit test

Gli unit test sono i test più semplici da scrivere e da eseguire. Il loro scopo è testare una singola unità di codice (una funzione, un metodo, una classe, un modulo, ecc.). Per esempio, se abbiamo una funzione che calcola il fattoriale di un numero, possiamo scrivere un test per verificare che la funzione calcoli correttamente il fattoriale di un numero.

### Integration test

Gli integration test sono più complessi da scrivere e da eseguire rispetto agli unit test. Il loro scopo è testare il comportamento di più unità di codice quando vengono integrate tra loro. Per esempio, se abbiamo una serie di funzioni che permettono di verificare se un processo di transazione bancaria è andato a buon fine, possiamo scrivere un test per verificare che le funzioni agiscano assieme correttamente.

### End-to-end test

Gli end-to-end test sono i test più complessi da scrivere e da eseguire. Il loro scopo è testare il comportamento di un'intera applicazione, simulando l'interazione di un utente con l'applicazione. Per esempio, se abbiamo un'applicazione che permette di gestire un conto corrente bancario, possiamo scrivere un test per verificare che l'applicazione permetta di effettuare il login, accedere alla propria area personale, visualizzare il saldo del conto corrente, effettuare un bonifico.

## Tipologie di test

Esistono diverse tipologie di test, ognuna con un suo scopo ben preciso. Vediamole brevemente:

- **Functional testing**: Il test funzionale è un tipo di test in cui il target sono le specifiche funzionali. Il sistema viene infatti testato rispetto ai requisiti funzionali, garantendo che questi siano adeguatamente soddisfatti dall'applicazione.
- **Performance testing**: Il test di performance è un tipo di test in cui il target è la performance del sistema. Il sistema viene infatti testato rispetto ai requisiti di performance, garantendo che questi siano adeguatamente soddisfatti dall'applicazione.
- **Usability testing**: Il test di usabilità è un tipo di test in cui il target è l'usabilità del sistema. Il sistema viene infatti testato rispetto ai requisiti di usabilità, garantendo che questi siano adeguatamente soddisfatti dall'applicazione.
- **Security testing**: Il test di sicurezza è un tipo di test in cui il target è la sicurezza del sistema. Il sistema viene infatti testato rispetto ai requisiti di sicurezza, garantendo che questi siano adeguatamente soddisfatti dall'applicazione.
- **Regression testing**: Il test di regressione è un tipo di test in cui il target è la regressione del sistema. Il sistema viene infatti testato rispetto ai requisiti di regressione, garantendo che questi siano adeguatamente soddisfatti dall'applicazione.

Esistono molte altre tipologie di test, come _compatibility testing_, _acceptance testing_, _exploratory testing_, ma queste sono le più comuni.

## Tecniche di test

Esistono tre tecniche di test, ognuna con un suo scopo ben preciso. Vediamole brevemente:

- **Black-box testing**: Il test _black-box_ è una tecnica di test in cui il tester non ha conoscenza dell'implementazione del sistema.
- **White-box testing**: Il test _white-box_ è una tecnica di test in cui il tester ha conoscenza dell'implementazione del sistema.
- **Grey-box testing**: Il test _grey-box_ è una tecnica di test in cui il tester ha conoscenza parziale dell'implementazione del sistema.

Di solito queste tre tecniche vengono utilizzate per individuare eventuali falle nel sistema.

## Metodologie di testing

### Manual testing

Il manual testing è una metodologia di testing in cui i test vengono eseguiti manualmente dalla figura del tester. Questo approccio ha diversi svantaggi e solitamente viene utilizzato solo per testare le funzionalità più critiche del sistema quando non è possibile automatizzare i test.

### Automated testing

L'automated testing è una metodologia di testing in cui i test vengono eseguiti automaticamente da un software. Questo approccio ha diversi vantaggi: **Ripetibilità**, **Riduzione dei costi**, **Riduzione dei tempi di sviluppo**.

### Continuous testing

Il continuous testing è una metodologia di testing in cui i test vengono eseguiti automaticamente ad ogni commit o ad ogni modifica del codice sorgente.

### Test-driven development

Il test-driven development (TDD) è una metodologia di sviluppo software che prevede di scrivere i test prima di scrivere il codice.

### Behavior-driven development

Il behavior-driven development (BDD) è una metodologia di sviluppo software che prevede di scrivere i test prima di scrivere il codice, ma con un approccio più orientato al comportamento dell'applicazione.
