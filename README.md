# Linux Scripts (System & Monitoring)

Detta repository innehåller praktiska Bash-scripts med fokus på Linux drift, övervakning och logghantering.

## Scripts

### Backup & Archive
Skapar komprimerade backuper av kataloger med timestamp samt inkluderar failsafe vid avbrott.

### Backup Rotation
Skapar versionshanterade backuper och rensar äldre för att spara diskutrymme.

### Log Rotation
Roterar loggfiler baserat på storlek och skapar nya loggar.

### Log Analysis
Analyserar systemloggar för misslyckade inloggningsförsök.

Exempel:
grep "Failed password" /var/log/auth.log | wc -l

### Failed Login Monitoring
Övervakar loggar i realtid och visar misslyckade inloggningar.

### Process Monitor
Övervakar en process och startar om den automatiskt vid behov.

## Syfte

Bygga praktisk kompetens inom Linux systemadministration, övervakning och incidenthantering.
