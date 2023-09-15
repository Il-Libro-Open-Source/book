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
npm run format
```

Fortunatamente i principali IDE supportano Prettier tramite delle estensioni, di seguito alcuni esempi:

### Visual Studio Code

Per formattare i file markdown con Visual Studio Code è necessario installare l'estensione [Prettier - Code formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode).

Un buon consiglio è tenere attivo il flag `Format On Save` direttamente nelle impostazioni di vscode per evitare di dover formattare ogni volta a mano.
