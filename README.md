Project 3 – Linux Backup & Monitoring System

Automate system backups and monitoring on a Linux server to ensure data protection and proactive maintenance with alerting and log management.

-------------------------------------------------------------------------------------------------------------------------------------------------------------

Why did I start this project?

This project simulates real-world system administration tasks focused on keeping servers healthy, secure, and recoverable. It helped me understand how to automate recurring maintenance jobs like backups, log rotation, and resource monitoring — and how to integrate these tasks with alert notifications and AWS cloud storage.

-------------------------------------------------------------------------------------------------------------------------------------------------------------

Files and Structure

backup.sh: Automates directory backups, compression, and storage to a local backup folder

monitor.sh: Checks system disk usage and sends alerts if usage exceeds a defined threshold

/etc/logrotate.d/project3: Custom log rotation configuration for both backup and monitor logs

crontab: Used to schedule automatic execution of both scripts

screenshots/: Contains proof of configuration, automation testing, and alerts in action

.gitignore: Common ignores

-------------------------------------------------------------------------------------------------------------------------------------------------------------

Architecture and Technologies Overview

Local Machine: AlmaLinux OS

Remote Server: Amazon Linux EC2 Instance

Connection: SSH (Secure Shell)

Storage Integration: Local directory backups + AWS S3 for cloud redundancy

-------------------------------------------------------------------------------------------------------------------------------------------------------------

Skills & Services Used
Linux System Administration (AlmaLinux 9.6 / Amazon Linux)

Filesystem management and backup directory organization

Disk monitoring and alert configuration (mailx)

Log management with logrotate

Job scheduling with cron

Automation with Bash Scripting

File compression with tar

Dynamic log creation and timestamping

Conditional logic for disk usage thresholds

Email notifications using the mail command

AWS Cloud Integration

Sync local backups to AWS S3 using the AWS CLI

Secure cloud storage for disaster recovery

-------------------------------------------------------------------------------------------------------------------------------------------------------------

What I Learned

How to automate maintenance tasks using shell scripts and cron jobs

How to configure alerts to detect system issues early

How to manage logs and prevent disk saturation through log rotation

How to combine on-premise backups with cloud-based storage for redundancy

-------------------------------------------------------------------------------------------------------------------------------------------------------------

Next Steps

Extend monitoring to include memory and CPU usage

Add full backup reports via email summary

Create an Ansible playbook to automate deployment across multiple servers
