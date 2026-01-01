# IIS Installation on Application Servers

Each VM hosts a web-based medical application and requires IIS.

## Installation Command
Executed via PowerShell on each VM:

Install-WindowsFeature -name Web-Server -IncludeManagementTools

## Installed Components
- Web Server (IIS)
- Default Document
- Static Content
- Management Tools

After installation, application files were uploaded to:
C:\inetpub\wwwroot