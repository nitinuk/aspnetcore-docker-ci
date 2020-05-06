
FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build

#FROM mcr.microsoft.com/dotnet/core/sdk
LABEL author="Hari Krishna"

#ARG BUILD_CONFIGURATION=Debug
#ENV ASPNETCORE_ENVIRONMENT=Development

ENV DOTNET_USE_POLLING_FILE_WATCHER=1
ENV ASPNETCORE_URLS=http://+:5000



WORKDIR /app
COPY . .
EXPOSE 5000
#ENTRYPOINT [ "dotnet", "watch", "run", "restore", "--urls", "https://0.0.0.0:5000"]
CMD ["/bin/bash","-c"," dotnet clean && dotnet restore && dotnet run"]

#docker build -t hhhkkk/finaltesttorunaspnetcoreapp:1.0  .
# docker run -it -p 5000:8080 -v "$(pwd):/app" -w /app hhhkkk/finaltesttorunaspnetcoreapp:1.0 /bin/bash


#Find the ip addess for runing container
#docker inspect -f "{{ .NetworkSettings.IPAddress }}" <containerNameOrId>
