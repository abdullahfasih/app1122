# Use 
FROM ibmcom/websphere-traditional:8.5.5.13-profile

# Set the working directory
WORKDIR /opt/IBM

# Copy the directory contents into the container 
COPY --chown=was:was oracle/* WebSphere/AppServer/oracle/
COPY --chown=was:was mofa-properties/* WebSphere/AppServer/profiles/AppSrv01/mofa-properties/
COPY --chown=was:was moe/config/* WebSphere/AppServer/profiles/AppSrv01/moe/config/
COPY --chown=was:was nativelib/* WebSphere/AppServer/profiles/AppSrv01/nativelib/
COPY --chown=was:was EAR/* EAR/
COPY --chown=was:was deployment/* deployment/



# Make ports 9043 9443 9060 available to the world outside this container
EXPOSE 9043 9443 9060

# Define environment variable
ENV NAME WASPEP

# Run 
#RUN chown was:was -R WebSphere/AppServer/oracle/ WebSphere/AppServer/profiles/AppSrv01/mofa-properties/ WebSphere/AppServer/profiles/AppSrv01/moe/config/ WebSphere/AppServer/profiles/AppSrv01/nativelib/ EAR/ deployment/
RUN mkdir installedApps
RUN chown was:was -R installedApps
#RUN deployment/deploy_apps.sh
