README.md
# User Creation Script

## Overview
This repository contains two Bash scripts designed to manage user creation and data storage on a Linux system. The scripts work together to collect user information and create new system users with randomly generated passwords, storing the data in a CSV file.

## Scripts

### 1. `info.sh`
- **Purpose**: Collects user input and stores it for use by `user.sh`.
- **Functionality**:
  - Prompts the user to enter their username and full name.
  - Asks for confirmation of the entered information.
  - Stores the data in a variable and appends it to `employee.csv` upon confirmation.
  - Includes a 5-second delay and retry option if the user declines the input.

### 2. `user.sh`
- **Purpose**: Creates a new system user based on the data collected by `info.sh` and generates a random password.
- **Functionality**:
  - Checks for root privileges.
  - Verifies the existence of an `employee.csv` file.
  - Reads user data from `employee.csv`.
  - Generates a random password using `openssl`.
  - Adds the user to the system and updates the `employee.csv` file with user details.
  - Provides feedback on the user creation process.

## Prerequisites
- A Linux-based operating system.
- Root or sudo privileges to run `user.sh`.
- `openssl` installed for password generation.
- Basic Bash environment.

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/Mego205/user-creation-script.git
Navigate to the project directory:
cd user-creation-script
Ensure executable permissions:
chmod +x info.sh user.sh
Usage
Run info.sh to enter user details:
./info.sh
Follow the prompts to input username and full name, then confirm.
Run user.sh to create the user:
sudo ./user.sh
Ensure the employee.csv file is accessible or created by info.sh.
File Structure
info.sh: Script for data collection.
user.sh: Main script for user creation.
employee.csv: Output file storing user data (username, full name, password).
Contributing
Feel free to fork this repository and submit pull requests. Please ensure any changes are tested and documented.
License
This project is licensed under the MIT License - see the LICENSE file for details.
Contact
For questions or support, please open an issue on GitHub or contact [abdelmajeedmahmoud834@gmail.com
/Mego205].
