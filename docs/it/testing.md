# Testing

Il testing è una parte fondamentale di ogni progetto software. In questo capitolo vedremo come testare il nostro codice in modo efficace.

## Piramide del testing

Esistono diversi tipi di test, ognuno con un suo scopo ben preciso.

Si fa spesso riferimento alla piramide del testing, che rappresenta la proporzione tra i diversi tipi di test:
<img src="./testing/piramide.png" alt="Piramide del testing"/>

Di seguito vedremo nel dettaglio i diversi tipi di test.

### Unit test

Il test unitario è un processo di sviluppo software in cui le parti testabili più piccole di un'applicazione, denominate unità, vengono esaminate individualmente per verificarne il corretto funzionamento. Chi sviluppa e talvolta il personale del controllo qualità completano i test unitari durante il processo di sviluppo. Per unità solitamente si intende una funzione o una piccola serie di funzioni i cui comportamenti sono strettamente legati.

Il punto principale è la presenza di un contesto isolato con un obiettivo.

Non dovrebbe avere dipendenze, se presenti queste dovrebbero essere messe sotto mock quando possibile.

Coverage: Solitamente gli unit test permettono di raggiungere alti livelli di code coverage proprio per via della loro granularità.

Solitamente i problemi nati negli unit test sono più facili da correggere perché riguardano piccole porzioni di codice e molti test sono riutilizzabili anche in altri progetti se si usa codice condiviso.

D'altro canto, se i test sono scritti male o non hanno una buona coverage, danno falsa sicurezza e non prevengono i bug, inoltre impiegano tanto tempo ad essere scritti.

### Integration test

Il test di integrazione è una tecnica di test del software che si concentra sul test delle interazioni e dell'integrazione tra più componenti o moduli di un sistema software. Ha lo scopo di verificare che i diversi componenti, quando combinati, funzionino correttamente e producano i risultati attesi.

Concetti principali:

- **Scope**: Anche qui parliamo di contesto e obiettivi specifici.
- **Stubs**: Sostituti di moduli e dipendenze necessari al funzionamento dei test.
- **Spettro più ampio**: A differenza dello unit test che verifica un modulo / una funzione / un contesto specifico e ridotto, l’integration testing integra più moduli e ne testa le interdipendenze e la comunicazione.

Tipologie di test:

- **Big-bang**: Si creano decine, centinaia, migliaia di test in base alla dimensione della codebase. Si testa tutto, tutto assieme. Solitamente il tutto viene fatto in un singolo integration test, o in pochissimi. Funziona per codebase ridotte.
- **Top-down testing**: Approccio incrementale, si parte dai moduli ad altissimo livello (Controller nel caso di un MVC) e si scende al livello più basso (Se si utilizzano i fat model si arriva anche fino a lì). Funziona per codebase grosse, iniziare è più tosta ma ha più impatto, pian piano diventa sempre più facile perché le parti "sopra" sono già state testate.
- **Bottom-up testing**: Approccio incrementale al contrario. Si parte da sotto e si va in alto. Anche qui parliamo di grosse codebase, iniziare è più facile ma ha meno impatto, proseguendo anche qui diventa sempre più facile perché l’impalcatura sotto funziona.
- **Sandwich** o **Hybrid Testing**: Combinazione dei due approcci sopra basati su un planning di priorità.

Quando si lavora in team più o meno grandi non sempre ci si può assicurare che quanto sviluppato da una parte del team comunichi correttamente con quanto sviluppato da un’altra parte del team, questi test sono fondamentali in questi contesti, inoltre è facile individuare e correggere il comportamento di una specifica funzione (Tramite unit test o tramite semplice attenzione quando si sviluppa), più difficile è notare eventuali differenze nel modo in cui i componenti di un’applicazione interagiscono tra di loro. I test di integrazione sono OTTIMI per garantire questa sicurezza.
Infine, l’integrazione tra componenti non è solo da intendersi come "corretta comunicazione e scambio di informazioni tra le parti" ma anche "corretta gestione degli errori". In definitiva, se so che quei due componenti funzionano assieme e ho scritto correttamente i test dormo sonni tranquilli.

D'altro canto è complesso realizzare dei test di integrazione e mantenerli nel tempo per via dell’evoluzione naturale del software su cui si lavora.

Rispetto agli unit test, infatti, è più complicato trovare gli errori essendo più ad ampio spettro.

Molto complesso individuare tutte le integrazioni che ha senso testare. La coverage al 100% è infatti inverosimile in progetti grossi.
Spesso realizzare questi test è più complesso perché bisogna prima avere idea della codebase sottostante, a prescindere che si lavori in TDD o meno.

### End-to-end test

Il test end-to-end (E2E) è una metodologia di test del software che si concentra sul test dell'intero sistema software dall'inizio alla fine, simulando scenari del mondo reale e interazioni dell'utente. Ha lo scopo di garantire che il sistema funzioni correttamente nel suo insieme e soddisfi i requisiti aziendali desiderati. A differenza degli altri tipi di test, fin ora trattati, qui il test interagisce con l'applicativo **solo** attraverso le interfacce più esterne (Browser o Api).

E qui sta il punto. I requisiti sono essenzialmente aziendali e non tecnici.

Nei test E2E, l'intera applicazione o sistema viene testato in un modo che imita il modo in cui verrebbe utilizzato dagli utenti finali. Implica la simulazione delle interazioni dell'utente, l'inserimento dei dati e la convalida degli output previsti su più componenti, moduli e livelli del sistema.

Anche qui parliamo di contesto e obiettivi, ma chiaramente non sono più “specifici” di per se, perché testate “specificatamente” un flusso di pagamento coinvolge centinaia di parti. Inoltre, vista la complessità di realizzare questi test, solitamente si usano strumenti che perlomeno automatizzino alcune parti del processo, come un live recording via estensione del browser.

A differenza degli altri tipi di test, qui possiamo verificare se l’esigenza non funzionale, e quindi di business, sia rispecchiata nel comportamento della piattaforma.

Infine, a differenza degli altri tipi di test trattati, qui vediamo all’atto pratico come i dati agiscono a 360 gradi.

Ricreando scenari realistici, abbiamo modo di avere una sicurezza “definitiva” (tra molte virgolette) del comportamento della piattaforma.

D'altro canto, è difficile prevedere e analizzare quante farne e cosa testare. Inoltre il test è più lungo da scrivere perché mentre per un integration test basta cambiare un flag, un e2e deve probabilmente essere riscritto perché ha flussi differenti per giungere alla stessa conclusione.

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

Di solito queste tre tecniche vengono utilizzate per individuare eventuali falle nel sistema. Solitamente il _Black-box testing_ è la tecnica più utilizzata, in quanto permette di individuare falle che non sono state individuate durante lo sviluppo e non richiede una conoscenza pregressa del sistema.

## Metodologie di testing

### Manual testing

Il manual testing è una metodologia di testing in cui i test vengono eseguiti manualmente dalla figura del tester. Questo approccio ha diversi svantaggi e solitamente viene utilizzato solo per testare le funzionalità più critiche del sistema quando non è possibile automatizzare i test. Questa metodologia viene chiamata anche _explorative testing_, tramite la quale si prova a rompere l'applicazione creando scenari difficilmente automatizzabili e scrivendo di conseguenza i test.

### Automated testing

L'automated testing è una metodologia di testing in cui i test vengono eseguiti automaticamente da un software. Questo approccio ha diversi vantaggi: **Ripetibilità**, **Riduzione dei costi**, **Riduzione dei tempi di sviluppo**.

### Continuous testing

Il continuous testing è una metodologia di testing in cui i test vengono eseguiti automaticamente ad ogni commit o ad ogni modifica del codice sorgente.

### Test-driven development

Il test-driven development (TDD) è una metodologia di sviluppo software che prevede di scrivere i test prima di scrivere il codice.
La parola Test nell'acronimo è spesso mal interpretata. Il TDD non è uno strumento per testare l'applicazione, ma per far emergere il design dell'applicativo, partendo dai test che vogliamo soddisfare. Questo ci permette di rispettare il principio YAGNI (You aren't gonna need it), ovvero non scrivere codice per esigenze future, ma solo per soddisfare l'implementazione dei test da soddisfare.

Il TDD inizia con la scrittura dei test prima di scrivere il codice effettivo. Il ciclo TDD - Spesso chiamato _red-green-refactor_ - è semplice ma potente:

1. Scrivi un Test: Inizia scrivendo un test che descriva il comportamento che desideri implementare. Questo test inizierà sicuramente come un test fallito, poiché il codice non esiste ancora.

2. Scrivi il Codice Minimale: Scrivi il codice minimo necessario per far passare il test. In questa fase, non preoccuparti troppo della qualità del codice; l'obiettivo è far passare il test.

3. Rifattorizza il Codice: Ora che il test è passato, puoi iniziare a migliorare la qualità del tuo codice. Rimuovi duplicazioni, migliora la leggibilità e assicurati che il codice sia pulito e ben strutturato.

Un altro vantaggio del TDD è che si sta automaticamente creando una documentazione tecnica. Guardando la descrizione dei test, è facile comprendere come debba comportarsi l'applicazione.

Non c'è rosa senza spine! Il TDD non è una pratica facile da padroneggiare. Un ottimo modo per iniziare, è l'esercitazione attraverso esercizi mirati, chiamati kata. Piccolo spoiler, qeusti esercizi vengono spesso usati in fase di colloghio.

### Behavior-driven development

Il behavior-driven development (BDD) è una metodologia che permette di esplicitare i requisiti funzionali, tramite test. Questo permette una maggior comprensione degli sviluppi, creando un dialogo tra Product Owner e Dev Team, con i test come lingua comune.

Questo tipo di test viene scritto con un linguaggio chiamato _gherkins_, composto da Feature e vari scenari. Ogni scenario è composto da:

1. Given: una fase di creazione delle pre-condizioni.
2. When: un'azione sotto test.
3. Then: una condizione da verificare.

Di seguito un esmpio che descrive una semplice ricerca su Google:

```
Feature: Google Searching
  As a web surfer, I want to search Google, so that I can learn new things.

  Scenario: Simple Google search
    Given a web browser is on the Google page
    When the search phrase "panda" is entered
    Then results for "panda" are shown
```

## Test Coverage

La test coverage è una metrica che indica la percentuale di codice sorgente che viene eseguita (_coperta_) durante l'esecuzione dei test. Questa metrica è molto importante, in quanto permette di capire quanto il codice sorgente è stato testato. Solitamente si cerca di raggiungere una test coverage del 100%, ma questo non è sempre possibile. Inoltre, una test coverage del 100% non garantisce che il codice sorgente sia privo di bug, esattamente come una coverage del 50% non garantisce che il codice sorgente sia pieno di bug. Come in moltissimi altri aspetti della programmazione, la parola _dipende_ assume un significato molto importante.

**La test coverage ci dice quanto del nostro codice si comporta come ci aspettiamo, ma non è detto che ciò che ci aspettiamo sia corretto.**
