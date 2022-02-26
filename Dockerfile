FROM mcr.microsoft.com/powershell:alpine-3.14
WORKDIR /app
COPY . /app
CMD [ "pwsh", "script.ps1"]
