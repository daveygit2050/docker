# Start with the latest base CentOS image
FROM centos

# Install mono-complete, required by Nuget
RUN yum install -y mono-complete

# 

# Old Windows bits for reference

# Copy Java
#RUN powershell New-Item c:\Java\ -Type Directory
#COPY Java C:/Java/
#COPY jdk-8u144-windows-x64.exe c:/
#RUN powershell Start-Process -FilePath C:\jdk-8u144-windows-x64.exe -PassThru -ArgumentList "/s installdir=C:\Java" -Wait
#RUN del c:\jdk-8u144-windows-x64.exe

# Create Bamboo directories
#RUN powershell New-Item c:\bamboo-agent\home\ -Type Directory

# Copy the remote agent jar file
#COPY atlassian-bamboo-agent-installer-6.1.1.jar c:/bamboo-agent/

# Set env variables (which are necessary?)
#set-item -path env:JAVA_HOME -value "C:\Java\"
#set-item -path env:JAVA_JDK -value "C:\Java\"
#set-item -path env:JAVA_JRE -value "C:\Java\"

# Update PATH env variable
#set-item -path env:PATH -value ($env:PATH + "C:\Java\bin\")

# Launch the remote agent
#CMD powershell Start-Process -FilePath java.exe -ArgumentList '-Dbamboo.home=C:\\bamboo-agent\\home\\ -jar c:\\bamboo-agent\\atlassian-bamboo-agent-installer-6.1.1.jar http://bamboo.randall.int:8085' -Wait
