# Bash Automation Scripts

A collection of Bash scripts to automate common system and cloud tasks.

## Scripts

- `update-system.sh` – Detects Linux distribution and updates packages using the appropriate package manager.
- `system-cleanup.sh` – Cleans up system by removing unused packages and caches (distro-aware).
- `system-info.sh` – Shows system details: hostname, OS, kernel, uptime, users, memory, CPU, network, and disk.
- `sys-health-check.sh` – Displays memory/disk usage, system load, and launches `htop` for real-time monitoring.
- `backup.sh` – Creates timestamped compressed backups of a directory to `~/backups`, with logs.
  - Example backup path:
    ```bash
    ~/backups/backup_YYYY-MM-DD_HH-MM-SS.tar.gz
    ```
  - Log location:
    ```bash
    ~/backups/backup.log
    ```
- `azure-resource-report.sh` – Lists Azure resources by type using Azure CLI.
  - Supported services: `vm`, `storage`, `function`, `disk`, `db`, `cosmosdb`, `lb`, `appgw`, `cdn`, `frontdoor`, `monitor`, `eventgrid`, `queue`, `servicebus`, `dns`, `network`, `ad`
  - Requires Azure CLI and login via `az login`.

## Usage

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

## Requirements

- Bash shell
- Linux-based system
- [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli) (for Azure-related scripts)

## License

This project is licensed under the MIT License.
