# Bash Scripts 

A set of useful Bash scripts for automating common tasks.

## Scripts

- `update-system.sh` – 	Automatically detects the Linux distribution and updates/upgrades packages using the appropriate package manager.

- `system-cleanup.sh` – Automatically detects the Linux distribution and cleans up the system by removing unused packages and cleaning caches.

- `system-info.sh` – Displays detailed system information: hostname, OS, kernel version, uptime, users, memory, CPU, network, and disk usage.

- `sys-health-check.sh` – Performs system health monitoring: shows memory and disk usage, installs/launches htop for real-time monitoring, and displays load averages.

- `backup.sh` – Creates a timestamped compressed backup of a given directory, stores it in `~/backups`, and logs the outcome in a log file.
    - Backups will be saved in:
    ```bash
    ~/backups/backup_YYYY-MM-DD_HH-MM-SS.tar.gz
    ```
    - Logs are stored in::
    ```bash
    ~/backups/backup.log
    ```

##  Usage

1. Clone the repository:

    ```bash
    git clone https://github.com/yourusername/your-repo-name.git
    cd your-repo-name
    ```

2. Make a script executable:

    ```bash
    chmod +x scriptname.sh
    ```

3. Run the script:

    ```bash
    ./scriptname.sh
    ```

    Or with:

    ```bash
    bash scriptname.sh
    ```

## Requirements

- Bash shell
- Any Linux-based operating system

## License

This project is open source and available under the MIT License.
