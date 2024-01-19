# Come contribuire al repository

## Benvenuto!

Grazie per aver deciso di contribuire al progetto!  
In questa pagina troverai tutte le informazioni necessarie per poter contribuire al progetto in varie forme.

## In che modo posso contribuire?

Puoi contribuire nella stesura del libro puoi fare una qualsiasi delle seguenti attività.

### Proporre un capitolo

Se hai un'idea per un capitolo, puoi proporla aprendo una nuova issue.  
Github ti proporrà un template per la creazione della issue, che ti suggeriamo di utilizzare.  
Inserisci quante più informazioni possibili e che tipo di impegno vorresti avere nella stesura.

Una volta aperta la issue, verrà automaticamente assegnata una label `nuovo-capitolo`.  
A questo punto, un qualsiasi Ambassador potrebbe decidere di _assegnare_ a se stesso la issue. Ti consigliamo di pubblicizzare la tua idea in ogni modalità a te possibile e/o contattare eventuali Ambassador di tua conoscenza per chiedere loro di dare un'occhiata alla tua proposta e valutare la possibilità di _assegnare_ la issue a se stessi.

Nel momento in cui un Ambassador deciderà di _assegnare_ la issue a se stesso, un branch verrà creato in maniera automatica e il lavoro di stesura potrà cominciare.

Prosegui nella lettura di questa pagina per capire come procedere da qui in poi.

### Modalità di stesura di un capitolo

Bene, hai individuato un capitolo a cui contribuire e vuoi cominciare a scrivere dei contenuti. Ma come?

Le modalità di stesura del capitolo sono principalmente due:
- In accordo con la persona del team Ambassador assegnataria del capitolo di interesse, potrete decidere di mettervi in contatto per lavorare insieme alla stesura del capitolo. In questo caso, potrete decidere di utilizzare un qualsiasi strumento di scrittura collaborativa (Google Docs, Office 365, ecc.) e di caricare il contenuto nel branch una volta terminato. Per comodità, si suggerisce di lasciare alla figura di Ambassador il compito di caricare il contenuto nel repository rimuovendo la necessità di una ulteriore Pull Request.

- In accordo con la persona del team Ambassador assegnataria del capitolo, potrai stendere in prima battuta il contenuto del capitolo e far sì che la persona assegnataria ti faccia da revisore e guida. In questo caso, sarà necessario fare un fork del branch relativo al capitolo e aprire una Pull Request che dovrà puntare a quello stesso branch come destinazione. 
  Una volta aperta la Pull Request, la persona assegnataria del capitolo potrà iniziare a revisionare il contenuto e a suggerire modifiche.  
  Una volta terminato il lavoro, la persona assegnataria del capitolo aprirà una Pull Request (O modificherà quella già presente da `draft` a `ready for review`) e chiederà una revisione al resto della community. Le regole di approvazione dei contenuti sono regolate dal Governance Group del progetto e sono disponibili [qui](https://github.com/Il-Libro-Open-Source/governance/blob/main/meetings/2023-11-03-Governance.md#approvazione-contenuti).

## Scrivere i contenuti

I contenuti del libro sono scritti in formato markdown e sono organizzati in cartelle e file.  
Sarà sufficiente avere una qualsiasi versione di Node.js installata sul proprio computer per poter formattare i file markdown in maniera automatica e un qualsiasi IDE per la stesura.

### Prima installazione

Dopo aver clonato il progetto ed essendosi spostati sul branch relativo al capitolo di interesse, eseguire il comando `npm i` per installare le librerie.

### Formattazione

Tutti i file markdown devono essere formattati con [Prettier](https://prettier.io/) per una miglior leggibilità e per evitare inutili merge conflict se più persone lavorano allo stesso file.

Per formattare da linea di comando tutti i file è sufficiente lanciare il seguente comando nella cartella del repository:

```bash
npm run format:write
```

Fortunatamente i principali IDE supportano Prettier tramite delle estensioni, di seguito alcuni esempi:

#### Visual Studio Code

Per formattare i file markdown con Visual Studio Code è necessario installare l'estensione [Prettier - Code formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode).

Un buon consiglio è tenere attivo il flag `Format On Save` direttamente nelle impostazioni di vscode per evitare di dover formattare ogni volta a mano.

#### JetBrains IDE (WebStorm, IntelliJ, ecc.)

Per formattare i file markdown con IDE JetBrains è necessario installare l'estensione [Prettier](https://plugins.jetbrains.com/plugin/10456-prettier), tranne per WebStorm che include già Prettier di default.

Alcuni suggerimenti di configurazione si possono trovare [qui](https://prettier.io/docs/en/webstorm).

#### Vim

Per formattare i file markdown con Vim è necessario installare il plugin [vim-prettier](https://github.com/prettier/vim-prettier).

Alcuni suggerimenti di configurazione si possono trovare [qui](https://prettier.io/docs/en/vim).

#### Altri IDE

Nella documentazione di Prettier sono presenti le istruzioni per configurare il tool nel proprio IDE preferito: [Editor Integration](https://prettier.io/docs/en/editors).

### Conventional commits

Per mantenere uno storico e poter costruire dei changelog è richiesto a tutti i contributori del progetto di utilizzare i [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/).  
In pratica è necessario utilizzare dei prefissi per i commit che indicano il tipo di commit e il contesto, ad esempio:

```bash
git commit -m "feat: aggiunta nuova pagina"
```

## Lingua e contenuti

Il libro è, in questo momento, orientato ad un pubblico italiano.  
Volendo essere accessibile alla platea più ampia possibile, è necessario utilizzare un linguaggio semplice e chiaro, espresso in lingua italiana, per i contenuti, le cartelle, i commit, le Pull Requests, i commenti, ecc.  
Seppur abituati a scrivere in inglese commit e Pull Requests, richiediamo a chi contribuisce di utilizzare la lingua italiana anche in questi casi, _al netto del `<type>` dei commit_ per seguire i [Conventional Commits](#conventional-commits), che resteranno in inglese.

Per quanto riguarda i capitoli del libro, è stata già predisposta una futura integrazione di ulteriori lingue (traduzioni) utilizzando un approccio `language driven` per la struttura delle cartelle. Si avrà quindi, ad esempio: `docs/it/nome-del-capitolo.md` per la lingua italiana, `docs/en/name-of-the-chapter.md` per l'inglese, e così via.

> [!NOTE]  
> Il nome del file (`nome-del-capitolo.md`) rappresenta, a tutti gli effetti, lo `slug` dell' url. Cercando sempre di mantenere una nomenclatura efficace e concisa (esempio: ✅ `sviluppo-mobile` e non ❌ `capitolo-sulle-metodologie-di-sviluppo-per-applicazioni-mobile`), è necessario utilizzare la convenzione di nomenclatura `Kebab case` (quindi parole in minuscolo separate da un `-`).

## Linee Guida

Prima di stendere contenuti o proporre delle Pull Request si suggerisce di dare una lettura alle [Linee Guida](https://github.com/Il-Libro-Open-Source/book/blob/main/GUIDELINES.md) (E relativo [Cheatsheet](https://github.com/Il-Libro-Open-Source/book/blob/main/GUIDELINES-CHEATSHEET.md)) da rispettare quando si interagisce con il repository.
