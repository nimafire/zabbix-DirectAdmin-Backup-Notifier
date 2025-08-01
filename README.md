# DirectAdmin Backup Notifier for Zabbix

This script enables monitoring of DirectAdmin's internal backup process using Zabbix. Each time a backup is executed by DirectAdmin, the result (success or failure) is reported to your Zabbix server automatically.

## features

- Sends success/failure status of DirectAdmin internal backups to Zabbix
- Works with Zabbix Agent (active or passive mode)
- Helps you get notified immediately if backups fail
- Simple integration with existing backup cron jobs

## how It Works

1. The script hooks into the DirectAdmin backup routine (usually via cron or post-backup hook).
2. It checks the result of the backup job.
3. It sends a custom key/status to your Zabbix server using the Zabbix Sender tool or agent.

## installation
put the sh file into /usr/local/directadmin/scripts/custom/ folder.

Open the script and **set the IP address of your Zabbix server** and your **custom key for the Zabbix item**.

Run the following commands to apply correct permissions:
chmod +x /usr/local/directadmin/scripts/custom/all_backups_post.sh
chown diradmin.diradmin /usr/local/directadmin/scripts/custom/all_backups_post.sh
