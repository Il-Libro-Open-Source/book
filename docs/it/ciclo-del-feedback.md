---
layout: default
title: Ciclo del Feedback
nav_order: 999
---

# Il Ciclo del Feedback

## La flessibilità del software

Intuitivamente parlando, sembra ovvio che noi sviluppatori, con una connessione internet e un portatile alla mano, possiamo essere enormemente più produttivi di decine di operai da catena di montaggio del secolo scorso. Ma perché è davvero così?

Sicuramente è grazie al fatto che possiamo lavorare con strumenti frutto di decenni di evoluzione tecnologia esponenziale, ma la vera ragione, il vero discriminante, sta nel fatto nel prefisso "soft" nella parola "software": il prodotto del nostro lavoro è spesso intangibile e facilmente manipolabile, tanto che se commettiamo un errore, non dobbiamo prendere il semilavorato e buttarlo via, sprecando materie prime, ma nella peggiore delle ipotesi abbiamo solo sprecato un po' di tempo.

Tutto questo non è nient'altro che la "Terza rivoluzione industriale", come viene chiamata nei libri di scuola; dopo alcuni decenni in cui il collo di bottiglia è stata la potenza di calcolo, al giorno d'oggi abbiamo a disposizione CPU e memoria sufficienti per qualunque task mondano, ma questa pura forza bruta ha esposto una nuova tipologia di problemi, quelli organizzativi: far lavorare decine, se non centinaia di sviluppatori assieme sullo stesso progetto software è un problema non banale, e che tanti prima di noi si sono trovati a dover risolvere.

Uno strumento che è emerso vincitore da queste difficoltà è il "ciclo del feedback"; ma di che si tratta? E' un approccio in cui, in seguito di una semplice azione, si va a misurarne rapidamente l'effetto (il "feedback"), così da ottenerne nuove informazioni, che saranno impiegate per intraprendere i prossimi passi in maniera più conscia e informata, creando così il "ciclo". Questo ciclo generalmente permette di procedere in una attività a piccoli passi ma con una discreta rapidità e, cosa ancora più importante, sempre nella giusta direzione, visto che eventuali errori di rotta possono essere rapidamente corretti ad ogni passo.

## Il manifesto Agile e l'Extreme Programming

Alcuni movimenti che sono nati in seno alle difficoltà di questa rivoluzione sono il Manifesto Agile, l'Extreme Programming, il DevOps: il primo ad alto livello, il secondo ad un livello più "basso" tecnico, il terzo in maniera "mista", hanno tutti cercato di trovare modi per scrivere software in maniera più snella e organizzata, in modo che non ci si ritrovasse più in una melassa di linee di codice che, dopo pochi mesi di lavoro, diventava ingestibile.

Alle fondamenta di questi approcci si trova **il ciclo del feedback**: vista la malleabilità del software e la relativa semplicità con cui si può evolvere e sperimentare, avere un ciclo del feedback breve ed efficace si è rapidamente dimostrato lo strumento vincente per uscire da quell'impasse.

## Il TDD

Lo strumento principe dell'Extreme Programming è il TDD (Test Driven Development), una metodologia di sviluppo che incarna appieno il concetto di "ciclo del feedback". Può essere riassunta dal fatto che richiede la scrittura di un test prima ancora del codice, e dal ciclo "red-green-refactor":

- **red**: scrivo prima un test "rosso", che descrive prima caratteristica che io desidero dal mio programma, e ne dimostra l'assenza fallendo;
- **green**: scrivo il pezzo minimo di software per far sì che il test passi, diventando verde;
- **refactor**: continuo a rifattorizzare il mio codice, migliorandolo, ma mantenendolo corretto grazie ai test che continuano a rimanere verdi.

Questo rapido ciclo permette allo sviluppatore di scrivere del codice testato ma soprattutto corretto, che va a sempre a rispettare quanto desiderato, e che facilmente prende la forma necessaria a soddisfare i requisiti descritti nei test.

## Riferimenti

- https://it.wikipedia.org/wiki/Terza_rivoluzione_industriale
- ...
