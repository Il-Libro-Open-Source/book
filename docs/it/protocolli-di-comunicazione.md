---
layout: default
title: Protocolli di comunicazione
nav_order: 17
---

<!-- prettier-ignore-start -->
# Protocolli di comunicazione
{: .no_toc }

- TOC
{:toc}

<!-- prettier-ignore-end -->

#

In ambito tecnologico e informatico sono presenti concetti fondamentali e strutture consolidate da tempo che spesso diamo per scontato. I protocolli di comunicazione sono un esempio di questa casistica: sono strumenti che utilizziamo quotidianamente, sia nella nostra vita lavorativa sia in quella privata. Ogni giorno infatti effettuiamo chiamate verso un server, inviamo dati, riceviamo risposte e tutto questo avviene grazie ai protocolli di comunicazione anche se, a volte, non ne siamo consapevoli.

Questi infatti sono un insieme di regole che definiscono come avviene la comunicazione tra due o più entità, in questo caso tra due o più computer. Queste regole definiscono come avviene la comunicazione, come vengono trasmesse le informazioni e come vengono interpretate.

L'esempio più comune nel nostro ambito lavorativo è quello delle chiamate HTTP, che avvengono tra un client e un server, dove, per esempio, il client è il nostro browser e il server è il server web che ospita il sito che stiamo visitando. In questo caso il protocollo HTTP definisce come avviene la comunicazione tra il nostro browser e il server web, come vengono trasmesse le informazioni e come queste vengono interpretate.
Essendo così diffuso, spesso le specifiche del protocollo HTTP vengono date per scontate ma è importante tenerne conto, soprattutto quando si sviluppano applicazioni che sfruttano questo protocollo.

Il protocollo HTTP è solo un esempio: esistono molti altri protocolli di comunicazione, e variano molto in base alla loro diffusione, complessita, sicurezza garantita, performance e contesto di utilizzo.

In questo capitolo vedremo i principali, in quali ambiti vengono utilizzati e come funzionano.

## Protocolli testuali e binari

Una prima distinzione che possiamo fare è quella tra protocolli testuali e protocolli binari. Entrambi i tipi di protocolli sono utilizzati per trasmettere informazioni tra due o più entità, e la principale differenza tra i due è nel come i byte trasmessi sono interpretati. In questo caso con "interpretati" si intende come i byte vengono trasformati in informazioni leggibili da un computer: per fare un esempio, secondo la codifica ASCII, il byte `01000001` viene interpretato come il carattere `A`, mentre può essere interpretato in modo differente da altri protocolli binary.

I protocolli testuali sono protocolli che utilizzano un formato testuale per trasmettere le informazioni, ovvero i bytes trasmessi hanno un corrispettivo nell'alfabeto, tipicamente tramite la codifica ASCII o UTF8.
Questo significa che le informazioni vengono trasmesse in un formato che è sia leggibile da un essere umano sia da un computer. Questo tipo di protocolli sono meno efficienti e veloci, ma sono più facili da implementare e da utilizzare. Inoltre, essendo leggibili da un essere umano, sono più facili da analizzare in caso di problemi. L'esempio più comune di protocollo testuale è il protocollo HTTP/1.1.

I protocolli binari, invece, sono protocolli che utilizzano un formato binario per trasmettere le informazioni, ovveri i bytes trasmetti hanno un significato ben preciso, solitamente diverso dalla codifica ASCII. Questo significa che le informazioni vengono trasmesse in un formato che non è leggibile da un essere umano, ma che è leggibile da un computer. Questo tipo di protocolli sono più efficienti e veloci, ma sono più difficili da implementare e da utilizzare. Esempi di protocolli binari sono il protocollo TCP, UDP, HTTP2 e gRPC.

Entrambi i tipi di protocolli sono utilizzati e utilizzano lo stesso principio di base: definire un formato per trasmettere le informazioni e serializzare le informazioni in bytes. La differenza è che i protocolli testuali utilizzano una codifica testuale, mentre i protocolli binari utilizzano una codifica dedicata e binaria.

### Lo stack OSI e la distinzione tra TCP e UDP

In base al modello [OSI](https://it.wikipedia.org/wiki/Modello_OSI), i protocolli di comunicazione possono essere divisi in vari livelli ma il concetto di base è il seguente: strutturare la comunicazione in più livelli, dove ogni livello ha un compito specifico e viene definito basandosi sui livelli precedenti. Per esempio, il protocollo HTTP/1.1 è definito al livello 7 e utilizza il protocollo TCP, che è definito invece al livello 4, il quale di basa sul protocollo IP, definito al livello 3. Questo permette di definire protocolli più complessi basandosi su protocolli più semplici e di riutilizzare i protocolli più semplici in più contesti.

Senza però entrare troppo nei dettagli, possiamo dire che i protocolli di comunicazione possono essere divisi in due categorie: quelli orientati alla connessione e quelli non orientati alla connessione.

Il protocollo TCP è un protocollo di comunicazione orientato alla connessione, questo significa che prima di trasmettere le informazioni, il client e il server devono stabilire una connessione tramite un handshake. Questo meccanismo permette di inizializzare la connessione che garantirà che le informazioni vengano trasmesse correttamente e che non vengano perse durante la trasmissione.

Il protocollo UDP è un protocollo di comunicazione non orientato alla connessione, questo significa che non è necessario effettuare meccanismi di inizializzazione per la trasmissione delle informazioni. Vista la mancanza di azioni iniziali come quella dell'handshake, questo tipo di protocolli permette di trasmettere le informazioni più velocemente, ma non ne garantisce la correttezza o che esse non vengano perse.

Il modello OSI è una struttura concettuale che ci permette di identificare e catalogare i protocolli di comunicazione, ma solitamente non viene utilizzato direttamente nella pratica. In pratica, i protocolli di comunicazione vengono utilizzati in modo trasparente, senza dover conoscere i dettagli del modello OSI.

### Il protocollo DNS per la risoluzione dei nomi di dominio

Durante la navigazione web, siamo soliti utilizzare i nomi di dominio per accedere ai siti web, come ad esempio `www.google.com`. Questi nomi di dominio sono più facili da ricordare, utilizzare e da condividere. Purtroppo però, i computer non possono utilizzare direttamente i nomi di dominio per connettersi ad un server web: è necessario convertire il nome di dominio in un indirizzo IP. Il protocollo DNS (Domain Name System) è utilizzato per rispondere a questa esigenza.

Il client, prima di effettuare la richiesta ad un server web, deve quindi tradurre il nome di dominio in un indirizzo IP. Per fare questo, il client invia una richiesta ad un server DNS, ossia un server avente nel proprio database la corrispondenza tra i nomi di dominio e loro indirizzi IP. Solo quando il client riceve dal server DNS l'indirizzo IP corrispondente al nome di dominio, può effettuare la richiesta al server web.

Ma cosa succede quando un server DNS non conosce la corrispondenza tra il nome di dominio e l'indirizzo IP? In questo caso, il server DNS inoltra la richiesta ad un altro server DNS, che a sua volta inoltra la richiesta ad un altro server DNS, e così via, fino a che la corrispondenza viene trovata. Questo meccanismo di inoltro delle richieste è chiamato risoluzione dei nomi di dominio.
Questa tecnica è per esempio utilizzata quando si hanno dei nomi di dominio non pubblici, come ad esempio quelli utilizzati in una rete locale. In questo caso, il nome di dominio può essere risolto solo all'interno della rete locale, e non all'esterno, garantendo la sicurezza e la privacy della rete. Esempi tipici sono i nomi di dominio utilizzati in una rete aziendale come i nome di dominio di un database o la intranet aziendale.

Il meccanismo di traduzione viene usato in realtà per tutti i protocolli di comunicazione che richiedono la traduzione tra nome di dominio e indirizzo IP, non solo per il protocollo HTTP. Ad esempio, quando si invia una mail, il client deve tradurre il nome di dominio del server SMTP in un indirizzo IP per poter inviare la mail. Oppure, quando il backend di un'applicazione deve connettersi al database, deve tradurre il nome di dominio del database in un indirizzo IP per poter effettuare la connessione.

Il protocollo DNS è complesso e supporta altre funzionalità oltre a quelle descritte sopra che putroppo per motivi di spazio non sono coperte in questo capitolo.
Rimandiamo comunque alla [pagina di Wikipedia](https://it.wikipedia.org/wiki/Domain_Name_System) per una spiegazione più dettagliata.

### Il protocollo HTTP

Il protocollo HTTP (HyperText Transfer Protocol) è sicuramente uno dei protocolli di comunicazione più diffusi nel web. Questo protocollo è utilizzato per trasmettere informazioni tra un client e un server, dove il client è l'entità che vuole effettuare la richiesta e il server è l'entità che deve produrre la risposta.
Agli inizi del web, il protocollo HTTP era utilizzato per trasmettere informazioni testuali, come ad esempio il contenuto di una pagina HTML. Con il tempo, il protocollo HTTP è stato esteso per trasmettere anche altri tipi di informazioni, come ad esempio file multimediali, file binari, JSON, ecc.

Nel corso degli anni, il protocollo HTTP ha avuto diverse revisioni atte a migliorarne alcune caratteristiche come le prestazioni e la sicurezza, ma lo scopo principale è rimasto lo stesso: trasmettere informazioni tra un client e un server. Infatti la prima versione è la version 0.9 (oramai non più usata) che è stata utilizzata per trasmettere informazioni testuali, descritta qui: https://www.w3.org/Protocols/HTTP/AsImplemented.html.
La versione 1.0 è la versione che ha introdotto il concetto di `header` e che ha permesso di trasmettere informazioni di contesto della chiamata come il `content-type` e i `cookie`.
Tale introduzione ha permesso di sviluppare siti web più complessi con possibilità di autenticazione e di trasmissione di file multimediali.
La versione 1.1 ha introdotto il concetto di connessione TCP persistente: essa permette infatti di mantenere la connessione aperta tra il client e il server per poterla sfruttare nuovamente per una nuova richiesta HTTP. Con la versione 1.0, infatti, ogni richiesta HTTP richiedeva una nuova connessione TCP: effettuata la richieste e ricevuta la risposta, la connessione TCP utilizzata veniva distrutta. Se il client voleva effettuare un'altra richiesta, doveva aprire una nuova connessione TCP e questo comportava un aumento del tempo di risposta e delle risorse utilizzate.
Con la versione 1.1, invece, la connessione TCP viene mantenuta aperta e riutilizzata per effettuare più richieste sequenziali. Questo favorisce le prestazioni e la velocità di trasmissione delle informazioni.

Le versioni 1.x dell'HTTP avevano tutte un grosso limite: per effettuare 2 richieste in parallelo si dovevano utilizzare 2 connessioni TCP differenti. Con la versione 2 del protocollo HTTP questo limite viene superato grazie al concetto di multiplexing: il protocollo HTTP/2 utilizza infatti un unico canale di comunicazione TCP per trasmettere più richieste in parallelo. Questo permette di migliorare le prestazioni e la velocità di trasmissione delle informazioni. Questa modifica migliora nettamente le performance in linea generale, ma in particolar modo delle applicazioni web che utilizzano molte risorse esterne come ad esempio le immagini, i file CSS e i file JavaScript. La versione 2 utilizza un nuovo formato binario per trasmettere le informazioni.

La versione 3 del protocollo HTTP viene introdotto per migliorare la sicurezza delle connessioni. Infatti con questa versione, la comunicazione è forzata ad essere criptata e migliora le tempistiche per la creazione di una connessione sicura.
Un ulteriore cambio tecnologico introdotto è l'utilizzo del protocollo UDP: tale scelta è stata necessaria visti i problemi riscontrati con HTTP versione 2 per cui il multiplexing in casi di errore di trasmissione non era performante. Pur prevedendo infatti il multiplexing, l'invio dei dati avviene in modo sequenziale: la gestione dei errori di trasmissione del protocollo TCP cu sui la versione 2 si basa soffre del problema noto come "head-of-line".
Se sulla connessione vengono inviati tre pacchetti, e solo il secondo ha un errori di trasmissione, il client è costretto a inviare nuovamente gli ultimi due pacchetti anche se l'ultimo ha raggiunto la destinazione correttamente. La versione 3 basata su UDP, non soffre di questo problema per cui è consigliata in modo particolare in casi di bassa connettività o dove il numero di errori di tramsissione è alto.

Una menzione al protocollo HTTPS (Hypertext Transfer Protocol Secure): non si tratta di un protocollo a tutti gli effetti, ma di un'estensione del protocollo HTTP, utile in particolare quando la connessione non è garantita sicura dal protocollo stesso, per esempio HTTP1.1 e HTTP2. In tali occasione, per rendere la comunicazione sicuro è necessario fare affidamento su un layer di criptazione.

Non esiste un protocollo HTTP migliore di un altro: mentre è da sconsigliare i protocolli deprecati come HTTP 0.9 e HTTP 1.0, gli altri rimangono molto validi.
Per esempio per endpoint interni, invocati solo da applicazioni, il protocollo HTTP 1.1 è solitamente la scelta utilizzata.

### Il protocollo SSH

Il protocollo SSH (Secure Shell) è un protocollo di comunicazione basato su TCP e permette di stabilire una connessione sicura tra due computer.
Questo tipo di protocollo viene comunemente utilizzato per connettersi ad un computer remoto in modo sicuro, per trasferire file in modo sicuro e per eseguire comandi in modo sicuro. Il protocollo SSH è considerato ad oggi lo standard per eseguire queste operazioni.

Il protocollo è diviso in tre layer distinti:

- Transport Layer Protocol: è il layer che si occupa di stabilire una connessione sicura tra il client e il server. Qui vengono, per esempio, decisi gli algoritmi per la connessione. Vengono inoltre scambiate le chiavi pubbliche per garantire la sicurezza della connessione.
- User Authentication Protocol: è il layer che si occupa di autenticare l'utente che si sta connettendo al server. Vengono scambiate le credenziali dell'utente e vengono verificate dal server. Esempi di autenticazione sono la password e la chiave pubblica.
- Connection Layer Protocol: è il layer che si occupa di gestire i comandi del protocollo SSH, come ad esempio l'esecuzione di comandi remoti, il forwarding delle porte e il trasferimento dei file.

Questa suddivisione permette di avere un protocollo flessibile e sicuro, che può essere configurato differentemente a seconda delle esigenze. Per esempio è possibile configurare il protocollo di compressione o di disabilitare l'autenticazione password, utilizzando solo la chiave pubblica.

Questo protocollo è molto diffuso e viene spesso usato per accedere a server remoti su cui si ha bisogno di operare.

### Il protocollo FTP

Il protocollo FTP (File Transfer Protocol) è un protocollo testuale di comunicazione che permette di trasferire file tra un client e un server. Questo tipo di protocollo viene comunemente utilizzato per trasferire file tra un computer e un server, per esempio per trasferire file da un computer locale ad un server remoto o viceversa.

Poiché questo protocollo non usa connessioni sicure, sono stati proposti dei protocolli derivati come il protocollo SFTP (Secure File Transfer Protocol) e il protocollo FTPS (FTP Secure) che permettono di trasferire file in modo sicuro. Questi protocolli utilizzano connessioni sicure basate su SSH o SSL/TLS per garantire la sicurezza del trasferimento dei file.

## La rappresentazione dei dati applicativi

I protocolli di comunicazione sono utilizzati per poter trasmettere informazioni tra due o più entità, e i client e i server devono concordare sia sul protocollo della richiesta sia sul contenuto della stessa. Infatti una volta che il client e il server concordano su quale protocollo di comunicazione usare, devono anche concordare quale formato usare per scambarsi le informazioni applicative. Per fare questo, è necessario definire un formato comune per la trasmissione serializzando le informazioni in bytes. Questo processo è chiamato rappresentazione dei dati che può essere di due tipi: rappresentazione dei dati testuale e rappresentazione dei dati binaria.

La rappresentazione dei dati testuale è una rappresentazione che utilizza un formato testuale per trasmettere le informazioni. Questo significa che le informazioni vengono trasmesse in un formato che è leggibile anche da un essere umano, oltre che dal computer. Questo tipo di rappresentazione è meno efficiente e veloce, ma è più facile da implementare e da utilizzare. Inoltre, essendo leggibile da un essere umano, è più facile da analizzare in caso di problemi. Esempi più comuni di rappresentazione dei dati testuali sono il formato JSON, XML e YAML.

La rappresentazione dei dati binaria è una rappresentazione che utilizza un formato binario per trasmettere le informazioni. Questo significa che le informazioni vengono trasmesse in un formato che non è leggibile da un essere umano, ma che è leggibile da un computer. Questo tipo di rappresentazione è più efficiente e veloce, ma è più difficile da implementare e da utilizzare. Esempi più comuni di rappresentazione dei dati binari sono il formato Protocol Buffers, Avro e MessagePack.

https://protobuf.dev/
https://avro.apache.org/
https://msgpack.org/

### Il formato JSON

Il formato JSON (JavaScript Object Notation) è un formato testuale per la rappresentazione dei dati applicativi. Questo formato è basato sulla sintassi del linguaggio JavaScript e permette di rappresentare dati in modo semplice, strutturato e leggibile. Questo formato è molto diffuso e viene utilizzato in molti contesti, sia in ambito web sia in ambito mobile.
Potremmo aver incontrato questo formato in diversi contesti, ad esempio quando si effettua una chiamata HTTP ad un server web, il server restituisce una risposta in formato JSON. Oppure in un file di configurazione.

### Il formato XML

Il formato XML (eXtensible Markup Language) è un formato testuale per la rappresentazione dei dati applicativi. Questo formato è basato sulla sintassi del linguaggio XML e permette di rappresentare dati in modo strutturato e leggibile. Questo formato è molto diffuso poiché permette di definire un formato personalizzato per la rappresentazione dei dati, usando una definizione di schema.
Potremmo aver incontrato questo formato in diversi contesti, ad esempio in un servizio SOAP, in un file di configurazione o in un file SVG.

### Il formato YAML

Il formato YAML (YAML Ain't Markup Language) è un formato testuale per la rappresentazione dei dati applicativi. Questo formato è basato sulla sintassi del linguaggio YAML e permette di rappresentare dati in modo strutturato e leggibile, evitando la verbosità del formato XML e JSON.
Potremmo aver incontrato questo formato in diversi contesti, ad esempio in un file di configurazione.

### Il formato Protocol Buffers

Il formato Protocol Buffers è un formato binario per la rappresentazione dei dati applicativi. Questo formato è basato sulla sintassi del linguaggio Protocol Buffers e permette di rappresentare dati in modo strutturato e veloce. Questo formato è molto diffuso poiché permette di definire un formato personalizzato per la rappresentazione dei dati, usando una definizione di schema. Permette di gestire in modo semplice e veloce la serializzazione e la deserializzazione dei dati anche in modo retrocompatibile.
Potremmo aver incontrato questo formato in diversi contesti, ad esempio in un servizio gRPC, essendo un formato binario e quindi più veloce e più efficiente di un formato testuale.

## Conclusioni

In questo capitolo abbiamo visto i principali protocolli di comunicazione, come funzionano e in quali ambiti vengono utilizzati. Abbiamo visto che i protocolli di comunicazione sono un insieme di regole che definiscono come avviene la comunicazione tra due o più entità, in questo caso tra due o più computer. Queste regole definiscono come avviene la comunicazione, come vengono trasmesse le informazioni e come vengono interpretate.
Non tutti i protocolli di comunicazione sono uguali: nel capitolo abbiamo dato solo alcuni esempi non esaustivi dei diversi utilizzi.

Da notare inoltre che i protocolli non sono studiati a tavolino, ma rispecchiano l'evoluzione di diverse esigenze scaturite da problemi reali tecnologici, come per esempio migliorare le performance, la sicurezza o la gestione degli errori.

Pur non essendo uno degli argomenti più gettonati e divertenti, spero che il lettore sia riuscito ad arrivare fino a qui in fondo!
