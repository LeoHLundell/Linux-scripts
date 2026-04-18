# Linux Scripts (System & Monitoring)

Detta repository innehåller praktiska Bash-scripts med fokus på Linux drift, övervakning och logghantering i en systemnära miljö.

## Struktur

scripts/
- backup_rotation.sh
- log_rotation.sh
- log_analysis.sh
- watch_failed_logins.sh
- process_monitor.sh

## Scripts

### Backup Rotation
Skapar versionshanterade backuper av kataloger med timestamp och rensar äldre backuper för att spara diskutrymme.

### Log Rotation
Övervakar storleken på loggfiler och roterar dem automatiskt när de överstiger en given gräns.

### Log Analysis
Analyserar systemloggar för att identifiera misslyckade inloggningsförsök.

Exempel:
```bash
grep "Failed password" /var/log/auth.log | wc -l
