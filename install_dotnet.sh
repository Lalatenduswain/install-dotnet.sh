#!/bin/bash

# Function to detect OS type
detect_os() {
    if [[ -f /etc/debian_version ]]; then
        echo "debian"
    elif [[ -f /etc/redhat-release ]]; then
        echo "rpm"
    else
        echo "unknown"
    fi
}

# Function to install .NET SDK via APT (Debian-based)
install_dotnet_apt() {
    echo "Installing .NET SDK using APT..."
    wget https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
    sudo dpkg -i packages-microsoft-prod.deb
    sudo apt-get update
    sudo apt-get install -y dotnet-sdk-8.0
    rm -f packages-microsoft-prod.deb
}

# Function to install .NET SDK via DNF/YUM (RHEL-based)
install_dotnet_rpm() {
    echo "Installing .NET SDK using DNF/YUM..."
    sudo dnf install -y dotnet-sdk-8.0 || sudo yum install -y dotnet-sdk-8.0
}

# Function to install .NET SDK via Snap
install_dotnet_snap() {
    echo "Installing .NET SDK using Snap..."
    sudo snap install dotnet-sdk --classic
    echo "Enabling .NET SDK commands..."
    sudo snap alias dotnet-sdk.dotnet dotnet
}

# Main script execution
OS_TYPE=$(detect_os)

if [[ "$OS_TYPE" == "unknown" ]]; then
    echo "Unsupported OS. Exiting..."
    exit 1
fi

echo "Your system is detected as: $OS_TYPE"

# Ask user for installation method
echo "Choose installation method for .NET SDK:"
echo "1) Install via APT/DNF (Recommended)"
echo "2) Install via Snap"
read -p "Enter your choice (1/2): " CHOICE

case "$CHOICE" in
    1)
        if [[ "$OS_TYPE" == "debian" ]]; then
            install_dotnet_apt
        elif [[ "$OS_TYPE" == "rpm" ]]; then
            install_dotnet_rpm
        fi
        ;;
    2)
        install_dotnet_snap
        ;;
    *)
        echo "Invalid choice. Exiting..."
        exit 1
        ;;
esac

echo ".NET SDK installation complete!"
dotnet --version
