# DirectAdmin Backup Notifier for Zabbix

This script enables monitoring of DirectAdmin's internal backup process using Zabbix. Each time a backup is executed by DirectAdmin, the result (success or failure) is reported to your Zabbix server automatically.

## Features

- Sends success/failure status of DirectAdmin internal backups to Zabbix
- Works with Zabbix Agent (active or passive mode)
- Helps you get notified immediately if backups fail
- Simple integration with existing backup cron jobs

## How It Works

1. The script hooks into the DirectAdmin backup routine (usually via cron or post-backup hook).
2. It checks the result of the backup job.
3. It sends a custom key/status to your Zabbix server using the Zabbix Sender tool or agent.


