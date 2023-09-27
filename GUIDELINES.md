# Linee guida

## Intro

Questo progetto nasce dalla **community per la community** e, nel pieno spirito dell'open source, è importante prestare attenzione anche ad utilizzare una struttura che sia semplice, accessibile, modulare e manutenibile, oltre all'adozione di un linguaggio inclusivo.

Per queste ragioni, vengono redatte queste linee guida, volte a creare una strategia che sia uniforme per la scrittura e per la struttura del libro nella sua interezza, con la certezza che questo lavoro servirà a rendere più accogliente il settore IT e tutte le persone che vogliono farvi parte, senza discriminazione alcuna, e con un'attenzione rivolta al rendere questo libro fruibile e manutenibile in maniera semplice il più a lungo possibile.

Nelle pagine che seguono vengono riportate alcune strategie comunicative per l’uso di un linguaggio che vuole supportare le differenze di genere, abbandonando alcune consuetudini che potrebbero connotare in senso sessista l’uso della lingua.

Le strategie di scrittura che si possono adottare, come vedremo, sono di vario tipo: grammaticale, lessicale e sintattico e la scelta dipende dal contesto.

Infatti, essendo questo libro redatto a più mani, prima di procedere a qualsiasi intervento sui contenuti prodotti, è _indispensabile_ valutare attentamente quale sia l'impatto e se la trasformazione attuata, ne cambi anche il tono o l'intenzione di chi scrive, sempre nel rispetto delle persone a cui si rivolge.

Lo scopo è proprio quello di preservare l'unicità dei contributi forniti da chi partecipa attivamente, rispettando la diversificazione degli stili di scrittura, del tono, la capacità comunicativa e la leggibilità che ogni persona sceglie di adottare, nonché preservare una struttura modulare e funzionare per tutte le persone che vorranno contribuire.

Queste linee guida, si rende quindi chiaro, vogliono preservare il contributo fornito e la revisione di tutti i contenuti non sarà meccanica, ma avverrà sempre dopo un'attenta valutazione di ogni singolo testo, per valutarne l'impatto.

Considerato che il **gender gap** in questo settore è un problema più che noto, è importante prestare attenzione, in un progetto di una certa portata come questo, al tipo di linguaggio che si vuole adottare: non è una novità che, secondo il [“Gender Gap Report 2022”](https://www.weforum.org/reports/global-gender-gap-report-2022/) del World Economic Forum, su 146 Stati mappati, l’Italia ha mantenuto il 63° posto, come lo scorso anno, per l’indice composito di “Gender Gap”.

Dare quindi la giusta importanza a questo livello di inclusione, è fondamentale per la buona riuscita del progetto e per ampliarne la portata e la diversità, rendendo questo libro sempre più **open**, anche seguendo quello che è ormai uno standard in molte delle aziende che partecipano ad iniziative open source. Una di queste, per avere un parallelo, è Red Hat: nel 2020, Chris Wright (CTO@Red Hat) ha pubblicato un [post](https://www.redhat.com/en/blog/update-red-hats-conscious-language-efforts) all'interno del blog per rivedere l'intero linguaggio adottato all'interno delle tecnologie e dei progetti a cui l'azienda lavora, come il ban permanente di termini come _master_ e _slave_ piuttosto che _blacklist_.

Le community open si sono impegnate moltissimo negli ultimi tempi per far sì che questo tipo di atteggiamento sia incluso nel codice di condotta delle proprie iniziative, ed **è giusto che un libro come questo ne faccia bandiera.**

Dipende da noi fare scelte linguistiche appropriate, consapevoli, come diceva Federico Fellini, che _“un linguaggio diverso è una diversa visione della vita”_.

## Strategie di struttura

Questo documento contiene tutti gli stili necessari per produrre i contenuti che saranno inclusi nel progetto.

Ogni capitolo dovrebbe avere una struttura come la seguente:

```markdown
# Titolo

## Sezione 1

### Sottosezione 2
```

### Scelta del titolo

Per la scelta del titolo, limitare a 5-6 parole la lunghezza massima, oltre a scegliere un titolo che sia **auto-esplicativo**, **rappresentativo** e che rispetti le regole di scrittura sottostanti.

Ad esempio, un titolo come

_Come diventare uno sviluppatore in 6 mesi gratis_

è accattivante e auto-esplicativo, ma non rappresentativo né inclusivo.

Meglio:

_Diventare developer: il percorso_

### Sezioni

La struttura delle sezioni rientra in quelle regole non scritte che riguardano il concepimento dell'opera che asseconda lo stile di chi scrive: per questo, è importante rispettare le scelte personali della "penna", che descrivono anche il tono e il percorso immaginato per chi andrà a leggere.

Può essere una buona strategia utilizzare delle domande rivolte a chi si approccia al libro, in forma impersonale, per rappresentare il capitolo: ad esempio:

_Hai mai pensato di cambiare professione?_

_Cosa significa diventare dev?_

_Cosa scrivo nel CV?_

L'importante è scegliere con cura l'accordanza dei soggetti a cui ci si rivolge. Preferire dunque il "tu" al "voi", per creare un maggior rapporto di empatia con la persona che legge.

Ad esempio:

_Hai mai pensato di cambiare professione?_

coinvolge di più rispetto a:

_Avete mai pensato di cambiare professione?_

Il libro vuole mettere a suo agio la persona, non avvicinarla ad una setta.

Per ciò che riguarda la gerarchia delle sezioni, non andare oltre il titolo di **terzo livello**, per evitare un vespaio di titoli e di macro-argomenti che rischiano di confondere. Questo vuol dire che, ad esempio, se si volesse scrivere un capitolo in cui si descrive una ricetta, una struttura adatta è la seguente:

```markdown
# Curry di lenticchie

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sit amet sapien sit amet lorem lacinia porttitor. Suspendisse pulvinar urna vel purus semper, eget finibus ex tincidunt. Curabitur congue nibh a arcu facilisis consequat. Curabitur tempor ligula eu lacus pretium cursus a ut felis.

## Ingredienti

- Uno
- Due
- Tre

## Procedimento

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sit amet sapien sit amet lorem lacinia porttitor. Suspendisse pulvinar urna vel purus semper, eget finibus ex tincidunt. Curabitur congue nibh a arcu facilisis consequat. Curabitur tempor ligula eu lacus pretium cursus a ut felis.
```

Al contrario, **non** è suggeribile una struttura di questo tipo:

```markdown
# Curry di lenticchie

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sit amet sapien sit amet lorem lacinia porttitor. Suspendisse pulvinar urna vel purus semper, eget finibus ex tincidunt. Curabitur congue nibh a arcu facilisis consequat. Curabitur tempor ligula eu lacus pretium cursus a ut felis.

## Ingredienti

### Ingredienti liquidi

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sit amet sapien sit amet lorem lacinia porttitor. Suspendisse pulvinar urna vel purus semper, eget finibus ex tincidunt. Curabitur congue nibh a arcu facilisis consequat. Curabitur tempor ligula eu lacus pretium cursus a ut felis.

### Ingredienti solidi

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sit amet sapien sit amet lorem lacinia porttitor. Suspendisse pulvinar urna vel purus semper, eget finibus ex tincidunt. Curabitur congue nibh a arcu facilisis consequat. Curabitur tempor ligula eu lacus pretium cursus a ut felis.

## Procedimento

### Preparazione soffritto

### Lavaggio degli ingredienti

...
```

## Strategie di scrittura

Chi deve scrivere un contenuto deve essere consapevole delle sue caratteristiche e scegliere, anche per quanto riguarda l’uso del genere, una strategia appropriata che non contrasti con la naturale chiarezza, leggibilità e trasparenza richiesta da questo progetto.

Per questo, tutte le tipologie di contenuto, è importante tenere presenti due principi base:

1. dare visibilità ad un genere neutrale, per dare enfasi a tutte le persone potenzialmente coinvolte;
2. garantire semplicità e chiarezza al contenuto dei documenti.

Dal momento che la comunicazione è rivolta o si riferisce a più persone di genere maschile e femminile, come nel caso di sviluppo, carriere, community, eventi e molto altro ancora, è possibile adottare due diverse strategie per quanto riguarda il linguaggio:

1. una strategia che dia visibilità al genere femminile, oppure
2. una strategia di oscuramento di entrambi i generi, che vada a fornire delle alternative valide e inclusive.

A questo proposito, esistono diverse tendenze a volgersi verso l'una o l'altra strategia ma, in questo caso, è più opportuno procedere con l'oscuramento di entrambi i generi e rendere il lavoro disponibile ad una platea più ampia possibile; oltre a questo, la prima strategia spesso richiede l'utilizzo di entrambi i generi per ogni espressione che riporti una differenza di genere, richiedendo la scrittura esplicita delle locuzioni che afferiscono ad entrambi i generi: ad esempio, sarebbe necessario scrivere "un/a sviluppatore/trice" ogni qualvolta ci si debba riferire alla figura professionale.

Trovare invece dei modi dei metodi di riscrittura che non appesantiscano il testo, utilizzando sostantivi non marcati o nomi collettivi, rende più semplice la scrittura nonché la comprensione e l'adozione del testo.

Per entrare nel vivo delle linee guida, vengono quindi riportati esempi pratici di come è possibile rendere inclusiva un'espressione, soprattutto per ciò che concerne il linguaggio e il mondo tech, attraverso alcune semplici regole.

La strategia di oscuramento di entrambi i generi si può attuare in diversi modi:

- utilizzando formulazioni neutre, cioè espressioni prive di referenza di genere (persona, soggetto, individuo) o riformulando con il "chi"
  esempio: “Possono partecipare all’iniziativa tutti gli sviluppatori...” oppure “Chi sviluppa può partecipare all’iniziativa...”
- riformulando la frase con nomi collettivi o che si riferiscono al tipo di professione, eventualmente preferendo la parola inglese:
  esempio: _sviluppatore, sviluppatrice_ può diventare _developer_ o _il team di sviluppo_, a seconda del contesto
  -- un’altra soluzione, valida per il plurale, è l’uso del pronome relativo “coloro che”:
  esempio: “Ciò vale per coloro che lavorano all’interno dell’amministrazione”

Altra tecnica di oscuramento del genere è la riformulazione della frase a livello sintattico, evitando di usare forme personali.
Ad esempio:

- utilizzo di forme impersonali o del passivo
  esempio: “Per la scrittura di una buona documentazione, è necessario che chi si approcci alla scrittura, presti attenzione a...”
  invece di
  “L'autore o l'autrice che si approccia alla scrittura di una buona documentazione deve prestare attenzione...”
- utilizzo del passivo

## Espressioni di esempio

Al fine di rispettare quanto descritto finora, è importante prestare attenzione al linguaggio adottato: per questo, vengono riportati alcuni esempi emersi finora (in costante aggiornamento) rispetto a frasi, locuzioni, espressioni o parole che possono avere delle valide alternative in un contesto di inclusione.

---

NB: Non è possibile modificare i nomi di istituzioni o aziende, convenzioni o standard, idem per leggi o documenti ufficiali.

---

| **Invece di...**                 | **Meglio usare...**                                           |
| -------------------------------- | ------------------------------------------------------------- |
| L'uomo/la donna                  | Le persone                                                    |
| Lo sviluppatore/la sviluppatrice | Chi sviluppa, chi programma, la professione di developer      |
| Il recruiter                     | Chi fa recruitement, la figura del/la recruiter               |
| Il sistemista                    | Chi lavora come sistemista                                    |
| L'ingegno dell'uomo              | L'ingegno umano                                               |
| Un developer                     | Un/a developer                                                |
| Caro lettore                     | A te che leggi/Tu che leggi                                   |
| Essere un dev                    | Indossare i panni da dev                                      |
| Tutti gli informatici            | Tutte le persone che lavorano nell'informatica/nel settore IT |
| Blacklist                        | Ignorelist                                                    |
| Whitelist                        | Allowlist                                                     |

# Riferimenti

- Gheno V., "Femminili singolari - Il femminismo è nelle parole", Effequ Editore, 2019
- Giusti G., "Linguaggio, identità di genere e lingua italiana", corso MOOC Università Ca’ Foscari, 2019
- Orrù A., Fiacchi A. e Di Michele V., "Scrivi e lascia vivere. Manuale pratico di scrittura inclusiva e accessibile", 2022
- Robustelli C., "Infermiera sì, ingegnera no?", in https://accademiadellacrusca.it, 2013
- Robustelli C., "Donne, grammatica e media. Suggerimenti per l’uso dell’italiano", Gi.U.Li.A. Giornaliste, INPGI, 2014
- Robustelli C., "Sindaco e sindaca. Il linguaggio di genere", Gruppo editoriale L’Espresso-Accademia della Crusca, 2016
- Treccani, "Qual è il femminile di avvocato?", in http://www.treccani.it/magazine/lingua_italiana/domande_e_risposte/grammatica/grammatica_001.html, 2020
- Sabatini A. (a cura di), "Il sessismo nella lingua italiana", Commissione nazionale per la parità e le pari opportunità tra uomo e donna, Presidenza del Consiglio dei Ministri, Dipartimento per l’Informazione e l’editoria, 1987
- Sabatini F., "La comunicazione e gli usi della lingua", Loesher Editore, 1990
