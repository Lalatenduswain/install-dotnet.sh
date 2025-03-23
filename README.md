# install-dotnet.sh

## Table of Contents
- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Additional Testing and Setup](#additional-testing-and-setup)
- [Crontab Setup](#crontab-setup)
- [License](#license)
- [Support & Contact](#support--contact)
- [Donations](#donations)
- [Disclaimer](#disclaimer)

## Overview
The `install-dotnet.sh` script automates the installation of the .NET SDK on Debian-based and RPM-based Linux distributions. The script allows the user to choose between installing the .NET SDK via APT/DNF/YUM or Snap.

## Prerequisites
- The user must have `sudo` privileges to install the necessary packages.
- Internet connection is required to download the necessary dependencies.
- Ensure `wget` and `lsb_release` are installed for Debian-based systems.
- No end-user license agreements (EULA) were detected in the installation process. If any are required, modifications may be necessary.

## Installation
```bash
chmod +x install-dotnet.sh
./install-dotnet.sh
```
The script will prompt you to choose an installation method and proceed with the appropriate package installation.

## Usage
1. Run the script.
2. Select the installation method:
   - Option 1: Install via APT/DNF/YUM (Recommended)
   - Option 2: Install via Snap
3. The script will proceed with the installation based on your selection.
4. After installation, verify using:
   ```bash
   dotnet --version
   ```

## Additional Testing and Setup
- After installation, restart the terminal to ensure environment variables are updated.
- If installed via Snap, ensure the `dotnet` alias is properly set up using:
   ```bash
   sudo snap alias dotnet-sdk.dotnet dotnet
   ```

## Crontab Setup
Crontab is **not required** for this script since it is a one-time installation script.

## License
MIT License

```
MIT License
Copyright (c) 2021-2025

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

## Support & Contact
- **GitHub Repository**: [Lalatenduswain/install-dotnet](https://github.com/Lalatenduswain/install-dotnet)
- **Issues**: [Report an issue](https://github.com/Lalatenduswain/install-dotnet/issues)
- **Website**: [https://blog.lalatendu.info/](https://blog.lalatendu.info/)

## Donations
If you find this script useful and want to show your appreciation, you can donate via [Buy Me a Coffee](https://www.buymeacoffee.com/lalatendu.swain).

## Disclaimer
**Author: Lalatendu Swain** | [GitHub](https://github.com/Lalatenduswain/) | [Website](https://blog.lalatendu.info/)

This script is provided "as-is" and may need modifications or updates to suit your specific environment and requirements. Use it at your own discretion. The authors of the script disclaim any responsibility for damages or issues resulting from its use.

If you like this script, please give it a ⭐ on GitHub!
