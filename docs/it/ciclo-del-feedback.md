---
layout: default
title: Ciclo del Feedback
nav_order: 999
---

# Il Ciclo del Feedback

## La flessibilità del software

Intuitivamente parlando, sembra ovvio che noi sviluppatori, con una connessione internet e un portatile alla mano, possiamo essere enormemente più produttivi di decine di operai da catena di montaggio del secolo scorso. Ma perché è davvero così?

Sicuramente un fattore è la possibilità di lavorare con strumenti frutto di decenni di evoluzione tecnologica esponenziale, ma la vera ragione, il vero discriminante, sta nel prefisso "soft" nella parola "software": il prodotto del nostro lavoro è spesso intangibile e facilmente manipolabile, tanto che se commettiamo un errore, non dobbiamo prendere il semilavorato e buttarlo via, sprecando materie prime, ma nella peggiore delle ipotesi abbiamo solo sprecato un po' di tempo.

Tutto questo non è nient'altro che la "Terza rivoluzione industriale", come viene chiamata nei libri di scuola; dopo alcuni decenni in cui il collo di bottiglia è stata la potenza di calcolo, al giorno d'oggi abbiamo a disposizione CPU e memoria sufficienti per qualunque task mondano, ma questa pura forza bruta ha esposto una nuova tipologia di problemi, quelli organizzativi: far lavorare decine, se non centinaia di sviluppatori assieme sullo stesso progetto software è un problema non banale, e che tanti prima di noi si sono trovati a dover risolvere.

Uno strumento che è emerso vincitore da queste difficoltà è il **ciclo del feedback**; ma di che si tratta? È un approccio in cui, a seguito di un'azione, si va a misurarne rapidamente l'effetto (il "feedback"), così da ottenerne nuove informazioni, che saranno impiegate per intraprendere i prossimi passi in maniera più conscia e informata, creando così un ciclo continuo. Questo generalmente permette di procedere in un'attività a piccoli passi ma con una discreta rapidità e, cosa ancora più importante, solitamente nella giusta direzione, visto che eventuali errori di rotta possono essere rapidamente corretti ad ogni passo.

## Il manifesto Agile, l'Extreme Programming e il Devops

Negli ultimi decenni sono quindi nate diverse metodologie che incarnano appieno questo approccio, e nel tempo sono diventate capisaldi della nostra professione.

### Il Manifesto Agile

Il primo, temporalmente parlando, è stato il Manifesto Agile. Questo manifesto, stilato nel 2001 e firmato da poco meno di una ventina di professionisti e veterani del settore, fu un modo di rispondere agli attriti e alle difficoltà nella professione del programmatore che da decenni piagavano i progetti software.

Gestiti spesso in modalità "waterfall", i progetti partivano con una fase di design e pianificazione che doveva essere onnicomprensiva, seguita da una fase di sviluppo ed una di test, senza nessun tipo di iterazione; questo approccio portava ad una pianificazione meticolosa ed una stesura di requisiti dettagliattissima, quasi al limite della pedanteria, che però poi si schiantava con la dura realtà durante la fase di sviluppo (o peggio ancora dopo, durante i test) perché, nell'atto dello scrivere codice, quasi sempre emergevano dettagli imprevisti e casi limite che non erano stati contemplati.

Questo approccio è stato sconvolto e anzi capovolto dal Manifesto Agile, perché porta al centro "gli individui e le interazioni" al posto delle specifiche e delle pianificazioni, incentrando tutto il lavoro sull'ottenere "software funzionante" ad ogni step di sviluppo e non solo alla fine, di modo che sia sempre possibile collaborare assieme e "rispondere al cambiamento", che deve essere accolto sempre, in quanto inevitabile.

Il Manifesto può sembrare, nella sua prima pagina, un po' astratto, ma andando più a fondo, questo indica tanti modi in cui si può applicare uno strettissimo ciclo del feedback in tutte le fasi della realizzazione di un software: "i cambiamenti ai requisiti vanno accolti", invece che rifiutati perché arrivati tardi, e viene dato molto rilievo al "consegnare software funzionante frequentemente", in modo da dare e ricevere un riscontro rapido nei confronti dei committenti; inoltre, "il team deve riflettere ad intervalli regolari" su come il loro lavoro stia procedendo, permettendo al cambiamento di permeare anche le metodologie e le interazioni dei programmatori stessi.

## L'Extreme Programming e il TDD

L'Extreme Programming è una delle incarnazioni pratiche del Manifesto Agile. Questa metodologia è stata ideata da Kent Beck nella seconda metà degli anni '90, e anch'essa si concentra sul ciclo del feedback, in particolare nel rilascio frequente del software e in una serie di metodologie che permettono al team di sviluppo di iterare e migliorare costantemente il proprio lavoro.

Lo strumento principe dell'Extreme Programming è il TDD (Test Driven Development), una metodologia di sviluppo che incarna appieno il concetto di "ciclo del feedback". Può essere riassunta dal fatto che richiede la scrittura di un test prima ancora del codice, e dal ciclo "red-green-refactor":

- **red**: scrivo prima un test "rosso", che descrive prima caratteristica che io desidero dal mio programma, e ne dimostra l'assenza fallendo;
- **green**: scrivo il pezzo minimo di software per far sì che il test passi, diventando verde;
- **refactor**: continuo a rifattorizzare il mio codice, migliorandolo, ma mantenendolo corretto grazie ai test che continuano a rimanere verdi.

Questo rapido ciclo permette allo sviluppatore di scrivere del codice testato ma soprattutto corretto, che va a sempre a rispettare quanto desiderato, e che facilmente prende la forma necessaria a soddisfare i requisiti descritti nei test. È opinione di molti che il codice scritto in questa modalità sia spesso più ordinato e organizzato, perché la scrittura dei test forza l'architettura del software ad essere più chiara e disaccoppiata.

Una nota importante va fatta riguardo a questa metodologia: Pur permettendo di scrivere codice che necessariamente passerà tutti i test scritti in prima istanza, c'è da considerare che non sempre i test scritti rispecchiano le necessità reali, ed è giusto che chi sviluppi tenga in considerazione questa possibilità e non si affidi al TDD come "soluzione ad ogni male".

## Conclusione

Come abbiamo visto, alle fondamenta di tutti questi validi approcci si trova **il ciclo del feedback**: vista la malleabilità del software e la relativa semplicità con cui si può evolvere e sperimentare, avere un ciclo del feedback breve ed efficace si è rapidamente dimostrato lo strumento vincente per uscire da quell'impasse. Nessuno di queste metodologie è però un dettame rigido e scolpito nella pietra: si tratta più di pensieri ed esperienze collettive che emergono organicamente dalla comunità degli sviluppatori. Spesso tra di essi vi è commistione e manca un confine rigido: tanti team al giorno d'oggi infatti tendono a far tesoro di tutte queste metodologie e ad implementarle in maniera "personalizzata", andando a cucirsi su misura un approccio che incarna appieno il pensiero del Manifesto Agile: "Le architetture, i requisiti e la progettazione migliori emergono da team che si auto-organizzano.".

## Riferimenti

- https://it.wikipedia.org/wiki/Terza_rivoluzione_industriale
- https://agilemanifesto.org/
- https://en.wikipedia.org/wiki/Extreme_programming
