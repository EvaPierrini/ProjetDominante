FROM mcr.microsoft.com/dotnet/core/sdk:3.1
COPY . /ProjetDominante
WORKDIR /ProjetDominante
RUN ["dotnet", "restore"]
RUN ["dotnet", "build"]
EXPOSE 80/tcp
RUN chmod +x ./entrypoint.sh
CMD /bin/bash ./entrypoint.sh