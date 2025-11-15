<img width="1822" height="980" alt="image" src="https://github.com/user-attachments/assets/dfdb6640-6a95-4e44-965e-c18d5e0525c8" />
<img width="1893" height="857" alt="image" src="https://github.com/user-attachments/assets/993fc1fe-2268-4ae7-83e9-73bb74c9abdf" />


Confguring AWS CLI:
Install and update the AWS CLI version 1 using the MSI installer
Check the Releases page on GitHub to see when the latest version was released. When updates are released, you must repeat the installation process to get the latest version of the AWS CLI version 1.

Download the appropriate MSI installer:

AWS CLI MSI installer for Windows (64-bit): https://s3.amazonaws.com/aws-cli/AWSCLI64PY3.msi

AWS CLI MSI installer for Windows (32-bit): https://s3.amazonaws.com/aws-cli/AWSCLI32PY3.msi

AWS CLI combined setup file for Windows: https://s3.amazonaws.com/aws-cli/AWSCLISetup.exe (includes both the 32-bit and 64-bit MSI installers, and automatically installs the correct version)

Run the downloaded MSI installer or the setup file.

Follow the on-screen instructions. By default, the AWS CLI version 1 installs to C:\Program Files\Amazon\AWSCLI (64-bit version) or C:\Program Files (x86)\Amazon\AWSCLI (32-bit version).

To confirm the installation, use the aws --version command at a command prompt (open the Start menu and search for cmd to start a command prompt).


C:\> aws --version
aws-cli/1.40.41 Python/3.11.6 Windows/10 botocore/1.18.6
<img width="868" height="266" alt="image" src="https://github.com/user-attachments/assets/22110e9a-c6de-4e9f-a32e-330c5e244d22" />

