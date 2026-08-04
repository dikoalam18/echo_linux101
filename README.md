# echo_linux101

A comprehensive Linux and Bash scripting learning repository designed for beginners and intermediate users. This project provides structured modules covering Ubuntu fundamentals, GitHub workflow, and Bash scripting from basic to advanced topics. Whether you're a complete beginner or looking to strengthen your Linux automation skills, this repository offers a step-by-step learning path with practical exercises and real-world projects.

## 📚 Table of Contents
- [Modules Overview](#-modules-overview)
- [Getting Started](#-getting-started)
- [Repository Structure](#-repository-structure)
- [Bash Script Examples](#-bash-script-examples)
- [Learning Path](#-learning-path)
- [Final Projects](#-final-projects-included)
- [Tools & Technologies](#-tools--technologies)
- [Contributing](#-contributing)
- [Author](#-author)

---

## 📚 Modules Overview

### 1. **Ubuntu Desktop Setup**
Learn how to install and configure Ubuntu Desktop in a virtualized environment using Proxmox VE.

- **Installation Methods:** USB, DVD/CD, Network (PXE), External Drive, and Virtual Machine
- **Proxmox VE Configuration:** VM creation, resource allocation, and network setup
- **Ubuntu Installation:** Step-by-step installation walkthrough with screenshots
- **Post-Installation:** User account creation, time zone configuration, and system verification
- **Basic Operations:** Opening applications, creating folders, and file management
- **System Verification:** Checking OS version, hostname, IP address, and disk space

**Key Skills:**
- Virtual machine management
- Operating system installation
- Basic system administration
- GUI navigation and file management

### 2. **Ubuntu 101**
Master the fundamentals of Ubuntu Linux operating system.

- **Open Source Philosophy:** Understanding the benefits and collaborative nature of open-source software
- **System Architecture:** Kernel, Shell, File System, Utilities, and Package Management
- **File System Structure:** 
  - `/home` - User directories
  - `/etc` - System configuration files
  - `/var` - Logs and variable data
  - `/usr` - Applications and utilities
- **Essential Commands:**
  - Navigation: `pwd`, `ls`, `cd`
  - File Management: `touch`, `cp`, `mv`, `rm`, `ln`
  - Directory Management: `mkdir`, `rmdir`
- **Text Editing:** Nano editor with shortcuts and commands
- **User Management:** Creating, deleting, and managing user accounts
- **Permissions & Ownership:** 
  - Understanding read (4), write (2), execute (1) permissions
  - Changing permissions with `chmod`
  - Changing ownership with `chown`
- **Package Management:** APT commands for installing, updating, and removing software

**Key Skills:**
- Command-line proficiency
- File system navigation
- User and permission management
- Software installation and updates

### 3. **GitHub 101**
Learn version control and collaboration using Git and GitHub with HTTPS authentication.

- **Git Configuration:** Setting up user identity and preferences
- **Authentication:** Personal Access Token (PAT) generation and configuration
- **Credential Management:** Secure credential storage setup
- **Repository Operations:**
  - Cloning existing repositories
  - Removing Git history
  - Initializing new repositories
  - Renaming branches (master to main)
- **Daily Workflow:** 
  - Staging changes with `git add`
  - Committing with `git commit`
  - Pushing to remote with `git push`
- **Repository Management:** Creating independent copies of existing projects
- **Collaboration:** Understanding fetch, pull, and push workflows

**Key Skills:**
- Version control fundamentals
- Repository management
- Git workflow automation
- Collaboration best practices

### 4. **Bash Scripting**
Comprehensive scripting course from fundamentals to advanced automation.

#### **Basics (Topics 1-3)**
- **Echo and Comments:** Output formatting and code documentation
- **Variables:** Declaration, naming conventions, reassignment, and expansion
- **Data Types:** Strings, integers, floats (as strings), and booleans
- **Best Practices:** Variable naming, code organization, and documentation

#### **User Input & Operations (Topics 4-7)**
- **User Input:** Reading input with `read`, data type conversion
- **Arithmetic Operations:** Addition, subtraction, multiplication, division
- **Floating-point Calculations:** Using `bc` for precise decimal operations
- **String Operations:** Concatenation and manipulation techniques
- **Variable Updates:** Shortcut operators (`+=`, `*=`, `-=`, `/=`)
- **Operator Precedence:** Understanding PEMDAS in shell arithmetic

#### **Decision Making (Topics 8-10)**
- **Relational Operations:** Comparing numbers with `-lt`, `-gt`, `-eq`, `-ne`, `-le`, `-ge`
- **Conditional Statements:** 
  - `if` statements for single conditions
  - `if-else` for binary decisions
  - `if-elif-else` for multiple conditions
  - Multiple independent `if` statements vs `if-elif` chains
- **Logical Operations:** 
  - AND (`&&`) for multiple conditions
  - OR (`||`) for alternative conditions
  - NOT (`!`) for negation
- **Real-world Examples:** Age verification, balance checking, login validation

#### **Automation (Topics 11-13)**
- **Arrays:** Creation, indexing, and iteration
- **For Loops:** 
  - Array iteration
  - List processing
  - Brace expansion `{0..9}`
  - C-style syntax `((i=0; i<10; i++))`
- **While Loops:** Condition-based iteration, infinite loops with break
- **Loop Control:** 
  - `break` for early loop termination
  - `continue` for skipping iterations
- **Data Aggregation:** Summing values, counting items, and data analysis

#### **Final Projects**
- **Expense Tracker:** Track and manage personal expenses
- **Login System:** Simple authentication with username/password
- **Traffic Light System:** Simulate traffic control logic
- **Running Balance Calculator:** Interactive financial management
- **Sales Tracker:** Calculate sales from multiple items
- **Sales Tracker v2:** Advanced sales tracking with user-defined item count

**Key Skills:**
- Automation scripting
- Logic implementation
- Data processing
- Interactive applications
- Debugging and troubleshooting

---

## 🚀 Getting Started

### Prerequisites
Before you begin, ensure you have the following:

| Requirement | Description |
|-------------|-------------|
| **GitHub Account** | Required for version control and collaboration |
| **Internet Access** | For downloading packages and cloning repositories |
| **Ubuntu/Linux Environment** | Physical machine, VM, or WSL |
| **Git Installed** | Version 2.20+ recommended |
| **Terminal Familiarity** | Basic command-line navigation skills |
| **Text Editor** | Nano, Vim, VS Code, or any preferred editor |

### Quick Setup

#### 1. Clone the Repository
```bash
git clone https://github.com/dikoalam18/echo_linux101.git
cd echo_linux101
