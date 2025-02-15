---
layout: default
title: AI
parent: Technical topics
nav_order: 1
---

<!-- prettier-ignore-start -->
# AI
{: .no_toc }

- TOC
{:toc}

<!-- prettier-ignore-end -->

## C'era una volta...

Il mondo dell'intelligenza artificiale comincia più di qualche decennio fa, insieme all'esigenza di voler emulare le capacità proprie dell'uomo. Sistemi basati su regole, sistemi conversazionali, automi: questi sono solo alcuni degli esempi delle categorie su cui si inizia ad investire per coltivare il campo dell'intelligenza artificiale.

## Cosa vuol dire "intelligenza artificiale"

Il termine che definisce questo settore nasce quasi un secolo fa: John McCarthy, uno dei personaggi più illustri del settore, battezza quei sistemi dotati di capacità assimilabili a competenze umane come "intelligenti". Nel corso degli anni questa definizione muta e si evolve, soprattutto se pensiamo che la stessa definizione di "intelligenza" può assumere diverse rappresentazioni: si parla di intelligenza logica, o emotiva? Di intelligenza matematica o motoria? Ognuna di queste richiede capacità diverse e assume forme differenti, spesso difficili da riprodurre tramite semplici regole o equazioni.

Per questa ragione, ad oggi, esiste un forte divario su cosa sia un'intelligenza artificiale: più genericamente parlando, possiamo pensare ai sistemi intelligenti come sistemi che possano emulare una data capacità associata normalmente all'essere umano in grado di ottenere risultati altrettanto verosimili. Inutile dire che a sostegno di questa definizione spesso si accostano i celebri Test di Turing: il matematico britannico tentò di formulare delle prove che potessero "misurare" e verificare la differenza tra un sistema di intelligenza artificiale e un essere umano nello svolgere un dato compito. Ad oggi, molte delle domande che Turing si è posto per affermare o meno se un sistema fosse intelligente hanno perso di valenza e risultano superate, ma, al tempo, erano certamente di valido ausilio.

## L'IA e la neve

Nonostante l’ottimismo iniziale e i finanziamenti significativi a metà degli anni ’60, la ricerca sull’intelligenza artificiale ha dovuto affrontare sfide e periodi di supporto ridotto noti come “inverni dell’intelligenza artificiale”. Tuttavia, con i progressi nella potenza di calcolo, l’accesso ad enormi set di dati e le continue e recenti scoperte nel campo dell'apprendimento automatico, l’intelligenza artificiale ha registrato una rinascita di interesse e investimenti a partire dagli anni 2020. Oggi, l’intelligenza artificiale continua a evolversi rapidamente, con applicazioni in vari domini guidate dalle innovazioni nella scienza dei dati, nell’apprendimento automatico e nel deep learning. Ma quali sono le principali branche, e che campo di applicazione hanno?

## Categorie di IA

L'intelligenza artificiale racchiude un'ampia varietà di aree tematiche:

1.  Machine Learning: si concentra sullo sviluppo di algoritmi che consentono ai computer di apprendere dai dati e fare previsioni o prendere decisioni. Comprende l'apprendimento supervisionato, l'apprendimento non supervisionato e l'apprendimento per rinforzo, tecniche estremamente diverse e con livelli di applicazione differenti a seconda del contesto: alcuni esempi sono l'analisi del sentiment, attività di churn prediction per lo studio della fidelizzazione di un cliente, la classificazione, e molto altro.

2.  Deep Learning: utilizza il concetto di reti neurali artificiali per elaborare grandi quantità di dati ed estrarre modelli o caratteristiche complessi. L'idea nasce dal voler emulare il funzionamento dei neuroni e delle connessioni che permettono le sinapsi. Le applicazioni includono il riconoscimento delle immagini, l'elaborazione del linguaggio naturale e le reti avversarie generative, particolarmente utilizzate in ambito di sintesi dei dati.

3.  Robotica: integra l'intelligenza artificiale con la progettazione e l'ingegneria meccanica per creare robot in grado di percepire l'ambiente, elaborare informazioni e prendere decisioni. Le applicazioni spaziano dai veicoli autonomi ai robot umanoidi.
    Oltre a queste branche principali, ci sono alcuni campi di recente nascita che puntano a lavorare su quelle che sono delle competenze ad oggi ancora difficilmente emulabili. Tra queste, c'è la Theory of Mind AI (in fase di sviluppo): questa mira a consentire ai sistemi di intelligenza artificiale di comprendere la natura, i pensieri e le emozioni umane, prendendo decisioni simili a quelle umane basate su queste informazioni. Ad oggi, questo campo è oggetto di ricerca.
    Un altro campo è quello chiamato Self-Aware AI (concettuale): immagina sistemi di intelligenza artificiale in grado di costruire opinioni ed emozioni su se stessi indipendentemente dai dati immessi dall'uomo, trasformando la tecnologia e la vita umana. Questo presuppone la presenza di una coscienza, di senso etico e di esperienza; tutte caratteristiche ad oggi ancora non formalizzate.

Queste aree rappresentano le diverse applicazioni e capacità dell'intelligenza artificiale in vari settori come sanità, finanza, produzione, trasporti, giochi e altro ancora.

Per dare un ulteriore livello di dettaglio, andiamo a definire quelle che sono le tecniche appartenenti a ciascuna delle categorie prima citate, in maniera più puntuale.

### Machine learning e algoritmi

L’apprendimento automatico, traduzione di machine learning, comprende una varietà di tecniche e applicazioni che stanno rivoluzionando numerosi settori. Ecco alcune tecniche chiave di machine learning ed esempi delle loro applicazioni:

1.  Apprendimento supervisionato: gli algoritmi apprendono dai dati etichettati per fare previsioni. Per etichetta, si intende una categoria o una classe che serve a identificare il dato rappresentato. Un esempio è quello che prevede la classificazione di immagini di cuccioli di cane e di coniglio che vengono distinte tramite delle etichette (label) per descriverne la specie, così che il modello possa sfruttare queste label per associare ogni nuova immagine alla label corretta, una volta completato l'addestramento.
2.  Apprendimento non supervisionato: gli algoritmi trovano modelli nei dati senza etichette predefinite. In questo caso, è il modello a dover individuare dei pattern ricorrenti nei dati per individuare possibili correlazioni tra i dati. Un esempio di applicazione è quello legato allo studio dei segmenti di clienti in ambito marketing; per analizzare il mercato di un dato settore, può essere utile non avere delle etichette a priori, ma piuttosto dare al modello il compito di segmentare i clienti in base a correlazioni che sarebbero difficili in forma manuale su grandi moli di dati.
3.  Apprendimento semi-supervisionato: combina l'apprendimento supervisionato e non supervisionato utilizzando dati etichettati e non etichettati ed è particolarmente adoperato nei problemi di classificazione. Un esempio di applicazione è legato all'etichettatura di aree geografiche analizzando scatti fotografici provenienti dai satelliti. Le lievi variazioni sullo spettro dell'immagine consentono all'operatore di etichettare un piccolo subset di dati che verrà poi esteso automaticamente dall'algoritmo.
4.  Apprendimento per rinforzo: gli agenti imparano a prendere decisioni interagendo con un ambiente. Un po' come avviene nei sistemi di risposta automatica, il feedback dell'utente permette al sistema di valutare il proprio operato durante lo svolgimento dello stesso.

I casi d'uso prima citati mostrano il diverso impatto dell’apprendimento automatico in settori come sanità, finanza, social media e altro ancora, evidenziandone il ruolo nel migliorare l’efficienza, l’accuratezza e i processi decisionali.

### Deep learning

Il deep learning, un ramo più sofisticato dell’apprendimento automatico, affonda le sue origini nel 1943, quando Walter Pitts e Warren McCulloch crearono un modello di computer basato sul concetto di reti neurali. Da allora la tecnologia si è evoluta in modo significativo, con traguardi chiave tra cui lo sviluppo di modelli di backpropagation negli anni '60 e l'introduzione delle reti neurali convoluzionali negli anni '70. Nel 1986, Geoffrey Hinton dimostrò la possibilità di addestrare delle reti neurali utilizzando la backpropagation, da cui il termine "deep learning" nel 2006.
La backpropagation consiste nell'utilizzare dei pesi per misurare le risposte ottenute dai singoli neuroni e propagare l'errore ottenuto nelle predizioni nei neuroni precedenti, così da poter aumentare il livello di efficacia dell'algoritmo.

Tra le applicazioni principali nel campo del deep learning ci sono:

1.  Riconoscimento delle immagini, per individuare oggetti specifici o soggetti dominanti all'interno di contenuti multimediali;
2.  Elaborazione del linguaggio naturale, che svolge un ruolo cruciale nell'analisi del linguaggio umano;
3.  Rilevamento delle frodi, in campo assicurativo e bancario, utilizzato per rilevare attività criminali;
4.  Assistenza sanitaria: le applicazioni includono il supporto alla diagnosi di malattie, la prognosi e le tecniche di imaging medico;
5.  Personalizzazione: utilizzato per creare esperienze su misura come consigli sui prodotti e servizi personalizzati;

Nel campo del deep learning, tra gli algoritmi più utilizzati ci sono:

- Reti neurali convoluzionali (CNN): utilizzate principalmente per attività di riconoscimento delle immagini;
- Memoria a lungo termine (LSTM, ossia [Long short-term memory](https://en.wikipedia.org/wiki/Long_short-term_memory)): essenziale per le reti neurali ricorrenti e l'elaborazione sequenziale dei dati;
- Backpropagation: fondamentale per addestrare le reti neurali in modo efficiente;

La sua capacità di apprendere da dati non strutturati lo rende un potente strumento per applicazioni moderne in diversi settori. Dato il recente successo nell'ambito di strumenti che impiegano l'analisi e l'elaborazione del linguaggio naturale, vale la pena approfondire velocemente questo campo.

### NLP

L'elaborazione del linguaggio naturale, o _Natural language processing_, è una branca dell'intelligenza artificiale che si dedica allo studio della lingua umana per permettere ai sistemi di comprenderne le strutture ed essere in grado di riprodurre un contenuto testuale, o assimilabile a questa forma.

Questo avviene grazie ai cosiddetti modelli linguistici, un’ampia categoria di sistemi di intelligenza artificiale che funzionano con il linguaggio. I modelli linguistici di grandi dimensioni (abbreviati in LLM), nello specifico, si riferiscono poi a sistemi focalizzati sul linguaggio addestrati su enormi set di dati. Gli LLM utilizzano dei trasformatori, ossia risorse che permettono di sfruttare il concetto di euristica dei dati, e dispongono di un gran numero di parametri, che consentono loro di riconoscere, tradurre, prevedere o generare testo. Vengono utilizzati in varie applicazioni come traduzione, chatbot e assistenti IA. Spesso l'elaborazione del linguaggio naturale è associata a quella che si chiama intelligenza artificiale generativa: questa è una branca con ampia applicabilità, dal momento che uno degli scopi è quello di ottenere dei dati sintetici (quindi, generati e simili a quelli reali) da utilizzare per altre tipologie di operazioni. Un esempio è quello relativo alla generazione di immagini utilizzabili ai fini di ricerca nel campo medico, senza la necessità di trovare dati che sarebbero invece difficilmente reperibili.

In questo campo, l'intelligenza artificiale generativa è un termine che comprende modelli di intelligenza artificiale che generano contenuti come testo, codice, immagini, e via dicendo. I modelli linguistici di grandi dimensioni sono un tipo di intelligenza artificiale generativa specificamente progettata per generare contenuto testuale. Esempi di applicazioni includono GPT-4 di OpenAI e PaLM di Google.

In sintesi, la differenza fondamentale sta nel focus: i modelli linguistici comprendono una gamma più ampia di sistemi di intelligenza artificiale che lavorano con il linguaggio, mentre i modelli linguistici di grandi dimensioni sono specificamente adattati per compiti legati alla lingua con particolare attenzione alla generazione di contenuto testuale.

Alcuni esempi di moderni LLMs includono:

- GPT (Generative Pretrained Transformer): prodotto da OpenAI, è un LLM ampiamente noto utilizzato nei chatbot come ChatGPT e per la piattaforma Bing Chat di Microsoft.
- LaMDA: sviluppato da Google, alimenta il chatbot conversazionale di Google, Bard.
- LLaMA: LLM di Meta AI, con una versione open source chiamata LLama 2.
- Megatron-Turning NLG: sviluppato da Nvidia e Microsoft, questo modello è uno dei più grandi modelli in lingua inglese con trasformatore monolitico.
- Claude: il LLM di prossima generazione di Anthropic utilizzato nei chatbot conversazionali.
- LLM 1-bit: viene utilizzato per memorizzare i parametri di peso rispetto ai 32/16 bit degli LLM tradizionali. Ciò riduce le dimensioni complessive di una grande percentuale consentendo quindi anche ai dispositivi più piccoli di utilizzare i più recenti LLM.

Questi modelli sono all’avanguardia nell’intelligenza artificiale generativa e consentono varie applicazioni nell’elaborazione del linguaggio naturale e nella generazione di testi.

Una delle tecniche più recenti in questo ambito è la Retrieval Augmented Generation (abbreviata in RAG), che combina le capacità avanzate di generazione di testo di modelli come GPT con funzioni di recupero delle informazioni per fornire output precisi e contestualmente rilevanti. Questo approccio innovativo migliora la capacità dei modelli linguistici di comprendere ed elaborare le query degli utenti integrando i dati più recenti e pertinenti.

Questo perché, in generale, gli LLM sono davvero efficaci nello svolgimento di molte attività di elaborazione del linguaggio naturale: spesso, il testo generato va diretto al punto, è accurato ed è proprio ciò di cui l'utente ha bisogno... Ma la maggior parte delle volte non è così.

Molto probabilmente ti sei imbattuto/a in una situazione in cui fai una domanda a ChatGPT e ritieni che ci sia qualcosa che non va nell'output generato; se vai a controllare le informazioni, scopri che GPT in realtà "ha mentito". Questo fenomeno viene comunemente chiamato allucinazione ed ha una causa ben precisa.

I modelli linguistici generici sono pre-addestrati su grandi quantità di dati provenienti da qualsiasi luogo, ma questo non significa che conosca la risposta ad ogni domanda. I LLM "generalisti" non sono infatti all'altezza in casi ci sia la necessità di informazioni aggiornate o pertinenti, di un contesto specifico del dominio, della verifica dei fatti, e via dicendo, tutte proprietà che sono state ampiamente messe in discussione anche rispetto all'utilizzo di questi strumenti.

Particolarmente interessante è il progetto creato da Piero Savastano per la creazione di un framework open-source che permettesse lo sviluppo di soluzioni production-ready sulla base dei LLM disponibili nel mercato: si parla del progetto [Cheshire Cat](https://cheshirecat.ai/), che conta ormai diversi plugin a disposizione, una documentazione molto ricca di tutorial per estendere le funzionalità attuali e utilizzare la memoria a lungo termine e ha il vantaggio di essere fruibile anche tramite Docker.

## Data science

Altra branca estremamente importante è quella relativa alla data science, che combina strumenti, metodi e tecnologie statistici per generare significato dai dati, tramite il concetto di inferenza. Anche questa è spesso confusa con il concetto di intelligenza artificiale, della quale ne è -appunto- una categoria: infatti, la data science trova applicazione nell'ambito predittivo, necessita di dati di ottima qualità e può sfruttare tecniche di ML per raggiungere una serie di obiettivi, come riconoscere dei modelli nei dati a disposizione.

A livello di applicazione, è possibile utilizzare la data science per prevedere le vendite future di un certo prodotto o identificare quando sarà necessario prevedere la manutenzione di un sistema; altri esempi sono la valutazione dei rischi in ambito assicurativo, piuttosto che la previsione di consumi energetici, e via dicendo.

La data science ha un ambito più limitato rispetto all'IA nella sua interezza: il lavoro in questo campo inizia identificando le domande a cui si può rispondere sfruttando i dati. Spesso, si trova applicazione in ambito business intelligence per esplorare i dati a disposizione, previa raccolta e pre-elaborazione dei dati, e applicare dei modelli e algoritmi appropriati ai dati per rispondere a queste domande, interpretando i risultati.

## Etica e intelligenza artificiale: uno scontro titanico

Il concetto di "AI etica" si riferisce a sistemi di intelligenza artificiale che aderiscono a standard legali, morali ed etici accettati dalla società. Questo concetto è fondamentale a causa del potenziale impatto dell’intelligenza artificiale su vari aspetti della vita, inclusi pregiudizi algoritmici, equità, responsabilità, privacy e regolamentazione. L’intelligenza artificiale etica affronta sfide come l’etica delle macchine, la sicurezza dell’intelligenza artificiale, la disoccupazione tecnologica e il trattamento etico dei sistemi di intelligenza artificiale. Considera inoltre le questioni emergenti come la disinformazione legata all'intelligenza artificiale e le implicazioni etiche in settori quali l'assistenza sanitaria, l'istruzione e l'esercito.

Garantire un’intelligenza artificiale etica è essenziale per prevenire pregiudizi, salvaguardare la privacy, evitare errori che potrebbero causare danni e gestire l’impatto ambientale delle tecnologie di intelligenza artificiale. Basti pensare a sistemi di questo tipo applicati nell'ambito della sanità: quali sono i limiti con cui progettare un sistema che sfrutti l'intelligenza artificiale per interagire con possibili pazienti? In che modo vengono trattati i dati inseriti da questi, e come valutare l'operato? Seguendo i principi etici nello sviluppo e nell’utilizzo dell’intelligenza artificiale, le aziende possono mitigare rischi come guasti dei prodotti, problemi legali e danni al marchio. L’intelligenza artificiale etica non riguarda solo il comportamento responsabile, ma anche la garanzia di un buon valore aziendale e del benessere sociale.

Negli ultimi anni l'aspetto legato all'etica durante il processo di progettazione e ideazione di sistemi che usino questa tecnologia è diventato un punto importante: non a caso, moltissimi colossi del settore tecnologie hanno stilato dei veri e propri manifesti in cui rendono pubbliche le intenzioni, le responsabilità e l'impatto che hanno studiato e che usano per valutare i propri prodotti. Per leggere alcuni di questi, è sufficiente cercare all'interno dei siti ufficiali di aziende come IBM o Google post relativi al termine "responsable AI". Le buone intenzioni non sempre si traducono in fatti: nonostante ciò, la presa di coscienza di queste società di fronte all'impatto sociale, economico e ambientale è estremamente importante e deve essere al centro di un'attenta valutazione.

## Lavorare nel campo dell'IA

Lavorare in questo settore implica ricoprire ruoli come quello di ingegnere/a dell'apprendimento automatico, responsabile di prodotto, data scientist e ricercatore/ricercatrice in ambito AI e altro ancora.

Per accedere a questo campo, in genere è necessaria una laurea in Informatica o in un campo correlato, con titoli di studio di livello magistrale nell'intelligenza artificiale o nell'apprendimento automatico, forti capacità di comunicazione, una passione per la risoluzione di problemi complessi e il rispetto degli standard etici e legali.
Tuttavia, la laurea non è un requisito obbligatorio, ma piuttosto un qualcosa che può supportare nella definizione di una forma mentis e di un percorso lineare per approcciarsi al tema.

La domanda di professionisti/e dell’IA è elevata, con opportunità di crescita e innovazione in tutti i settori. Competenze specializzate in linguaggi di programmazione come Python e Java, modellazione dei dati, machine learning, deep learning e familiarità con framework come TensorFlow e PyTorch sono cruciali per il successo nelle carriere nel campo dell'intelligenza artificiale.

Per avere una panoramica abbastanza ampia, alcune delle professioni che ricadono in questo settore sono disponibili all'interno del [repository](https://github.com/GuidoPenta/galactic-tech-job-roles-guide) di Guido Penta, corredate di descrizione, skill e responsabilità associate ad ognuna di esse.
