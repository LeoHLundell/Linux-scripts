# Script Explanations

## Backup Script

### Vad
Tar en katalog som input och skapar en komprimerad backup.

### Hur
Använder tar för att arkivera och komprimera filer samt timestamp för att undvika att skriva över gamla backuper.

### Varför
Backup är en central del i systemadministration för att säkerställa data och återställning vid fel.

---

## Log Cleanup Script

### Vad
Identifierar stora loggfiler, arkiverar och komprimerar dem.

### Hur
Använder find för att hitta filer, gzip för komprimering och skapar nya loggfiler.

### Varför
Logghantering är viktigt för att undvika att system fylls upp och för att kunna analysera historik.

---

## Process Monitor Script

### Vad
Övervakar en process och startar om den om den inte körs.

### Hur
Använder pgrep för att kontrollera processen och startar om vid behov.

### Varför
Processövervakning används i driftmiljöer för att säkerställa hög tillgänglighet.
