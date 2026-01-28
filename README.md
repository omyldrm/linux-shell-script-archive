# linux-shell-script-archive
A simple Bash script that searches a user's home directory for `.sh` files and archives them into a compressed `.tar.gz` file.

This script was created as a learning exercise while studying Linux and Bash
as a first-year Applied Computer Science student.

## What the Script Does
- Searches the user's home directory for shell scripts (`*.sh`)
- Copies found scripts to a temporary directory
- Archives the scripts into a `.tar.gz` file
- Counts and displays the number of archived shell scripts

## Usage
Make the script executable:
`chmod +x archive-shellscripts.sh`

Run the script:
`./archive-shellscripts.sh`

The archive will be created in:
`/tmp/shellscripts.tar.gz`

Technologies Used
  - Bash
  - Linux
  - Core utilities: find, cp, tar, grep, wc

Notes
  - The script uses the $USER environment variable to determine the home directory
  - Temporary files are stored in /tmp
  - This script is intended for educational purposes
