FROM microsoft/dotnet:1.1.1-sdk

ENV PORT 80

WORKDIR /app

# copy csproj and restore as distinct layers
COPY dotnetapp.csproj .
RUN dotnet restore

# copy and build everything else
COPY . .
RUN dotnet publish -c Release -o out

CMD ["dotnet", "out/dotnetapp.dll"]

