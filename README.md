# Bash Nmap Port Scanner

A lightweight Bash automation tool that performs network port scanning using Nmap and saves scan results to timestamped text files.

## Features

- Checks whether Nmap is installed.
- Accepts an IP address or hostname as input.
- Performs service version detection using `nmap -sV`.
- Uses Nmap timing template `-T3` for a moderate scanning speed.
- Automatically creates a directory for scan results.
- Saves output with the target and timestamp in the filename.
- Displays scan output in the terminal while saving it to a file.

## Requirements

- Linux environment
- Bash
- Nmap
- Standard Linux command-line utilities

## Installation

Install Nmap if it is not already installed:

```bash
sudo apt update
sudo apt install nmap
```

Clone this repository:

```bash
git clone https://github.com/YOUR_USERNAME/bash-nmap-port-scanner.git
cd bash-nmap-port-scanner
```

Make the script executable:

```bash
chmod +x nmap_scanner.sh
```

## Usage

Run the script:

```bash
./nmap_scanner.sh
```

Enter an authorized target IP address or hostname when prompted.

## Example

```text
Enter target IP or hostname: 192.168.1.10

NMAP PORT SCANNER
Target: 192.168.1.10
Output: scans/scan_192.168.1.10_2026-10-11_14-00-00.txt
```

The scan results are saved in the `scans/` directory.

## Concepts Demonstrated

- Bash scripting and automation
- Conditional statements and input validation
- Linux file and directory management
- Command-line tool integration
- Network reconnaissance fundamentals
- Service version detection
- Output logging and timestamped filenames

## Disclaimer

This tool is intended for authorized security testing and educational use only. Scan only systems and networks for which you have explicit permission.

## Author

Created as part of my hands-on Linux and cybersecurity learning journey.
