# escape=`

ARG REPO=mcr.microsoft.com/dotnet/framework/aspnet
FROM $REPO:{{PRODUCT_VERSION}}-{{OS_VERSION}}

# Install Windows components required for WCF service hosted on IIS
RUN dism /Online /Quiet /Enable-Feature /All /FeatureName:WCF-HTTP-Activation45 /FeatureName:WCF-TCP-Activation45 /FeatureName:IIS-WebSockets

# Enable net.tcp protocol for default web site on IIS
RUN windows\system32\inetsrv\appcmd.exe set app "Default Web Site/" /enabledProtocols:"http,net.tcp"
EXPOSE 808
