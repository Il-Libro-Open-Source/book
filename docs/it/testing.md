---
layout: default
title: Testing
parent: Technical topics
nav_order: 3
---

<!-- prettier-ignore-start -->
# Testing
{: .no_toc }

- TOC
{:toc}

<!-- prettier-ignore-end -->

Il testing è una parte fondamentale di ogni progetto software. In questo capitolo vedremo come testare il nostro codice in modo efficace.

## Piramide del testing

Esistono diversi tipi di test, ognuno con un suo scopo ben preciso.

Si fa spesso riferimento alla piramide del testing, che rappresenta la proporzione tra di essi:
![Piramide del testing](/book/assets/images/piramide.svg)

Nel resto del capitolo li vedremo nel dettaglio.

### Unit test

Il test unitario è un processo di sviluppo software in cui le parti testabili più piccole di un'applicazione, denominate unità, vengono esaminate individualmente per verificarne il corretto funzionamento. Chi sviluppa, o chi si occupa del controllo qualità del software, completa i test unitari durante il processo di sviluppo. Per unità solitamente si intende una funzione o una piccola serie di funzioni i cui comportamenti sono strettamente legati.

Il punto principale è la presenza di un contesto isolato con un obiettivo.

L'unità che ci si appresta a testare non dovrebbe avere _dipendenze_, ossia richiamare codice di altre unità. Quando ciò accade, il codice richiamato (la dipendenza) dovrebbe essere _messa sotto mock_, cioè essere sostituito, nel contesto dello unit test, da una funzione che ne fa le veci. Questa funzione, denominata appunto **mock**, ci permette di simulare tutti i comportamenti che potrebbe avere la dipendenza senza dipendere direttamente da essa.

Parliamo anche del concetto di _coverage_: Solitamente gli unit test permettono di raggiungere alti livelli di code coverage proprio per via della loro granularità. Per Coverage si intende infatti la percentuale di righe di codice testate sul totale.

Solitamente i problemi rilevabili negli unit test sono più facili da correggere perché riguardano piccole porzioni di codice e molti test sono riutilizzabili anche in altri progetti se si usa codice condiviso.

D'altro canto, se i test sono scritti male o non forniscono una buona coverage, danno falsa sicurezza e non prevengono i bug, e il (tanto) tempo impiegato a scriverli risulta inutile.

### Integration test

Il test di integrazione è una tecnica di test del software che ha come obiettivo quello di testare più componenti o moduli di un sistema software insieme. Ha lo scopo di verificare che i diversi componenti, quando combinati, funzionino correttamente e producano i risultati attesi.

Concetti principali:

- **Scope**: Anche qui parliamo di contesto e obiettivi specifici.
- **Stubs**: Sostituti di moduli e dipendenze necessari al funzionamento dei test.
- **Spettro più ampio**: A differenza dello unit test che verifica un modulo / una funzione / un contesto specifico e ridotto, l’integration testing integra più moduli e ne testa le interdipendenze e la comunicazione.

Tipologie di test:

- **Big-bang**: Si creano decine, centinaia, migliaia di test in base alla dimensione della codebase. Si testa tutto, tutto assieme. Solitamente il tutto viene fatto in un singolo integration test, o in pochissimi. Funziona per codebase ridotte.
- **Top-down testing**: Approccio incrementale, si parte dai moduli ad altissimo livello (Controller nel caso di un MVC) e si scende al livello più basso (Se si utilizzano i fat model si arriva anche fino a lì). Funziona per codebase grosse, iniziare è più complesso ma ha più impatto, pian piano diventa sempre più facile perché i livelli superiori sono già stati testati.
- **Bottom-up testing**: Approccio incrementale al contrario. Si parte da sotto e si va in alto. Anche qui parliamo di grosse codebase, iniziare è più facile ma ha meno impatto, proseguendo anche qui diventa sempre più facile perché l’impalcatura sotto funziona.
- **Sandwich** o **Hybrid Testing**: Combinazione dei due approcci sopra basati su un planning di priorità.

Quando si lavora in team, più o meno grandi, non sempre ci si può assicurare che quanto sviluppato da una parte del team comunichi correttamente con quanto sviluppato da un’altra parte del team: gli Integration test sono fondamentali in questi contesti. Inoltre, se è facile individuare e correggere il comportamento di una specifica funzione (tramite unit test o tramite semplice attenzione quando si sviluppa), più difficile è notare eventuali differenze nel modo in cui i componenti di un’applicazione interagiscono tra di loro. I test di integrazione sono OTTIMI per garantire questa sicurezza.
Infine, l’integrazione tra componenti non è solo da intendersi come "corretta comunicazione e scambio di informazioni tra le parti" ma anche "corretta gestione degli errori". In definitiva, se due o più componenti funzionano assieme e i test sono stati scritti correttamente, abbiamo quasi l'assoluta certezza del loro funzionamento combinato.

D'altro canto è complesso realizzare dei test di integrazione e mantenerli nel tempo per via dell’evoluzione naturale del software su cui si lavora.

Rispetto agli unit test, infatti, è più complicato trovare gli errori essendo più ad ampio spettro.

Molto complesso individuare tutte le integrazioni che ha senso testare. La coverage al 100% è infatti inverosimile in progetti grossi.
Spesso realizzare questi test è più complesso perché bisogna prima avere idea della codebase sottostante, a prescindere che si lavori in TDD (Test Driven Development - vedi paragrafo successivo) o meno.

### End-to-end test

Il test end-to-end (E2E) è una metodologia di test del software che si concentra sul test dell'intero sistema software dall'inizio alla fine, simulando scenari del mondo reale e interazioni dell'utente. Ha lo scopo di garantire che il sistema funzioni correttamente nel suo insieme e soddisfi i requisiti aziendali desiderati. A differenza degli altri tipi di test, fin ora trattati, qui il test interagisce con l'applicativo **solo** attraverso le interfacce più esterne (Browser o Api).

E qui sta il punto. I requisiti sono essenzialmente aziendali e non tecnici.

Nei test E2E, l'intera applicazione o sistema viene testato in un modo che imiti il modo in cui verrebbe utilizzato dagli utenti finali. Implica la simulazione delle interazioni dell'utente, l'inserimento dei dati e la convalida degli output previsti su più componenti, moduli e livelli del sistema.

Anche qui parliamo di contesto e obiettivi, ma chiaramente non sono più “specifici” di per sé perché, ad esempio, testare “specificatamente” un flusso di pagamento coinvolge centinaia di parti. Inoltre, vista la complessità rilevata nel realizzare questi test, solitamente si usano strumenti che perlomeno automatizzino alcune parti del processo, come un live recording via estensione del browser.

A differenza degli altri tipi di test, qui possiamo verificare se l’esigenza non funzionale, e quindi di business, sia rispecchiata nel comportamento della piattaforma.

Infine, a differenza degli altri tipi di test trattati, qui vediamo all’atto pratico come i dati agiscono a 360 gradi.

Ricreando scenari realistici, abbiamo modo di avere una sicurezza “definitiva” (tra molte virgolette) del comportamento della piattaforma.

D'altro canto, è difficile prevedere e analizzare quante farne e cosa testare. Inoltre il test è più lungo da scrivere perché mentre per un integration test basta cambiare un flag per ottenere un flusso diverso, un test e2e deve probabilmente essere riscritto perché ha flussi differenti per giungere alla stessa conclusione.

## Tipologie di test

Esistono diverse tipologie di test, ognuna con un suo scopo ben preciso. Vediamole brevemente:

- **Functional testing**: Il test funzionale è un tipo di test in cui il target sono le specifiche funzionali. Il sistema viene infatti testato rispetto ai requisiti funzionali, garantendo che questi siano adeguatamente soddisfatti dall'applicazione.
- **Performance testing**: Il test di performance è un tipo di test in cui il target è la performance del sistema. Il sistema viene infatti testato rispetto ai requisiti di performance, garantendo che questi siano adeguatamente soddisfatti dall'applicazione.
- **Usability testing**: Il test di usabilità è un tipo di test in cui il target è l'usabilità del sistema. Il sistema viene infatti testato rispetto ai requisiti di usabilità, garantendo che questi siano adeguatamente soddisfatti dall'applicazione.
- **Security testing**: Il test di sicurezza è un tipo di test in cui il target è la sicurezza del sistema. Il sistema viene infatti testato rispetto ai requisiti di sicurezza, garantendo che questi siano adeguatamente soddisfatti dall'applicazione.
- **Regression testing**: Il test di regressione è un tipo di test in cui il target è la regressione del sistema. Il sistema viene infatti testato rispetto ai requisiti di regressione, garantendo che questi siano adeguatamente soddisfatti dall'applicazione.

Esistono molte altre tipologie di test, come _compatibility testing_, _acceptance testing_, _exploratory testing_, _golden testing_, _contract testing_, ma queste sono le più comuni.

## Tecniche di test

Esistono tre tecniche di test, ognuna con un suo scopo ben preciso. Vediamole brevemente:

- **Black-box testing**: Il test _black-box_ è una tecnica di test in cui il tester non ha conoscenza dell'implementazione del sistema. Il focus è sull'esaminazione del funzionamento dell'applicazione (quindi senza conoscere il codice sorgente) rispetto ai requisiti specificati. Il tester verifica se l'applicazione si comporta come previsto. Questo metodo è applicabile a quasi tutti i tipi di software e sistemi, indipendentemente dai linguaggi o dalla tecnologia utilizzata.
- **White-box testing**: Il test _white-box_ è una tecnica di test in cui il tester ha conoscenza dell'implementazione del sistema, quindi dell'intero codice sorgente. Questo approccio si concentra sull'esaminare il comportamento interno del software e sul garantire che tutte le vie logiche ed i segmenti di codice siano testati. Il test ha un focus sulla validazione dei percorsi di esecuzione all'interno del codice, assicurando che tutte le condizioni, i cicli ed i percorsi di codice siano testati. Questo metodo è efficace nell'individuare bug specifici nel codice, come errori di logica, infinity loop e istruzioni non raggiunte.
- **Grey-box testing**: Il test _grey-box_ è una tecnica di test in cui il tester ha conoscenza parziale dell'implementazione del sistema. Questo tipo di testing è particolarmente utile quando si desidera testare il software da una prospettiva esterna, ma con una comprensione sufficiente della sua architettura interna per creare test più mirati ed efficaci. I tester hanno accesso limitato al codice sorgente e alla struttura interna, permettendo loro di comprendere alcuni aspetti dell'architettura del software senza una conoscenza dettagliata. Il _grey-box_ testing si concentra sulle interfaccie e le API del sistema, testando la comunicazione e l'interazione tra diverse unità o moduli. Il vantaggio principale riguarda la maggiore efficienza, data la combinazione di conoscenze interne ed esterne, permettendo di creare test più mirati, aumentando l'efficienza del processo di testing.

Di solito queste tre tecniche vengono utilizzate per individuare eventuali falle nel sistema. Solitamente il _Black-box testing_ è la tecnica più utilizzata, in quanto permette di individuare falle che non sono state individuate durante lo sviluppo e non richiede una conoscenza pregressa del sistema.

## Metodologie di testing

### Manual testing

Il manual testing è una metodologia in cui i test vengono eseguiti manualmente dalla figura del tester. Questo approccio ha diversi svantaggi e solitamente viene utilizzato solo per testare le funzionalità più critiche del sistema quando non è possibile automatizzare i test. Questa metodologia viene chiamata anche _explorative testing_, tramite la quale si prova a rompere l'applicazione creando scenari difficilmente automatizzabili e scrivendo di conseguenza i test.

### Automated testing

L'automated testing è una metodologia in cui i test vengono eseguiti automaticamente da un software. Questo approccio ha diversi vantaggi: **Ripetibilità**, **Riduzione dei costi**, **Riduzione dei tempi di sviluppo**.

### Continuous testing

Il continuous testing è una metodologia in cui i test vengono eseguiti automaticamente ad ogni commit o ad ogni modifica del codice sorgente.

Solitamente viene utilizzato in congiunzione con il concetto di _continuous integration_, ovvero una metodologia di sviluppo software in cui i membri di un team integrano il proprio lavoro frequentemente, generalmente ogni giorno o più volte al giorno. Ogni integrazione viene verificata da un'automazione di build (compilazione) che permette di individuare errori di integrazione il prima possibile.

### Test-driven development

Il test-driven development (TDD) è una metodologia di sviluppo software che prevede di scrivere i test prima di scrivere il codice.
La parola "test" nell'acronimo è spesso mal interpretata. Il TDD non è uno strumento per testare l'applicazione, ma per far emergere il design dell'applicativo partendo dagli obiettivi, sottoforma di test, che vogliamo soddisfare. Questo ci permette di rispettare il principio YAGNI (_You aren't gonna need it_), ovvero non scrivere codice per esigenze future, ma solo per soddisfare l'implementazione dei test da soddisfare.

Il TDD inizia con la scrittura dei test prima di scrivere il codice effettivo. Il ciclo TDD - Spesso chiamato _red-green-refactor_ - è semplice ma potente:

1. Scrivi un Test: Inizia scrivendo un test che descriva il comportamento che desideri implementare. Questo test inizierà sicuramente come un test fallito, poiché il codice non esiste ancora.

2. Scrivi il Codice Minimale: Scrivi il codice minimo necessario per far passare il test. In questa fase, non preoccuparti troppo della qualità del codice; l'obiettivo è far passare il test.

3. Rifattorizza il Codice: Ora che il test è passato, puoi iniziare a migliorare la qualità del tuo codice. Rimuovi duplicazioni, migliora la leggibilità e assicurati che il codice sia pulito e ben strutturato.

Un altro vantaggio del TDD è che si sta automaticamente creando una documentazione tecnica. Guardando la descrizione dei test, è facile comprendere come debba comportarsi l'applicazione.

Non c'è rosa senza spine! Il TDD non è una pratica facile da padroneggiare. Un ottimo modo per iniziare, è l'esercitazione attraverso esercizi mirati, chiamati _kata_, spesso usati in sede di colloquio.

**Ping Pong TDD**

Tendenzialmente quando si fa Test Driven Development si è da soli davanti al proprio programma da completare e davanti alla propria tastiera. Esiste però una pratica che porta più persone a fare Test Driven Development insieme che prende il nome di _Ping Pong TDD_.
Questo è un metodo molto coinvolgente di applicare il TDD.

Come accennato, è un pre-requisito del metodo essere almeno in due.

Le regole di questo _gioco_ si basano sull'alternarsi alla tastiera quando si scrive un test. Il primo "turno" è diverso da tutti i successivi: chi si trova per primo alla tastiera scrive un test che fallisce, poi passa la tastiera al suo pair. Da questo e per tutti i turni successivi, quando una persona inizia il proprio turno deve:

- Far diventare verdi i test scrivendo il codice di produzione adatto.
- Scrivere un test rosso.

Una volta che il test rosso viene scritto, il turno sarà finito e la tastiera tornerà a chi ha iniziato la sessione di ping pong. In pratica ad ogni turno l'obiettivo è far passare i test e successivamente crearne di nuovi fino al completamento del software.

### Behavior-driven development

Il behavior-driven development (BDD) è una metodologia che permette di esplicitare i requisiti funzionali, tramite test. Questo permette una maggior comprensione degli sviluppi, creando un dialogo tra Product Team e Dev Team, con i test come lingua comune.

Questo tipo di test viene scritto con un linguaggio chiamato _gherkins_, composto da Feature e vari scenari. Ogni scenario è composto da:

1. Given: una fase di creazione delle pre-condizioni.
2. When: un'azione sotto test.
3. Then: una condizione da verificare.

Di seguito un esempio che descrive una semplice ricerca su Google:

```
Feature: Google Searching
  As a web surfer, I want to search Google, so that I can learn new things.

  Scenario: Simple Google search
    Given a web browser is on the Google page
    When the search phrase "panda" is entered
    Then results for "panda" are shown
```

### Mutation Testing

Il mutation testing è una metodologia di test per valutare la qualità dell'attuale test suite. Partendo dal codice originale, si creano differenti versioni, ognuna delle quali introduce una mutazione, piccola a piacere. Queste versioni mutate vengono chiamati _mutanti_. L'obiettivo del mutation testing è di verificare se la test suite identifica la mutazione: se un mutante non viene rilevato da un test, viene considerato _vivo_ e i test a riguardo vengono considerati non sufficienti per quella mutazione. Se un mutante viene rilevato da un test, viene considerato _morto_ e i test a riguardo vengono considerati sufficienti per quel mutante.

Le mutazioni possono essere effettuate su vari aspetti del proprio software:

- Operazioni (cambiare un "-" con un "+")
- Comparazioni (cambiare un "==" con un "!=")
- Istruzioni (eliminare delle righe di codice)
- Valori (cambiare il _return_ di una funzione)

Applicando la formula $mutation\ score = \dfrac{mutanti\ morti}{mutanti\ totali} * 100$, possiamo ottenere una percentuale di mutanti morti, che ci permette di capire quanto il nostro codice sia realmente testato.

Vista la natura dei mutation test, il numero di mutazioni può essere molto alto e non sempre le mutazioni coinvolgono i principali use case. Per questo non bisogna stupirsi che lo score sia basso. Infatti uno score alto significa che esiste un test per ogni condizione all'interno del proprio codice, il che porterebbe a:

- un aumento del tempo per la scrittura del codice di test
- un aumento del costo di mantenimento/aggiornamento del codice di test
  In base alle esigenze di progetto, il team può decidere se implementare e migliorare il `mutation score`.

Pur essendo un ottimo strumento per misurare la qualità della test suite, in molti casi questa tecnica di testing non è usata per via della sua complessità e del costo di implementazione.

Esistono strumenti, anche open-source, che possono automatizzare la scrittura di questi test, come Infection (PHP), Stryker Mutator (JavaScript) o Mutants (Rust), riducendo radicalmente la complessità di adottare questa tecnica.

## Test Coverage

La test coverage è una metrica che indica la percentuale di codice sorgente che viene eseguita (_coperta_) durante l'esecuzione dei test. Questa metrica è molto importante, in quanto permette di capire quanto il codice sorgente è stato testato. Solitamente si cerca di raggiungere una test coverage del 100%, ma questo non è sempre possibile, oltre che necessario. Infatti, una test coverage del 100% non garantisce che il codice sorgente sia privo di bug, esattamente come non lo garantisce una coverage del 50%. Come in moltissimi altri aspetti della programmazione, la parola _dipende_ assume un significato molto importante.

**La test coverage ci dice quanto del nostro codice si comporta come ci aspettiamo, ma non è detto che ciò che ci aspettiamo sia corretto.**

### Over-testing

Altra nota importante è relativa alla _coverage 100%_: solitamente si sconsiglia l'adozione di una coverage così alta in quanto si rischia di incorrere in un fenomeno chiamato _over-testing_, nel quale si testano tutte le possibili casistiche, anche quelle che non hanno senso e che impiegano molto tempo ad essere scritte. Questo fenomeno è molto pericoloso, in quanto si rischia di scrivere codice per il mero raggiungimento di un numero, la coverage appunto, che non aggiunge valore al prodotto e che non soddisfa alcun requisito funzionale o non funzionale.

## Tools e Frameworks per il Testing

Ora che abbiamo esplorato i vari tipi di test e le loro applicazioni, è di fondamentale importanza conoscere gli strumenti e i framework che possono rendere questi processi più efficienti ed efficaci. Ogni tipologia di test può essere supportata e migliorata dall'uso di tool specifici, che aiutano l'automazione dei test stessi, rendendo più semplice la scrittura del codice di test e fornendo feedback più dettagliati sui risultati.

Quelle che seguono sono delle liste non esaustive di strumenti che solitamente vengono presi ad esempio quando si parla di una specifica modalità di testing. Ogni linguaggio ha, nella maggior parte dei casi, più di uno strumento per ogni modalità e il suggerimento, come per tutto ciò che riguarda il mondo dello sviluppo, è quello di sperimentare con ognuno di essi e di prendere delle decisioni informate riguardo a quali utilizzare.

### Strumenti per Unit-Test

- **JUnit**: è un framework di test unitari utilizzato in ambito Java. Ampiamente utilizzato per testare singole classi e metodi con annotazioni intuitive.

- **pytest**: Come deducibile dal nome, pytest è un framework utilizzato in ambiente Python, molto versatile che rende semplice scriver test unitari complessi. Offre funzionalità come la parametrizzazione dei test e i fixtures per configurare il contesto di test.

### Strumenti per Integration Test

- **Postman**: Utilizzato principalmente per testare API. Permette di creare richieste HTTP, impostare vari ambienti di test e verificare le risposte delle API. Molto utile anche in un contesto di embedding.

- **TestNG(Java)**: Fornisce funzionalità avanzate per i test d'integrazione. Inclusa l'esecuzione parallela dei test e la gestione delle dipendenze.

### Strumenti per End-to-End Test

- **Selenium**: È un framework utilizzato per automatizzare i browser web. E' ideale per testare interazioni utente complesse in web app.

- **Cypress**: Una soluzione più moderna per il testing E2E, apprezzata per la sua NON complessità d'uso e l'integrazione con ambienti di sviluppo Javascript.

- **Playwright**: Un altro framework moderno che consente di automatizzare il browser e di eseguire test E2E. Punta molto sulle performance e sull'affidabilità di esecuzione delle azioni sugli elementi in pagina.
