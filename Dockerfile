FROM tomcat:9.0-jdk17-temurin

# Delete default Tomcat apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into Tomcat (rename it to ROOT.war)
COPY jobsearch.war /usr/local/tomcat/webapps/ROOT.war

# Expose the default port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]

