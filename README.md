# Bash Automation Scripts

A collection of Bash scripts to automate common system and cloud tasks.

---

## 📂 Categories

### 🛠️ System Administration
- [`update-system.sh`](./update-system.sh) – Detects Linux distribution and updates packages using the appropriate package manager.
- [`system-cleanup.sh`](./system-cleanup.sh) – Cleans up system by removing unused packages and caches (distro-aware).
- [`system-info.sh`](./system-info.sh) – Shows system details: hostname, OS, kernel, uptime, users, memory, CPU, network, and disk.
- [`sys-health-check.sh`](./sys-health-check.sh) – Displays memory/disk usage, system load, and launches `htop` for real-time monitoring.

### 🔄 Backup & Restore
- [`backup.sh`](./backup.sh) – Creates timestamped compressed backups of a directory to `~/backups`, with logs.
  - Example backup path:
    ```bash
    ~/backups/backup_YYYY-MM-DD_HH-MM-SS.tar.gz
    ```
  - Log location:
    ```bash
    ~/backups/backup.log
    ```

### ☁️ Azure Cloud Automation
- [`azure_resource_list.sh`](./azure_resource_list.sh) – Lists Azure resources by type using Azure CLI.  
  Supported services: `vm`, `storage`, `db`, `cosmos`, `function`, `disk`, `lb`, `cdn`, `monitor`, `event`, `queue`, `dns`, `network`, `ad`, `rg`.

> ⚠️ Requires Azure CLI and active login (`az login`). Ensure your account has sufficient permissions to list the resources.

---

## 🚀 Usage

1. **Clone the repository:**
    ```bash
    git clone https://github.com/ariefshaik7/bash-scripts.git
    cd bash-scripts
    ```

2. **Make a script executable:**
    ```bash
    chmod +x scriptname.sh
    ```

3. **Run the script:**
    ```bash
    ./scriptname.sh
    ```

---

## 📋 Requirements

- Bash shell
- Linux-based system
- [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli) (for Azure-related scripts)

---

## 📄 License

This project is licensed under the [MIT License](./LICENSE).
