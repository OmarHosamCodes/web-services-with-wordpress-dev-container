# Web Services With WordPress Inside a Dev Container

**Description**  
This repository sets up a Docker-based development environment for WordPress, integrated with various apps and web services. It uses VS Code dev containers for consistency and efficiency. The setup supports multiple operating systems including Windows, Linux (various distributions), and macOS.

**Repository Link**: [web-services-with-wordpress-dev-container](https://github.com/OmarHosamCodes/web-services-with-wordpress-dev-container)

## Table of Contents

1. [Prerequisites](#prerequisites)
2. [Setup and Installation](#setup-and-installation)
    - [Windows Setup](#windows-setup)
    - [Linux Setup](#linux-setup)
      - [Ubuntu/Debian](#ubuntudebian)
      - [Fedora/CentOS/RHEL](#fedoracentosrhel)
      - [Arch Linux](#arch-linux)
    - [Mac Setup](#mac-setup)
3. [Running the Application](#running-the-application)
4. [Adding or Editing Services](#adding-or-editing-services)
5. [Required VS Code Extensions](#required-vs-code-extensions)
6. [Contributing](#contributing)
7. [License](#license)

---

## Prerequisites

- **Docker** ([Download](https://www.docker.com/get-started))
- **Visual Studio Code** ([Download](https://code.visualstudio.com/))

## Setup and Installation

### Windows Setup

1. **Install Docker Desktop for Windows**  
   Download Docker from [here](https://www.docker.com/products/docker-desktop).

2. **Install VS Code**  
   Download Visual Studio Code from [here](https://code.visualstudio.com/Download).

3. **Install WSL 2 (Windows Subsystem for Linux)**  
   Follow [this guide](https://learn.microsoft.com/en-us/windows/wsl/install) to install and configure WSL 2.

4. **Install the Required Extensions in VS Code**
   ```bash
   code --install-extension ms-vscode-remote.remote-containers
   ```
   Open VS Code, go to the Extensions panel, and install the necessary extensions listed under [Required VS Code Extensions](#required-vs-code-extensions).

### Linux Setup

#### Ubuntu/Debian

1. **Install Docker**
   ```bash
   sudo apt update
   sudo apt install docker.io
   sudo systemctl start docker
   sudo systemctl enable docker
   ```

2. **Install VS Code**
   Download the `.deb` package from [here](https://code.visualstudio.com/Download) and install it:
   ```bash
   sudo dpkg -i <path_to_vscode_package.deb>
   sudo apt-get install -f  # Fix dependencies if needed
   ```

3. **Install Required VS Code Extensions**
   ```bash
   code --install-extension ms-vscode-remote.remote-containers
   ```

#### Fedora/CentOS/RHEL

1. **Install Docker**
   ```bash
   sudo dnf install docker
   sudo systemctl start docker
   sudo systemctl enable docker
   ```

2. **Install VS Code**
   Download the `.rpm` package from [here](https://code.visualstudio.com/Download) and install it:
   ```bash
   sudo rpm -i <path_to_vscode_package.rpm>
   ```

3. **Install Required VS Code Extensions**
   ```bash
   code --install-extension ms-vscode-remote.remote-containers
   ```

#### Arch Linux

1. **Install Docker**
   ```bash
   sudo pacman -S docker
   sudo systemctl start docker
   sudo systemctl enable docker
   ```

2. **Install VS Code**
   Install `code` via the AUR using your preferred AUR helper, e.g. `yay`:
   ```bash
   yay -S visual-studio-code-bin
   ```

3. **Install Required VS Code Extensions**
   ```bash
   code --install-extension ms-vscode-remote.remote-containers
   ```

### Mac Setup

1. **Install Docker Desktop for Mac**  
   Download Docker from [here](https://www.docker.com/products/docker-desktop).

2. **Install VS Code**  
   Download and install VS Code from [here](https://code.visualstudio.com/Download).

3. **Install Required VS Code Extensions**
   ```bash
   code --install-extension ms-vscode-remote.remote-containers
   ```

---

## Running the Application

1. **Make Directory for the Project**
   ```bash
   mkdir .devcontainer
   cd .devcontainer
   ```

2. **Clone the Repository**
   ```bash
   git clone https://github.com/OmarHosamCodes/web-services-with-wordpress-dev-container.git
   cd web-services-with-wordpress-dev-container
   ```

3. **Copy all the files from the cloned repository to the `.devcontainer` directory.**
```bash
cp -r ./* ../
```

4. **Open the Repository in VS Code with Dev Containers**
   - Open VS Code and load the folder containing the repository.
   - Use the command palette (`Ctrl+Shift+P`), search for "Remote-Containers: Reopen in Container," and select it.  
   This will build the dev container based on the `devcontainer.json` and `docker-compose.yml` files.

5. **Access Services**
   - WordPress: [http://localhost:8082](http://localhost:8082)
   - phpMyAdmin: [http://localhost:8081](http://localhost:8081)
   - any other services you add to the `docker-compose.yml` file will be accessible at `http://localhost:<port>`

---

## Adding or Editing Services

### Modifying Existing Services

1. Open `docker-compose.yml` to modify existing services or add new ones.
   
2. Example of adding a new service:
   ```yaml
   newservice:
     image: newservice:latest
     ports:
       - "5000:5000"
     environment:
       ENV_VAR_NAME: value
     networks:
       - app_net
   ```

3. **Exposing Ports:**  
   To expose more ports, add mappings under `ports`.

4. **Volumes:**  
   Use volume mappings to persist data or link local directories to services.

---

## Contributing

1. **Fork the repository**  
   Click "Fork" at the top-right of this repository page to create a copy under your GitHub account.

2. **Create a branch**  
   Create a new branch for your feature or bug fix:
   ```bash
   git checkout -b feature-branch
   ```

3. **Make Changes**  
   Make your changes inside the dev container environment in VS Code.

4. **Test Changes**  
   Ensure the app works correctly with:
   ```bash
   docker-compose up --build
   ```

5. **Submit a Pull Request**  
   Push your branch and open a pull request for review:
   ```bash
   git push origin feature-branch
   ```

---

## License

This project is licensed under the MIT License.
