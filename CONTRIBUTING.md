# Come contribuire al repository

## Prima installazione

Dopo aver clonato il progetto:

```bash
npm i
```

per installare le librerie

## Formattazione

Tutti i file markdown devono essere formattati con [Prettier](https://prettier.io/) per una miglior leggibilità e per evitare inutili merge conflict se più persone lavorano allo stesso file.

Per formattare da linea di comando tutti i file è necessario avere [Node](https://nodejs.org/it) installato sul proprio computer e lanciare il seguente comando nella cartella del repository:

```bash
npm run format:write -- *.md
```

Fortunatamente i principali IDE supportano Prettier tramite delle estensioni, di seguito alcuni esempi:

### Visual Studio Code

Per formattare i file markdown con Visual Studio Code è necessario installare l'estensione [Prettier - Code formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode).

Un buon consiglio è tenere attivo il flag `Format On Save` direttamente nelle impostazioni di vscode per evitare di dover formattare ogni volta a mano.

## Conventional commits

Per mantenere uno storico e poter costruire dei changelog è richiesto a tutti i contributori del progetto di utilizzare i [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/).  
In pratica è necessario utilizzare dei prefissi per i commit che indicano il tipo di commit e il contesto, ad esempio:

```bash
git commit -m "feat: Aggiunta nuova pagina"
```

## Lingua e contenuti

Il libro è, in questo momento, orientato ad un pubblico italiano.  
Volendo essere accessibile alla platea più ampia possibile, è necessario utilizzare un linguaggio semplice e chiaro, espresso in lingua italiana, per i contenuti, le cartelle, i commit, le Pull Requests, i commenti, ecc.  
Seppur abituati a scrivere in inglese commit e Pull Requests, richiediamo a chi contribuisce di utilizzare la lingua italiana anche in questi casi, _al netto del `<type>` dei commit_ per seguire i [Conventional Commits](#conventional-commits), che resteranno in inglese.
