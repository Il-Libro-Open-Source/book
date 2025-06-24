---
layout: default
title: Le stime temporali di progetto
parent: Altro
nav_order: 1
---

<!-- prettier-ignore-start -->
# Le stime temporali di progetto
{: .no_toc }

- TOC
{:toc}

<!-- prettier-ignore-end -->

## Introduzione

Per gestire correttamente un progetto o un singolo task è fondamentale stimare in modo quantitativo le risorse necessarie a realizzare un prodotto che offra funzionalità di valore per chi lo commissiona (gli stakeholder). Quando parliamo di risorse, il pensiero va subito (spesso in modo implicito) al tempo, cioè quanto occorre per arrivare sul mercato o per ottenere una versione funzionante. Tuttavia, il tempo è solo uno degli elementi da considerare in una stima progettuale: di seguito vediamo alcuni esempi senza entrare troppo nel dettaglio.

- **Costo di funzionamento**: riguarda ciò che serve perché il prodotto possa "girare". Può essere suddiviso in hardware e software minimi o, se il progetto è cloud-native, nelle risorse allocate dal provider. Vanno inoltre stimati i costi di monitoraggio, manutenzione, aggiornamenti di sicurezza e supporto. Questi fattori, fondamentali in fase di business plan, incidono sul costo finale del servizio.

- **Capacity**: indica quanto lavoro è realizzabile in un determinato periodo. Serve a capire quante persone (e con quali competenze) sono necessarie per completare il progetto e in che tempi è possibile raggiungere il mercato. Questo aspetto impatta sulla fattibilità e sulla possibilità di occupare una posizione strategica.

- **Competenze**: sviluppare un e-commerce è ben diverso dal creare una piattaforma di streaming. Occorre valutare se il team disponga di tutte le conoscenze necessarie (ad esempio, l'uso di un database non relazionale per dati particolari). Se tali competenze mancano, si dovrà scegliere se formare internamente il personale o rivolgersi a consulenti esterni; entrambe le opzioni influiscono sui costi di realizzazione.

A complemento delle stime quantitative, esistono poi le stime qualitative, che considerano aspetti non funzionali come le prestazioni attese dal sistema, i requisiti di sicurezza, la compatibilità con altri sistemi o la scalabilità richiesta. Questi elementi completano il quadro di ciò che serve per portare a termine il progetto.

## Comprendere il processo

Quando si parla di stima temporale si intende riuscire a delineare un confine temporale per la realizzazione di un'opera di qualche genere; ci troviamo di fronte ad un tema controverso, e sicuramente chiedendo a dieci persone cosa rappresenta per loro una stima, probabilmente otterremo dieci risposte diverse con metodi o approcci anche molto distanti. Qui non vogliamo andare nel profondo di uno o più metodi, ma chiarire il tema per comprenderlo e dare degli strumenti e spunti di approfondimento.

Nell'ambito informatico, la stima può essere usata per dare una dimensione ad un task o ad un intero progetto, aiutando il business a delineare un'idea o a pianificare le attività ed è quindi piuttosto importante perché consente di prendere decisioni su come spendere le risorse. Dobbiamo ricordarci infatti che lo sviluppo è parte del business, e lo stiamo facendo anche noi quando programmiamo.

Un parametro importante nello sviluppo di un progetto è il cosiddetto Time To Market (tempo di arrivo su un certo mercato), può risultare determinante nella riuscita di un prodotto; rappresenta quando riuscirete ad essere pronti per i clienti e quindi quando arriverete rispetto alla concorrenza. Il business lo tiene molto in considerazione perché è un buon indicatore di quando i profitti potrebbero iniziare ad arrivare cominciando, quindi, a rientrare degli investimenti. Questo parametro diventa perno, insieme ad altri fattori, per delineare le strategie aziendali; delineare la pianificazione in base ad alla stima temporale non è l'unica maniera di gestire questo aspetto, ma è sicuramente spesso il preponderante.

Ma come mai la stima e la pianificazione, nel nostro campo, è così complessa? La risposta sta nel comprendere, prima di tutto, qual è lo scopo del processo di creazione del software stesso. Questo ci permette di definire meglio quelle variabili fino a quel momento incognite per cui le stime possono variare.

I processi si categorizzano infatti in base ad una serie di variabili, ossia delle incognite che si incontrano durante il percorso; più è difficile predire quello che succederà durante il lavoro e più si dice che la variabilità cresce; è un poco come percorrere una strada e non sapere quanto traffico troveremo, se faremo quella strada molto spesso avremo comunque un'idea di cosa possa succedere e di quanto ci metteremo ad arrivare.

Per capire meglio quanto delicata sia questa tematica bisogna ricordarsi che il software è di fatto equiparabile alla produzione di un bene, è un prodotto che deve soddisfare le esigenze di uno o più clienti, un mercato.
Il processo di creazione di un prodotto, dal punto di vista prettamente ingegneristico, è suddivisibile secondo questa categorizzazione: definito, statistico e empirico. Va applicato quello migliore per la situazione in cui siamo.

Il processo definito è quello più semplice, è qualcosa che abbiamo già fatto e di cui conosciamo bene le specifiche e il cui processo di esecuzione è ben definito; in questa situazione conosco sia tempi che modi e non mi aspetto alcuna variabilità che in parole povere significa solo che non ci sono sorprese durante il processo, avviene sempre alla stessa maniera.
Un esempio, nel nostro campo, potrebbe essere l'installazione di un sistema operativo, di un CMS; non ci aspettiamo grandi soprese da queste operazioni, al più possono chiederci qualche pacchetto accessorio ma nulla che possa impattare né sui tempi né sui risultati.

Il processo statistico, invece, ha una variabilità più alta cioè durante la sua esecuzione le cose possono andare diversamente da quanto previsto e questo impatta sui tempi e costi.
L'esempio classico è la produzione di un bene materiale dove per forza di cose, errori, difformità di materiali e altre variabili possono incidere sul risultato che produciamo; ci troviamo di fronte ad un processo che può essere dominato con la statistica, cioè so che avrò un certo scarto percentuale.
Questa casistica è piuttosto rara in campo informatico ma comunque presente, per fare un esempio potremmo pensare all'installazione di un plugin su un CMS e alla sua configurazione che può variare da cliente a cliente; possiamo immaginare che un plugin di personalizzazione grafica vari ad esempio la livrea colori e magari un logo.
In questo caso non è detto che ci metteremo lo stesso quantitativo di tempo per ogni cliente, ecco qui che quindi è meglio esprimere la stima in una forbice perché abbiamo un'esperienza che ci dice che possiamo metterci da un minimo ad un massimo.

Nei due precedenti processi, definito e statistico, ci accorgiamo presto che un elemento determinante è avere una specifica ben definita di cosa vogliamo ottenere, "cosa significa fatto?", "dove vogliamo arrivare?".
Il cliente ha un'esigenza e spesso non è in grado di esprimerla da subito in termini chiari e precisi, in un contesto come meccanica ed elettronica è più facile perché il cliente è in grado di descrivere le specifiche con caratteristiche fisiche misurabili; un cliente che chiede un sito internet invece difficilmente potrà fare altrettanto.
Ad esempio possiamo trovarci di fronte a percezioni di un prodotto terzo e molto qui può fare l'analisi perché ci può chiarire meglio la specifica, la definizione di cosa si vuole ottenere.

In questo contesto di incertezza nasce il processo empirico che ha preso piede negli ultimi venti anni, si tratta di abbracciare un po' questa incertezza e procedere in maniera iterativa.
Nei processi precedenti si nota che abbiamo un input, eseguiamo una lavorazione, emettiamo un output, a questo punto quello che abbiamo ottenuto è qualcosa che può andare bene o no; non abbiamo in mano specifiche molto precise (lo voglio lungo X e largo Y) e quindi il rischio di non soddisfare il cliente è alto.
Possiamo pensare di ragionare come nel caso di un pittore che deve creare un quadro che di per sé ha un soggetto e un tema ma non ha una definizione precisa del risultato finale.
Si procede prima con un disegno, che poi viene ripassato a tempera per poi venire ritoccato più volte per andare incontro alle esigenze del committente.
Il processo empirico è proprio questo, partire da una o più caratteristiche base, da uno scheletro, e aggiungere elementi interagendo così da ottenere qualcosa che si adatta man mano che viene creato.
Partire da elementi di base e poi costruire in maniera iterativa ci consente di scomporre tutto in elementi più piccoli e semplici, più prevedibili e quindi più gestibili; questa scomposizione ci consente di riportarci ai due processi precedenti che possono essere predetti meglio e, obiettivo importante, automatizzati magari per un riuso in altri ambiti.

## Scomposizione

La prima tattica è quella di dividere il problema in problemi più semplici: un task o un progetto diventano via via più raffinati e più piccoli e al tempo stesso più semplici da stimare ma anche più facili da confinare come problematica. Come in precedenza, si cerca di trovare un pattern conosciuto e partire con quello. Questo vuol dire gestire un lavoro più piccolo, il che ci consente di comprenderlo meglio, visto che il cervello umano non è in grado di tenere sotto controllo una moltitudine di elementi, ma ci consente di avere una visione prima di insieme e poi del dettaglio, così da rendere le cose più facili da dominare. La riduzione rende anche chiare altre due cose, ovvero le criticità: parliamo di quelle parti meno esplorate e in cui possono nascondersi delle difficoltà, ma soprattuttto sono quelle che hanno una maggiore incertezza nella stima. Mette in luce anche le dipendenze, cioè quali siano le fondamentali e quali siano le parti accessorie, cominciando anche a delineare una sequenza.

Per fare un esempio, partendo dal classico to do list, potremmo mettere in risalto l'autenticazione, le operazioni di base di visione/creazione/modifica/cancellazione di un elemento, a questo aggiungiamo che il nostro committente voglia anche la condivisione dell'elemento e magari il memo sul calendario. Ora possiamo individuare l'autenticazione e le operazioni di base come ben definite, ma condivisione e integrazione col calendario? Cominciamo a porci delle domande per esempio "condividere con chi" o "quale calendario usare" (Google?). Vediamo quindi emergere dei macro blocchi e degli elementi da chiarire per i quali individuare anche degli esperti sia tecnologici che non che possono aiutarci a farci un'idea di cosa vogliamo ottenere; in tutto questo, quando troviamo uno scoglio nella scomposizione, possiamo in prima battuta impegnare uno slot di tempo per lo studio ben definito, il classico "time boxed" oltre il quale non andare e dopo il quale va cercato aiuto.

## Isolare le criticità

Nella suddivisione si possono scorgere, come si è visto, criticità; sono le parti più complesse da stimare, quelle che ci pongono di fronte a situazioni nuove dove un pattern già conosciuto non è visibile o proprio è assente. Si possono adottare due strategie concatenate:

- Assegnare ad una stima, del tempo di stima: sembra un gioco di parole ma non lo è. Se un tema è complesso e non scomponibile e ha bisogno di essere studiato è necessario prendersi il tempo per farlo; assegnare a questo task una stima per consentirci di avere le idee più chiare ci da la maniera di introdurre il concetto successivo.

- PoC: Proof of Concept, di fatto è un micro task orientato alla creazione di uno o più proprietà del progetto finale che sono critiche e che, una volta sbrogliate, rendono tutto il processo di creazione più chiaro. Può anche essere utile mostrarlo, a volte può bastare provare se l'idea funziona a livello tecnico, ma a volte è possibile anche mostrarlo a chi poi prenderà decisioni perché dà immediatamente un'idea di dove si vuole arrivare, che prestazioni o di che interattività si parla.

### Unità di misura

L'espressione della stima è intuitivamente temporale in ore o giorni uomo, ma non è l'unica possibilità. In alcuni framework agili questa viene sostituita con delle unità adimensionali o addirittura con qualcosa di non numerico: l'esempio classico sono le taglie delle magliette. Questo approccio è tipico di quei team che lavorano per sessioni (chiamati a volte sprint) che durano da una settimana in su dove il gruppo sa che entreranno un certo numero di task con una determinata taglia, rimanere vaghi è un metodo per evitare di raggiungere due obiettivi:

- Evitare che si faccia della matematica non opportuna sulle stime: la sequenza di come si svolge il lavoro è importante e sommarle ciecamente può comportare problemi nello svolgimento poi; capita spesso, infatti, che chi sovraintende il lavoro abbia bisogno di avere una scaletta (ancora meglio una data) e la cosa più immediata è sommare i tempi di stima. Purtroppo però questa scelta potrebbe non essere la soluzione migliore perché ci sono dipendenze tra i lavori o ci sono aree ancora troppo poco chiare per avere una stima affidabile.

- Semplificare il lavoro di stima, evitando di dare un numero in ore: così si sa che ce la si farà in una sessione, ma si evita di approfondire quanto, anche per non creare fraintendimenti.
  Se la stima invece è scritta sotto forma di tempo possiamo usare lo stratagemma di creare una forbice con un tempo minimo e massimo per lo svolgimento del lavoro, questo per conteggiare il rischio soprattutto di quelle parti che risultano nuove che potrebbero portare con sé delle criticità. Un altro modo è spesso quello di indicare una stima e poi aggiungere un margine, questo è forse il metodo più incerto perché il margine è spesso arbitrario; generalmente si usa Pareto aggiungendo il venti per cento a quanto ottenuto.

## L'impatto delle specifiche sulla stima

Partendo sempre dal metodo empirico ci accorgiamo prima di tutto che l'incertezza comporta una cosa tanto banale quanto vera: sappiamo quanto ci abbiamo messo quando lo abbiamo fatto. Questo perché è solamente alla fine che è chiaro quello che si voleva produrre, in una parola: serviva sapere quale era la definizione di fatto.
Per saperlo è necessario avere delle specifiche ed è facile intuire che più sono precise più è semplice pianificare. Anche chi lavora da poco nel settore sa che sono complicate da ottenere e a volte fumose. Il primo consiglio qui è quello di studiare il dominio applicativo perché avere una nomenclatura delle cose dà uno slancio non irrisorio. Poi è necessario parlare con chi ha questa conoscenza, andare a cercare alla fonte e chiedere più chiarimenti possibili; anche in questo caso la scomposizione e l'iterazione sono utili. Ci sono delle cerimonie specifiche in alcuni framework e metodologie che possono venirci incontro, ad esempio l'[event storming](https://en.wikipedia.org/wiki/Event_storming) il cui scopo è proprio quello di chiarire i flussi e nomi del dominio il più possibile; questo è un vero e proprio workshop che ha lo scopo di far incontrare chi sviluppa con chi ha bene chiaro il dominio dove l'applicazione che vogliamo sviluppare va ad operare, se per esempio stiamo creando una web app per degli ordini di una pizzeria, parlare col personale e raccogliere informazioni e far si che il software segua i processi è molto utile perché di fa capire quali problemi stiamo risolvendo in maniera diretta, la contaminazione è fondamentale per un prodotto di qualità e per ridurre al minimo i fraintendimenti.

## Condivisione

La ricerca di pattern, come già citato, può essere molto utile poiché ci consente di riconoscere requisiti o funzionalità già visti o fatti; abbiamo poi accennato al concetto di Proof of Concept, che aiuta laddove ci si trovi davanti ad un problema nuovo.

Il problema di entrambi gli approcci è che si basano sulla nostra conoscenza e capacità di osservazione e studio.

La condivisione e la contaminazione con il business e con figure con esperienze diverse dalla nostra possono risultare una chiave fondamentale per risolvere i problemi apparentemente più complessi.
Ma come possiamo ottenere contaminazione e condivisione in maniera efficace?

Si possono organizzare dei meeting di condivisione e di stima dei problemi; il problema visto da angolazioni differenti può svelare caratteristiche di cui non avevamo tenuto conto, e anche un singolo confronto può risultare fondamentale nel risolvere una problematica che sembrava insormontabile.

In alcuni framework agili ci sono proprio dei momenti per questo tipo di approccio, per citarne uno: "planning poker"; questa è quella che si chiama "gamification", cioè trasformare l'attività in qualcosa di simile ad un gioco per renderla più leggera. Questa attività si svolge in maniera simile ad una mano di poker dove ogni partecipante ha un mazzo di carte dove al posto dei semi ci sono dei numeri. Si inizia spiegando per bene il problema da risolvere e che si vuole stimare, si inizia poi un giro in cui ogni persona sceglie una carta col numero che rappresenta la sua stima (es. 8 ore) e la appoggia sul tavolo, a questo punto bisogna giustificare la propria scelta; si procede in questo senso fino a che non c'è una convergenza su una stima comune o una forbice. La base di questo procedimento è dire quanto ci si metterebbe ma soprattutto perché, questo accresce nel gruppo la consapevolezza degli ostacoli da superare dal punto di vista di ogni componente del gruppo; consapevolezze che, magari, singolarmente poterebbero non essere così evidenti o richiedere più iterazioni di studio. Le carte sono facilmente reperibili, sono spesso numerate con unità temporali base come l'ora, la giornata o la settimana (e così via) oppure si usano sequenze come quella di Fibonacci, quest'ultima è spesso utilizzata come referimento perché approssima meglio la realtà anche come si presentano in natura come in botanica o musica.

#### MVP

Il concetto di riduzione e scomposizione porta con sé un approccio naturale, cioè definire quali siano le parti fondamentali dell'applicativo. Si può introdurre un concetto semplice ma piuttosto efficiente ed efficace: dare una risposta alla domanda "quali sono le funzionalità minime per poter andare sul mercato?"; questo accorcia di molto il tempo di arrivo sul mercato perché elimina le funzioni non necessarie, semplifica la visione e lo sviluppo. Questo concetto è alla base del pensiero agile e va sotto il nome di Minimum Viable Product (MVP), abbassa il rischio rendendo più corto lo sviluppo, chiarisce meglio i goal del progetto e aiuta ancora una volta a scomporre le cose in elementi più piccoli o, se vogliamo, minimi perché il progetto abbia quel valore sul mercato che il business si aspetta.
