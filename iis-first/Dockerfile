FROM nanoserver/iis

RUN echo "Er, hello?" > C:\inetpub\wwwroot\index.html

ADD Wait-Service.ps1 /Wait-Service.ps1

CMD powershell.exe -file c:\Wait-Service.ps1 -ServiceName W3SVC -AllowServiceRestart
