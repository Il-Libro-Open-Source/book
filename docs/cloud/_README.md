# Struttura del capitolo
Di seguito si definisce tutto ciò che concerne la stesura e i contenuti della sezione dedicata al Cloud.

## Argomenti
La lista degli argomenti e delle fonti aggiornata è al momento disponibile al [commento in issue #140](https://github.com/Il-Libro-Open-Source/book/issues/140#issuecomment-1769279549).

## Paragrafi

Il capitolo si compone dei seguenti paragrafi

### Il cloud

Si introduce il lettore al tema del cloud, in termini di 
- bisogni soddisfatti
- cenni storici
- evoluzione

### Cloud Native dev
Leggera introduzione sulle peculiarità di sviluppo in cloud, pro (ad esempio: easy deployment) e contro (ad esempio: data privacy)

Anticipazione sintetica dei capitoli successivi
### Scrivere codice in cloud
Si espongono i servizi di code whispering, recommendation, e i Cloud IDE

### Eseguire codice in cloud
Si descrivono i servizi che permettono di creare una infrastruttura adeguata a partire dal solo codice

### Applicazioni distribuite: microservizi e runtimes
Si introduce il concetto di applicazione distribuita, declinata ai container, con accenni di
- architetture a microservizi 
- esecuzione di qualsiasi runtime

### Serverless
Si descrive la programmazione serverless, il concetto di cold start, stateless e stateful

### Esecuzioni non continue
Si descrive la possibilità di deployare infrastrutture ad hoc per quei carichi di lavoro in cui si tiene conto dell'ottimizzazione delle risorse, con riferimento alle modalità di sviluppo per
- batch workloads - enfasi sul parallelismo di esecuzione
- one-time workloads - enfasi sull'esecuzione in best effort e checkpoint in esecuzione
- test/poc - enfasi sulla possibilità di creare ambienti isolati per test/sperimentazione

### Machine Learning
Si espongono i servizi che usano modelli di machine learning, con riferimento all'accessibilità tramite API

### Autenticazione e Single-Sign-On
In ambito di sviluppo sia Web, sia Corporate, con l'offload dell'autenticazione al cloud

### Supporto al ciclo di vita delle applicazioni
Con riferimento ai servizi di patching delle dipendenze, per applicazioni in VM e Container Images

### Gaming, robotics 
 accenni ai servizi specifici per settore (gaming, robotics)