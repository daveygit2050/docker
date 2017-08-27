FROM centos

# Install .NET Core 2.0.0
RUN yum -y install libunwind libicu
RUN curl -sSL -o dotnet.tar.gz https://aka.ms/dotnet-sdk-2.0.0-linux-x64
RUN mkdir -p /dotnet && tar zxf dotnet.tar.gz -C /dotnet
RUN export PATH=$PATH:$HOME/dotnet

# Copy the application
RUN mkdir todoapi
COPY todoapi /todoapi/

# Start the application on boot and expose port 5000
EXPOSE 5000
CMD /dotnet/dotnet /todoapi/todoapi.dll
