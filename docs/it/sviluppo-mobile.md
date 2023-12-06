# Sviluppo Mobile

## Che cos'è lo sviluppo mobile?

Per "sviluppo mobile" si intende un insieme di processi e attività che coinvolgono l'analisi, la progettazione, la realizzazione e il rilascio di una o più applicazioni la cui esecuzione avverrà su dispositivi tascabili come smartphone e tablet.

## Le fasi dello sviluppo mobile

Le fasi di analisi e di progettazione nello sviluppo mobile condividono molte caratteristiche con lo sviluppo del software classico. Sebbene sia un settore di nicchia, in questo particolare momento dello sviluppo è necessario tenere in considerazione alcuni aspetti di fondamentale importanza. Ad esempio l'usabilità differente dettata dalle dimensioni compatte di uno smartphone, o dalla potenziale assenza di connettività, passando dall'architettura e dalle prestazioni del dispositivo o dalla durata della batteria.

La fase di realizzazione, come per qualsiasi tipologia di software, consiste nel tradurre il prodotto delle analisi e della progettazione in istruzioni da fornire al nostro dispositivo. Con il passare degli anni si sono consolidate due tipologie di approcci allo sviluppo: lo sviluppo nativo e lo sviluppo ibrido. Lo sviluppo nativo si è evoluto tecnologicamente nel tempo ma ha mantenuto concettualmente lo stesso significato, discorso diverso per l'approccio ibrido: nato con una particolare filosofia che ha cambiato significato grazie alla diffusione dei moderni framework di sviluppo cross-platform come React Native e Flutter.

Il rilascio di un'applicazione è probabilmente l'unica fase che differisce rispetto al classico processo che avviene per altre tipologie di software. In questa fase il mobile developer deve costruire degli artefatti che nella maggior parte dei casi possono essere distribuiti ai propri utenti passando attraverso delle piattaforme che prendono il nome di Store. E' possibile distribuire queste applicazioni senza passare dagli store attraverso il sideloading, ma questo penalizzerà la diffusione del prodotto e renderà il processo di installazione e di aggiornamento più complesso del normale. Allo stato dell'arte attuale, per ragioni di sicurezza, in alcune piattaforme Apple è persino vietato il sideloading di applicazioni non distribuite attraverso lo store principale, sebbene la comunità europea stia cercando in qualche modo di forzare la mano per sfavorire il monopolio di Apple.

## Cenni Storici

La nascita dello sviluppo mobile e della professione del mobile developer va fatta coincidere con la diffusione di dispositivi tascabili come smartphone e tablet, in origine definiti palmare.

Secondo [Wikipedia](https://it.wikipedia.org/wiki/Computer_palmare), "Un computer palmare (detto anche palmare), spesso indicato in lingua inglese con la sigla PDA (Personal Digital Assistant), o con l'ormai desueto termine palmtop, è un computer di dimensioni contenute, tali da essere portato sul palmo di una mano (da cui il nome), dotato anche di un touch screen."

Questi computer sono nati principalmente con l'obiettivo di avere con sé agende, calendari, rubriche e calcolatrici dalle dimensioni contenute che potessero essere facilmente riposte in tasca o in un piccolo contenitore più facilmente trasportabile rispetto ad un laptop.

Le aziende pioniere di questo settore sono state Palm, Texas Instruments e Microsoft: sebbene i primi palmare altro non erano che calcolatrici arricchite di funzionalità come rubrica e calendario, con il passare degli anni questi strumenti hanno iniziato ad evolvere e, di pari passo con il diffondersi a macchia d'olio di Internet e della microminiaturizzazione, a convergere verso un unico dispositivo ad oggi noto come smartphone.

I primi palmare ad essere di fatto degli smartphone sono stati i Pocket PC di Microsoft. L'azienda di Redmond realizzò una piattaforma denominata Windows CE (Windows Embedded Compact) installabile su tutta una serie di dispositivi tascabili. Su questa piattaforma Microsoft ha continuato a realizzare versioni parallele dei suoi principali sistemi operativi Microsoft Windows compatibili con processori ARM, MIPS o SH3.

L'abbandono del concetto di palmare e la convergenza verso gli smartphone si è avuta con la diffusione delle connessioni a Internet sui telefoni cellulari e con l'introduzione di sempre più strumenti accessori come il GPS, la radio FM, la fotocamera, e tutta la sensoristica di base di cui sono dotati gli ormai moderni smartphone.

A dominare la prima generazione di smartphone è stata Nokia con SymbianOS. La multinazionale finlandese ha letteralmente conquistato le tasche della popolazione mondiale grazie al suo sistema operativo in grado di far girare le prime applicazioni realizzate in JavaME (Java MicroEdition). Sebbene inizialmente lo sviluppo di applicazioni per palmare e smartphone era un'attività riservata a chi era stato fisicamente assunto presso l'azienda madre, con la diffusione di Java, chiunque poteva studiare l'SDK della Sun per realizzare le proprie applicazioni.

La generazione successiva di smartphone ha visto contendersi il mercato da aziende come Apple con l'introduzione dell'iPhone, uno dei primissimi smartphone privi di tastiera fisica e dotato esclusivamente di touchscreen; BlackBerry con il suo BlackBerry OS, Microsoft con Windows Phone, Nokia con SymbianOS e Google con Android. Di queste realtà, ad oggi fra i principali player si annoverano solo Apple con iOS/iPadOS e Google con Android: molte delle aziende precendemente menzionate non sono state in grado di innovarsi e tenere il passo nella scena mobile.

In questi anni, alcune realtà come Samsung prima e Huawei poi hanno tentato in qualche modo di eliminare il duopolio di Apple e Google, senza successo. Ad oggi, sviluppare su mobile significa sostanzialmente realizzare applicazioni per iPhone e iPad compatibili con il sistema operativo iOS sul fronte Apple, e per smartphone e tablet che montano il sistema operativo di Google sul fronte Android.

## Le Piattaforme Target

Sviluppare per mobile ad oggi si traduce fondamentalmente nel costruire artefatti software che possano funzionare su smartphone e tablet basati su sistemi operativi Android e iOS/iPadOS.

Per programmare applicazioni mobile, sia che si scelga di realizzarle con approccio nativo, sia che si scelga l'approccio ibrido, richiede necessariamente l'installazione di un Software Development Kit (SDK) preciso, che prendono il nome rispettivamente di Android SDK e iOS SDK. Questi SDK contengono tutta una serie di prodotti come compilatori, emulatori, e strumenti aggiuntivi utili a chi sviluppa su mobile. Sebbene ultimamente la tecnologia stia virando verso alcune particolari architetture basate su ISA ARM, ad oggi la maggior parte dei computer desktop adotta ancora processori basati su architettura x86 a 64 bit: si rende quindi necessario installare strumenti come emulatori e simulatori per velocizzare lo sviluppo installando il proprio software in fase di sviluppo all'interno di macchine virtuali che rispecchiano quanto più il comportamento di un dispositivo fisico.

Per quanto un emulatore (altresì noto come simulatore nel mondo Apple) sia di fatto una macchina virtuale molto simile ad un dispositivo fisico, lo stesso non ci consentirà di testare tutte le funzioni realmente esistenti su un vero dispositivo: questo spesso si traduce nel dover acquistare un parco dispositivi fisico sufficientemente capiente per poter testare la maggior parte delle funzioni non riproducibili all'interno di un emulatore, funzionalità spesso legate al comparto sensoristica come bluetooth, accelerometri, GPS, fotocamera, sensori d'impronta digitale e via discorrendo.

Se dal punto di vista degli SDK è necessario passare obbligatoriamente dai prodotti ufficiali Google e Apple, non vale la stessa regola per gli IDE. Sul fronte Android, l'IDE più diffuso è Android Studio, nato a partire da un altro prodotto Jetbrains di nome IntelliJ IDEA, mentre su iOS possiamo utilizzare il software proprietario Apple XCode. Come menzionato precedentemente, nessuno ci vieta di utilizzare altri IDE come Visual Studio Code o persino un banale blocco note per scrivere il nostro codice poiché il compilatore risiede nell'SDK e non è strettamente legato all'IDE scelto. Certo, dovremo rinunciare a qualche funzionalità extra offerta da un IDE di riferimento, ma questo non ci impedirà di essere produttivi scrivendo il codice all'interno di un editor con cui abbiamo familiarità.

Che dire invece dei linguaggi di programmazione? Qui è fondamentale fare un distinguo in quanto gli stessi variano in funzione dell'approccio scelto: se nativo o ibrido. In questa sezione tratteremo esclusivamente l'approccio nativo.

Agli albori dello sviluppo mobile su Android ed iOS, i principali linguaggi di programmazione a farne da padroni sono stati rispettivamente Java per Android ed objectiveC per iOS. Google tuttavia ha sempre sofferto l'idea di non poter avere il controllo sul proprio linguaggio di programmazione mobile così come faceva invece Apple con objectiveC, e a partire dal 2014 ha iniziato a lavorare su un approccio di sviluppo proprietario che ha poi visto la luce qualche anno dopo. Lato Apple invece, con la nascita di Kotlin divenuto poi il principale linguaggio di programmazione per lo sviluppo mobile nativo, si è scelto di abbandonare objectiveC in favore di Swift, un linguaggio di programmazione moderno e molto meno complesso rispetto al suo predecessore.

Questi due linguaggi di programmazione hanno dominato e tutt'ora dominano la scena dello sviluppo mobile, sebbene negli ultimi anni abbiamo vissuto un vero cambio di paradigma passando dalla programmazione imperativa alla programmazione dichiarativa: se prima il layout delle interfacce era fortemente disaccoppiato rispetto al codice sorgente della nostra app, con il passaggio al metodo Declarative UI le due cose si sono fuse, dando alla luce a Jetpack compose su Android e a SwiftUI su iOS.

## Modalità di sviluppo: Nativo vs Ibrido

Agli albori dello sviluppo mobile, l'unico modo possibile per realizzare applicazioni per smartphone e tablet consisteva nello studiare il linguaggio di programmazione di riferimento per poter interagire con l'SDK messo a disposizione da Apple o Google per programmare le app. Con il consolidarsi dei due principali sistemi operativi Android ed iOS, chi scriveva codice per realizzare app mobile poteva fondamentalmente scegliere se verticalizzare le proprie competenze su uno dei due per diventare un Android Mobile Developer o un iOS Mobile Developer, o se studiarli entrambi, diventando di fatto un Mobile Developer a tutto tondo.

Realizzare la stessa applicazione per due sistemi operativi diversi significava avere due codici sorgenti completamente diversi, utilizzare due design system differenti, affrontare bug e problematiche diverse in funzione della piattaforma di riferimento, e soprattutto imparare due linguaggi di programmazione con un paradigma molto diverso fra loro: Java per Android ed objectiveC per iOS.

Con il diffondersi degli smartphone e di internet, e con la progressiva transizione al contenuto mobile-first, molti web developer hanno deciso di convertirsi al mobile. L'unico limite a questo punto restava il linguaggio di programmazione: la maggior parte dei web developer era poco avvezzo all'utilizzo di Java e objectiveC, e questo ha contribuito a far nascere i framework di sviluppo ibridi di prima generazione.

Lo sviluppo ibrido nasce per far fronte al problema di dover necessariamente conoscere linguaggi di programmazione ed SDK di riferimento per ogni piattaforma mobile esistente: dato che la maggiorparte delle prime applicazioni non presenti sugli store girava sui browser degli smartphone, si è deciso di sfruttare javascript come linguaggio di programmazione per modellare dei framework che consentissero con un unico codice sorgente ed un unico design system, di realizzare applicazioni per entrambi i sistemi operativi di riferimento.

Per farla breve, tutti i framework di sviluppo ibrido di prima generazione come Cordova, Phonegap e Ionic non facevano altro che renderizzare un sito web realizzato con il tris di tecnologie HTML, Javascript e CSS all'interno di una webview in una app nativa. Sebbene questo consentisse di realizzare applicazioni più rapidamente e meno prone a bug o problematiche di vario genere, di contro ci si doveva scontrare con i limiti prestazionali dettati dalla tecnologia, dalle latenze di javascript, e soprattutto dall'assenza di fluidità d'esecuzione a causa dell'assenza di motori di rendering pensati per interagire nativamente con l'hardware del dispositivo.

Questo ha spinto i progettisti a ripensare l'approccio allo sviluppo ibrido: invece di utilizzare delle webview per renderizzare dei siti web, si è deciso di utilizzare in linguaggio di programmazione di riferimento per comunicare con un motore di rendering che consentisse di disegnare le interfacce in modo completamente nativo sugli smartphone. I framework di seconda generazione come Xamarin, Flutter, MAUI e React Native fondamentalmente producono un artefatto la cui logica di business scritta con il linguaggio di programmazione target è stata tradotta in codice macchina.

Qui la domanda potrebbe sorgere spontanea: ma quindi realizzare app con un framework di sviluppo ibrido di seconda generazione ci consente di fatto di sviluppare app native? La risposta in questo caso è sì. E verrebbe quindi naturale chiedersi che tipo di strategia adottare quando si ha la necessità di realizzare una applicazione mobile, soprattutto se queste valutazioni devono tradursi in un percorso di carriera professionale.

Sviluppare in nativo o sviluppare in ibrido, come tutte le cose, ha dei pro e dei contro, vediamo insieme vantaggi e svantaggi delle due soluzioni:

Vantaggi dello sviluppo nativo:

- Prestazioni massime: è pressoché impossibile battere le performance del codice nativo dato che lo stesso non passa attraverso un motore di rendering, le istruzioni vengono tradotte in codice macchina
- Miglior interazione: come per il punto precedente, comunicare con la sensoristica o con gli accessori dello smartphone è pressoché immediato
- User experience proprietaria: ogni piattaforma target ha ormai un design system di riferimento, è possibile quindi utilizzare le componenti standard per modellare le interfacce grafiche
- Applicazioni più leggere: l'assenza di un framework si traduce in zero overhead in memoria o sullo storage

Svantaggi dello sviluppo nativo:

- Codice sorgente duplicato: se l'obiettivo è raggiungere entrambe le piattaforme, è necessario scrivere l'applicazione sia per Android che per iOS
- Bug e problematiche duplicate: questa è una diretta conseguenza di avere un doppio codice sorgente; un errore di business è ridondante, un bug proveniente da un'implementazione strettamente legata al target di riferimento esisterà solo su quella determinata piattaforma
- Costi: anche in questo caso il doppio codice sorgente si traduce in tempistiche, costi di sviluppo e manutenzione pressoché doppi

Vantaggi dello sviluppo ibrido:

- Singola codebase: come menzionato più volte precedentemente, questo aspetto ha un impatto sui tempi e sui costi di sviluppo e di manutenzione dell'intera codebase e dell'intero team
- Design system unico: quando si ha la necessità di realizzare applicazioni fortemente tematiche o con una brand identity ben strutturata, avere un unico design system consente di comunicare le idee del prodotto in modo più efficace
- Prestazioni ottime: a meno di realizzare prodotti molto di nicchia (realtà aumentata o videogames), l'uso dei motori di rendering consente di disegnare sullo schermo componenti con una reattività prossima al nativo e con una latenza del tutto impercettibile

Svantaggi dello sviluppo ibrido:

- Overhead del framework: questo problema si traduce fondamentalmente in applicazioni leggermente più pesanti in memoria e sullo storage
- Interazione limitata: spesso interagire con sensori o strumenti del dispositivo si traduce nell'introdurre canali di comunicazione, definendo ulteriori layer di scambio dati fra framework e codice nativo

Quando scegliere se realizzare una applicazione in nativo o con un approccio ibrido? Nessuno conosce questa risposta in quanto la stessa dipende fondamentalmente dal tipo di prodotto che si vuole realizzare, dalle prestazioni che si intende ricercare, e soprattutto dai costi da affrontare. Ad oggi i framework di sviluppo ibridi di seconda generazione ci consentono di realizzare la maggior parte delle applicazioni mobile presenti sul mercato senza scomodare lo sviluppo nativo.

## Modalità di rilascio

A differenza dello sviluppo web dove l'applicativo viene eseguito all'interno di un browser, nello sviluppo mobile il prodotto finale deve essere installato sul dispositivo fisico, assumendo un comportamento simile a quello desktop.

Come precedentemente accennato, per poter installare ufficialmente un'applicazione su uno smartphone è necessario passare per i canali ufficiali: i più diffusi sono rispettivamente il Google Play Store per il rilascio di applicazioni pensate per funzionare su telefoni e tablet basati su sistema operativo Android, e l'App Store per i dispositivi Apple. E' possibile sfruttare il sideloading per poter installare una app senza passare dagli store, ma questo richiede dei passaggi aggiuntivi che disabilitano alcuni controlli di sicurezza sui dispositivi Android, mentre su Apple è necessario utilizzare alcuni canali dedicati paralleli all'App Store, tipicamente adoperati in ambito business, oppure, scegliendo strade meno sicure come l'hacking con jailbreak.

Queste sono le due principali piattaforme target che chi sviluppa su mobile può decidere di supportare sebbene in passato, in seguito ad una diatriba politica fra Stati Uniti e Cina, l'azienda Cinese Huawei abbia deciso di smettere di usufruire del ramo commerciale di Google creandosi una piattaforma per il rilascio di app ad-hoc che prende il nome di App Gallery. Ovviamente esistono anche altre minoranze sul mercato, ma sarebbe troppo complesso indicizzarle tutte.

Per rilasciare applicazioni sulle due principali piattaforme target, è necessario registrarsi al Google Play Store come Google Play Developer, e all'Apple Developer Program. L'iscrizione alle due piattaforme ha un costo una tantum per quanto concerne Google e un canone fisso annuo per Apple, che consentono alla piattaforma di inserire una barriera d'accesso che privilegia la qualità alla quantità.

A valle della registrazione, le applicazioni possono essere caricate sui rispettivi store e un team di professionisti procederà ad analizzare le nostre applicazioni e a valutare se le stesse sono conformi ai termini e condizioni che abbiamo siglato in fase di registrazione. A differenza di altre piattaforme, storicamente rilasciare applicazioni mobile è più difficile, complesso e temporalmente più lento, in quanto le app devono precedentemente superare un controllo di qualità da parte degli addetti agli store non del tutto automatizzabile e automatizzato.

Quando compiliamo un artefatto per Android, abbiamo la possibilità di scegliere due formati di destinazione: apk e aab. Storicamente il formato apk è stato il primo file in grado di consentire l'installazione di una app su Android. Formalmente altro non è che un archivio compresso che contiene alcuni descrittori dell'app, noti come Manifest file, e un ulteriore archivio con la logica dell'applicazione con estensione di tipo dex, acronimo di Dalvik Executable Format, in onore della prima macchina virtuale Android progettata da Dan Bornstein in Google.

Con il passare degli anni, il diffondersi di smartphone e tablet, e il passaggio attraverso diverse architetture di processori, Google ha deciso di battezzare un nuovo archivio file pensato appositamente per il rilascio delle app sul Google Play Store e che prende il nome di Bundle AAB (Android App Bundle). Questo formato di file consente di memorizzare solo le informazioni strettamente necessarie al funzionamento dell'app, privando l'artefatto degli ABI (Application Binary Interface) e rendendolo molto più compatto. Fondamentalmente in Google si sono accorti che gli apk, con il passare del tempo, stavano crescendo di dimensione poiché gli stessi includevano tutti gli ABI esistenti. Si è scelto quindi di rivoluzionare il comportamento del Google Play store, che compila apk multipli in funzione degli ABI direttamente sul Google Play Store: in questo modo Google Play Store stessa può fornirci degli apk in funzione dell'ABI del nostro smartphone. L'ABI rappresenta una particolare specifica progettuale definita per consentire il funziomanento di un programma su macchine di marche diverse purchè accomunate da un tipo particolare di hardware o di sistema operativo.

Lato iOS, il principale output file ottenibile a valle di una compilazione di una app ha come estensione IPA che sta per iOS App Package (l'acronimo risponde anche alla definizione iPhone Application prima che Apple rivoluzionasse la lineup dei nomi dei propri sistemi operativi mobile). Come per l'APK, questo file contiene alcuni descrittori del prodotto, questa volta in formato .plist, un formato molto conosciuto nel mondo Apple, e la logica dell'applicazione in formato .app, oltre ad una serie di file aggiuntivi come le icone.

## Il ruolo di chi sviluppa su mobile

Chi sviluppa su mobile è fondamentalmente un full-stack developer le cui competenze sono modellate in modalità Pi-shaped. Sebbene lo sviluppo mobile si possa concretizzare di fatto in una branca del frontend, la necessità di interagire con strumenti molto più a basso livello come i sensori o il dover scrivere logica di business che spesso elabora dati e li memorizza su basi di dati o su storage ospitati localmente al dispositivo, rende questa figura professionale uno specialista del backend. Quale miglior figura condivide sia le competenze backend che quelle frontend se non un full-stack developer? La specializzazione orizzontale del Pi-Shaped invece si concretizzano nel possedere conoscenze minime di UI e UX quando si tratta di disegnare e progettare interfacce grafiche, e di CI/CD quando è necessario compilare e rilasciare gli artefatti sui principali store.

Il percorso di formazione e specializzazione di chi sviluppa su mobile è molto complesso e richiede più competenze trasversali:

- Padronanza dei linguaggi di programmazione: fondamentalmente chi sviluppa mobile deve conoscere più linguaggi di programmazione sebbene lo stesso decida di seguire la strada della programmazione ibrida. Conoscere Kotlin o Swift quando programmiamo con React Native o Flutter ci consente di scrivere moduli nativi quando abbiamo la necessità di interfacciarci con l'hardware di smartphone e tablet
- Conoscenza del sistema target: per costruire applicazioni accattivanti e funzionali, è necessario conoscere i behavior pattern del sistema operativo di riferimento. Disporre le componenti grafiche in un certo modo all'interno dell'applicazione o sfruttare determinati flussi dettati dalle tecnologie proprietarie del dispositivo consente agli utenti delle nostre app di sentirsi a casa propria quando usano i nostri prodotti.
- Competenze di ingegneria del software: utilizzare i giusti pattern architetturali, scegliere i design pattern corretti, e scrivere gli algoritmi per la logica di business nel modo giusto consente di realizzare applicazioni robuste, performanti e facilmente estendibili.
- Conoscenze di basi di dati e storage: spesso e volentieri si renderà necessario memorizzare i dati all'interno di una base di dati o sul file system del dispositivo. Sapere come progettare un database, ottimizare l'indicizzazione dei dati ed eseguire query ottimizzate può avere un forte impatto sulle performance e sull'estendibilità della nostra applicazione
- Competenze di rete: chi sviluppa su mobile deve essere in grado di costruire client in grado di scambiare i dati con un server remoto in sicurezza e soprattutto deve poter modulare le modalità di presentazione dei dati in funzione della presenza/assenza di connessione
- Competenze da DevOps: integrare strumenti di test all'interno di un processo di continuous integration finalizzato al rilascio dell'applicazione sui principali store è fondamentale per chi sviluppa su mobile
- Padronanza di UI/UX: saper riconoscere interfacce ben progettate e ben bilanciate sono ottime skill di contorno che qualunque mobile developer dovrebbe possedere

Sebbene non sia necessario verticalizzarsi su ognuna di queste competenze, è importante avere almeno un'infarinatura di base delle skill che possono poi essere interpretate da altri stakeholders all'interno del proprio team di sviluppo. Una formazione impostata su conoscenze Pi-Shaped in ambito mobile non può che portar giovamento nell'interazione con gli altri attori quali backend engineers, UI/UX designers, DevOps, eccetera.

## Pattern architetturali e design pattern

TODO

## Design system per mobile

TODO
