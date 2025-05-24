---
layout: default
title: Documentazione
parent: Cultura
nav_order: 3
---

<!-- prettier-ignore-start -->
# Documentazione
{: .no_toc }

- TOC
{:toc}

<!-- prettier-ignore-end -->

## Che cosa è la documentazione tecnica

La documentazione tecnica per il software è un elemento fondamentale nell'ambito dello sviluppo e della manutenzione dei sistemi informatici. Essenzialmente, essa consiste in una raccolta di informazioni dettagliate riguardanti il software stesso.

Considerando il punto di vista di chi sviluppa, in generale, la documentazione tecnica serve per descrivere i seguenti aspetti del software:

- **L'architettura**. In questo caso, la documentazione delinea la struttura interna del sistema, i componenti principali e le relazioni tra di essi. Questo fornisce una panoramica chiara delle funzionalità offerte e delle interazioni previste tra i diversi moduli del software.
- **Le specifiche di progettazione**. Questa parte della documentazione comprende informazioni sulle funzionalità del software, i requisiti di sistema, le prestazioni attese e le limitazioni conosciute. Questo aiuta i team di sviluppo a comprendere appieno il comportamento atteso dal software e a progettare soluzioni appropriate per le esigenze specifiche.
- **Guide per chi sviluppa**. Questa parte della documentazione fornisce istruzioni dettagliate su come configurare l'ambiente di sviluppo, come compilare il codice sorgente, come eseguire i test, e come contribuire al progetto in base agli standard prefissati. Questa guida è essenziale per consentire a nuovi membri di integrarsi rapidamente nel team e contribuire in modo efficace al software.

## Necessità ed importanza della documentazione tecnica

La documentazione del software è spesso vista come un'attività secondaria, e viene trascurata in favore dello sviluppo del codice. Tuttavia, sottovalutarne l'importanza può avere conseguenze significative sul ciclo di vita del software e sulla sua gestione dello stesso a lungo termine.

La documentazione non è semplicemente un compito aggiuntivo per chi programma, da incastrare tra le riunioni (tante) e lo sviluppo (spesso, poco). Piuttosto, è un elemento cruciale per garantire la comprensione, la manutenibilità e l'evoluzione del software stesso.

In primo luogo, la documentazione svolge un ruolo fondamentale nella comprensione del software. Il codice può essere complesso e intricato - e tutt'altro che "self-documenting"! . La documentazione, invece, fornisce un'annotazione chiara e comprensibile di ciò che fa il software, di come è strutturato e come interagisce con altri componenti del sistema. Questo è particolarmente cruciale per consentire ai nuovi membri del team di integrarsi rapidamente in un progetto avviato, ed ai membri esistenti di lavorare in modo efficiente ed efficace.

In secondo luogo, la documentazione facilita la manutenzione del software nel tempo. Con una documentazione accurata, infatti, i problemi possono essere individuati e risolti più rapidamente, poiché si ha a disposizione una guida chiara su come il software sia stato progettato e implementato. Senza una documentazione adeguata, la manutenzione del software diventa un compito arduo e laborioso, aumentando il rischio di errori e ritardi nel rilascio delle correzioni.

Inoltre, la documentazione svolge un ruolo essenziale nella collaborazione tra team. Quando più persone lavorano su un progetto software, infatti, la documentazione diventa il mezzo principale attraverso il quale le informazioni vengono condivise e comunicate. Una documentazione ben curata riduce al minimo la dipendenza da specifici membri del team e favorisce una cultura di collaborazione e condivisione delle conoscenze. Questo diventa particolarmente importante nelle aziende che lavorano in full-remote e magari con membri del team sparsi in diverse parti del mondo, nelle quali non è possibile andare a cercare un collega in ufficio per un chiarimento.

Non meno importante, la documentazione del software è cruciale per la conformità normativa e la sicurezza. In settori come la sanità, la finanza e la sicurezza informatica, è fondamentale tenere traccia di come il software sia stato sviluppato, testato e implementato. In questi casi, inoltre, la documentazione fornisce una traccia chiara delle decisioni prese durante il processo di sviluppo e aiuta a dimostrare la conformità alle normative e agli standard di settore in caso di controlli.

Infine, la documentazione è essenziale per garantire la continuità del business. Nel caso in cui i membri del team lascino l'organizzazione o cambino ruolo, una documentazione completa e aggiornata consente una transizione fluida e minimizza l'impatto sul progetto. Senza una documentazione adeguata, l'organizzazione rischia di perdere conoscenze critiche e di subire interruzioni nei progetti software in corso. Allo stesso modo, la documentazione è fondamentale qualora un progetto venga dato in outsourcing ad una azienda terza. Fare reverse engineering del codice è spesso una necessità, ma avere documentato il progetto permette all'azienda terzista ed ai suoi team di sviluppo di risparmiare tempo e di avere delle linee guida chiare da seguire, potendo capire il ciclo di vita del prodotto per come è stato pensato fino a quel momento.

## Accorgimenti per scrivere una buona documentazione tecnica

Scrivere una documentazione efficace non è solo una pratica buona, ma è essenziale per garantire che il software possa essere compreso, utilizzato e mantenuto nel corso del tempo. Ecco alcuni accorgimenti da tenere a mente quando si scrive la documentazione per il software:

- **Conoscere il pubblico**. Prima di iniziare a scrivere, è fondamentale comprendere chi sarà il pubblico che leggerà ed utilizzerà la documentazione. Per esempio: ci stiamo rivolgendo ad un pubblico composto esclusivamente da figure senior o è necessario considerare anche un pubblico di junior? Ci rivolgiamo ad una platea nazionale o internazionale? Gli utenti finali avranno sicuramente esigenze diverse in base alla loro seniority, ma anche alla lingua usata per scrivere la documentazione. Per cui, adattare lo stile, il livello di dettaglio, ed il linguaggio utilizzato in base al pubblico aiuterà a garantire che la documentazione sia utile ed efficace ad uno specifico pubblico.
- **Esprimersi con chiarezza e concisione**. È importante evitare l'uso di gergo tecnico e complesso quando non necessario (oppure spiegarlo chiaramente tramite un glossario), per far sì che il proprio pubblico comprenda chiaramente la documentazione. Allo stesso modo, è importante mantenere le descrizioni concise, evitando ripetizioni e informazioni superflue: la chiarezza è fondamentale e spiegare i concetti in modo semplice e diretto, evitando ambiguità e confusione, è l'obiettivo da tenere sempre a mente.
- **Fornire esempi pratici**. Niente aiuta a comprendere un concetto più degli esempi pratici, specialmente in un ambiente legato allo sviluppo. Includere esempi di codice, casi d'uso, e scenari comuni per illustrare i concetti in modo chiaro e tangibile è fondamentale.
- **Mantenere la documentazione aggiornata**. Il software è in costante evoluzione, quindi è essenziale mantenere la documentazione aggiornata alle ultime versioni e modifiche. Ogni volta che viene apportata una modifica significativa al software, è importante assicurarsi di aggiornare la documentazione.
- **Organizzare la documentazione in modo logico**. Non c'è niente di più inutile di una buona documentazione organizzata male. La struttura della documentazione, infatti, deve essere logica e intuitiva, facilitando la ricerca delle informazioni desiderate. Per far ciò, è importante utilizzare una gerarchia chiara, suddividendo la documentazione in sezioni e sottosezioni facilmente navigabili.

## Linguaggi per sviluppare la documentazione tecnica

Esistono diversi tool commerciali e linguaggi per stendere documentazione tecnica. In questa sezione, non tratteremo i diversi tool commerciali in quanto il loro utilizzo è legato a scelte aziendali. Ad ogni modo, si tratta spesso di strumenti che non richiedono particolari conoscenze e competenze, per cui sono facili da imparare per un pubblico che abbia delle conoscenze informatiche di base.

È importante, invece, conoscere i _linguaggi_ utilizzati per stendere tale documentazione. Nello specifico, il Markdown ed il reStructuredText (reST) sono due linguaggi di markup ampiamente utilizzati per la formattazione di documenti testuali, ma con scopi e funzionalità leggermente diversi.

Il Markdown è un linguaggio di markup leggero, progettato per essere facile da leggere e scrivere, anche quando non è formattato. È ampiamente utilizzato per scrivere documentazione, note, pagine web e altro ancora. La sua sintassi è intuitiva e semplice, ed è supportato da molti editor di testo e piattaforme di hosting come GitHub, che lo rende una scelta popolare tra developer e figure professionali del settore tecnologico. È sicuramente la scelta preferenziale quando si ha necessità di iniziare a documentare un progetto legato al software.

Vale la pena menzionare anche il reStructuredText (reST) che è un linguaggio di markup più strutturato e flessibile, particolarmente popolare nell'ecosistema Python. Questo linguaggio è stato progettato per creare documentazione tecnica e di progetto in modo chiaro e coerente. È utilizzato principalmente per scrivere documentazione di progetti Python, grazie al suo stretto legame con il tool di generazione della documentazione [Sphinx](https://www.sphinx-doc.org/en/master/), il quale consente di compilare la documentazione scritta in reST in vari formati, inclusi HTML, PDF e ePub, facilitando la distribuzione e la consultazione della documentazione di progetto. Il reST richiede una curva di apprendimento leggermente più ripida rispetto al Markdown, ma offre una maggiore flessibilità e potenza per la creazione di documentazione più strutturata e complessa. È naturalmente anch'esso integrabile con i più noti IDE, ed è supportato dalle più note piattaforme di hosting, come GitHub.

## La gestione delle specifiche tecniche

La gestione delle specifiche tecniche è un aspetto fondamentale per il ciclo di vita di un software in quanto influisce direttamente nella buona riuscita di un progetto. Le specifiche tecniche rappresentano, infatti, il ponte tra i requisiti funzionali forniti dagli stakeholder, e l'implementazione effettiva del codice da parte degli sviluppatori e del tel team tecnico. Un'efficace gestione delle specifiche tecniche non solo facilita una chiara comprensione delle esigenze del progetto, ma contribuisce anche a ridurre i rischi di deviazioni e malintesi durante il ciclo di vita del progetto.

Per garantire coerenza e chiarezza, è essenziale adottare uno standard per la documentazione delle specifiche tecniche. Questo standard dovrebbe comprendere i seguenti punti:

- **Struttura della specifica**: è importante utilizzare una struttura predefinita che copra tutti gli aspetti rilevanti, come obiettivi, requisiti, descrizione tecnica, vincoli, e criteri di accettazione al fine di non tralasciare nulla di importante.

- **Linguaggio e terminologia**: per rendere chiare le specifiche, è fondamentale adottare un linguaggio chiaro e una terminologia uniforme per evitare ambiguità. Per non dare nulla per scontato circa il significato di alcuni termini, si può utilizzare il glossario: in questo modo, in poche righe, si specificano i significati per quei termini tecnici specifici che potrebbero risultare ambigui, o comunque non del tutto chiari iniversalmente.

- **Tracciabilità**: Ogni specifica tecnica dovrebbe essere tracciabile rispetto ai requisiti funzionali corrispondenti. Questo facilita la verifica e la validazione.

- **Revisioni e approvazioni**: Va implementato un processo di revisione e approvazione che coinvolga tutte le parti interessate. Questo garantisce che le specifiche tecniche siano complete e corrette prima dell'inizio dello sviluppo.

Di seguito si riporta un esempio di tabella per la documentazione delle specifiche tecniche:

| Sezione                 | Descrizione                                                                                            |
| ----------------------- | ------------------------------------------------------------------------------------------------------ |
| Obiettivo               | Descrizione dell'obiettivo principale della specifica.                                                 |
| Requisiti Funzionali    | Elenco dei requisiti funzionali che la specifica tecnica deve soddisfare.                              |
| Descrizione Tecnica     | Dettagli tecnici su come i requisiti saranno implementati, inclusi diagrammi di flusso e pseudocodice. |
| Vincoli                 | Limitazioni e restrizioni che devono essere considerate durante lo sviluppo.                           |
| Criteri di Accettazione | Condizioni che devono essere soddisfatte per considerare completata la specifica tecnica.              |
| Tracciabilità           | Collegamento ai requisiti funzionali e ad altri documenti rilevanti.                                   |

Vediamo un esempio di utilizzo su un caso semplice:

| Sezione                 | Descrizione                                                                                                                                                                                                                                                                                                                                                                                                           |
| ----------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Obiettivo               | Implementare un sistema di autenticazione a due fattori (2FA) per migliorare la sicurezza dell'accesso utente.                                                                                                                                                                                                                                                                                                        |
| Requisiti Funzionali    | <ol><li>Il sistema deve inviare un codice di verifica al numero di telefono dell'utente.</li><li>L'utente deve inserire il codice di verifica per completare l'accesso.</li></ol>                                                                                                                                                                                                                                     |
| Descrizione Tecnica     | <ul><li><strong>Modulo di Invio SMS</strong>: Utilizzeremo un servizio di terze parti (es. Twilio) per l'invio del codice di verifica.</li><li><strong>Verifica del Codice</strong>: Implementeremo un endpoint API per verificare il codice inserito dall'utente.</li><li><strong>Interfaccia Utente</strong>: Aggiungeremo un campo input per l'inserimento del codice di verifica nella pagina di login.</li></ul> |
| Vincoli                 | <ul><li>Il codice di verifica deve essere valido per 5 minuti.</li><li>Devono essere previsti limiti di tentativi per evitare attacchi di brute force.</li></ul>                                                                                                                                                                                                                                                      |
| Criteri di Accettazione | <ul><li>Il codice di verifica viene inviato correttamente al numero di telefono dell'utente.</li><li>L'utente può completare l'accesso inserendo il codice di verifica entro il tempo limite.</li></ul>                                                                                                                                                                                                               |
| Tracciabilità           | <ul><li>Req 1: Funzione di invio SMS</li><li>Req 2: Endpoint API per la verifica del codice</li></ul>                                                                                                                                                                                                                                                                                                                 |

## La gestione delle specifiche di testing

Nella gestione dei progetti software, le specifiche di testing rivestono un ruolo fondamentale per garantire la qualità del codice e la soddisfazione dei requisiti funzionali e non funzionali. In quest'ottica, la definizione e la gestione delle specifiche di testing devono essere sistematiche e ben documentate, al fine di permettere un approccio standardizzato e ripetibile per tutto il progetto.

Per ottenere una gestione efficace, è fondamentale adottare una metodologia standardizzata al fine di favorire i collaboratori che si interfacciano ai test la dovrebbe includere le seguenti componenti:

**Definizione dei requisiti di testing**: ogni specifica di testing deve essere strettamente legata ai requisiti del progetto. Questo processo inizia con la creazione di una matrice di tracciabilità dei requisiti (RTM), che collega ogni requisito funzionale e non funzionale ai relativi casi di test.

Per esempio:

| Requisito | Descrizione                   | Caso di Test        |
| --------- | ----------------------------- | ------------------- |
| RF-01     | Login utente                  | TC-01, TC-02        |
| RF-02     | Registrazione utente          | TC-03, TC-04, TC-05 |
| RNF-01    | Tempo di risposta < 2 secondi | TC-06               |

**Creazione di test cases**: i test cases devono essere creati seguendo uno schema standard che includa informazioni come ID del test, descrizione, prerequisiti, passi da eseguire, risultati attesi e reali, e stato del test. Questo aiuta a garantire che i test siano chiari e ripetibili.

Per esempio, si può costruire uno standard così:

| ID Test | Descrizione             | Prerequisiti          | Passi                                                          | Risultati Attesi                    | Risultati Reali | Stato     |
| ------- | ----------------------- | --------------------- | -------------------------------------------------------------- | ----------------------------------- | --------------- | --------- |
| TC-01   | Verifica login valido   | Utente registrato     | 1. Inserire credenziali valide <br> 2. Cliccare su "Login"     | Accesso al sistema con successo     |                 | Pass/Fail |
| TC-02   | Verifica login invalido | Utente non registrato | 1. Inserire credenziali non valide <br> 2. Cliccare su "Login" | Visualizzazione messaggio di errore |                 | Pass/Fail |

**Automazione dei test**: laddove possibile, l'automazione dei test dovrebbe essere implementata per aumentare l'efficienza e ridurre l'errore umano. Questo include la selezione degli strumenti appropriati per l'automazione (es. Selenium) e la scrittura di script di test che siano modulari e riutilizzabili.

**Esecuzione e monitoraggio dei test**: la gestione delle esecuzioni dei test deve essere documentata in modo sistematico. Utilizzando strumenti di gestione come JIRA, infatti, è possibile tracciare l'avanzamento dei test, registrare i difetti trovati, e monitorare la risoluzione degli stessi.

## La standardizzazione

Scrivere la documentazione tecnica è considerata un'attività un po' noiosa, ma rimane comunque fondamentale.

Per velocizzarne la realizzazione, una possibilità è quella di prepararsi dei template standard, in base alle proprie necessiatà.

Per esempio, se consideriamo la possibilità di scrivere documentazione su un file markdown, un esempio di template standard per un tutorial potrebbe essere il seguente:

```markdown
---
converter: markdown
metadata:
    title: "..."
    description: "..."
---
Questa guida ti aiuterà a [descrivi a cosa saprà fare l'utente alla fine].

[Descrivi gli obiettivi, le infomazioni di base, e qualsiasi altra cosa necessaria a capire lo scopo e la terminologia del tutorial]

## Requirements
[Lista dei requirements con eventuali link (interni o esterni) e con le spiegazioni necessarie].

- [Requirement 1: spiegazione se necessaria]
- [Requirement n: spiegazione se necessaria]

## Steps
[Lista degli steps per completare il tutorial].

- [Step 1: spiegazione se necessaria]
- [Step n: spiegazione se necessaria]

## Troubleshooting
[Lista delle informazioni necessarie a risolvere problemi tipici che eventualmente potrebbero presentarsi]

## Risorse aggiuntive
[Lista di risorse aggiuntive per comprendere in modo più ampio ciò che sta attorno al tema trattato nel tutorial]
```

Un altro esempio di template potrebbe essere quello dei changelogs. Sempre in markdown, se ne potrebbe creare uno così:

```markdown
converter: markdown
metadata:
    title: "..."
    description: [gg-mm-aaaa]
---

[gg-mm-aaaaa, nuovo rilascio]:
## Nuove features
- [**Nuova feature 1: descrizione della nuova feature. Link alla documentazione, se necessario]
- [**Nuova feature n: descrizione della nuova feature. Link alla documentazione, se necessario]

## Miglioramenti
- [**Miglioramento 1: descrizione del miglioramento]
- [**Miglioramento n: descrizione del miglioramento]

## Bug risolti
- [**Fix 1: descrizione del bug risolto]
- [**Fix n: descrizione del bug risolto]
```

Questi, naturalmente, sono solo alcuni possibili esempi di standardizzazione della documentazione che si possano creare. Soprattutto, dipende anche dalla specifica tecnologia utilizzata in azienda.

Per esempio, se usi Confluence, un'idea potrebbe essere quella di crearti uno spazio in cui scrivi i template prer la tua documentazione.

> **NOTA**: Gli esempi riportati, tradotti in italiano e modificati per una audience adatta agli dviluppatori, sono stati ripresi dal libro [Crafting Docs for Success: An End-to-End Approach to Developer Documentation](https://link.springer.com/book/10.1007/978-1-4842-9594-6)

## La collaborazione coi technical writers

Nonostante la figura del technical writer non sia particolarmente presente nel mondo informatico italiano, chi sviluppa oggi ha la possibilità di poter collaborare con aziende internazionali dove questa figura, invece, risulta più presente. Per questo, riteniamo opportuno spendere alcune righe per definire, a livello generale, come chi faccia il technical writer - specialisti della documentazione - dovrebbe collaborare con un ambiente di developer.

Nel panorama dello sviluppo software moderno, infatti, la collaborazione tra sviluppatori e technical writers è fondamentale per garantire una documentazione tecnica di alta qualità.

Sebbene oggi gran parte del lavoro di documentazione sia delegato ai technical writers, i developers devono comunque produrre una parte di documentazione. Questo non significa che il contributo degli sviluppatori alla documentazione sia meno rilevante. I developers, infatti, possiedono una comprensione profonda delle complessità del codice e delle funzionalità del software, che sono fondamentali per la creazione di una documentazione utile e accurata. Tuttavia, per ottenere un ambiente documentale completo e coerente, è necessario un coinvolgimento diretto dei technical writers fin dalle fasi iniziali del progetto. Questi professionisti, infatti, devono essere interpellati non solo per raccogliere le informazioni, ma anche per contribuire alla definizione di standard e linee guida che assicurino uniformità e chiarezza fin dalle prime fasi dello sviluppo di un progetto.

La loro partecipazione attiva consente di stabilire e mantenere un framework documentale che faciliti la comunicazione e l'interoperabilità tra i vari team. In questo contesto, quindi, i developers e i technical writers devono lavorare in sinergia, condividendo le loro competenze per ottimizzare la documentazione e supportare il successo complessivo del progetto.

Un caso tipico di collaborazione tra developers e technical writers può essere quello in cui il technical writer crea e sviluppa una base documentale per un progetto e raccoglie le specifiche tecniche che gli sviluppatori hanno realizzato e le inserisce in un "panorama documentale" più ampio, nel quale chiunque può trovare e leggere tutto il necessario relativo ad un progetto software. Dalle specifiche tecniche, all'architettura, ad eventuali casi d'uso del codice (per esempio, se si tratta di una API), eccetera...
