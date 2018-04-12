FROM java:8
RUN curl -s https://api.github.com/repos/tinapham/XVulB/releases/latest | grep browser_download_url | cut -d '"' -f 4 | wget -O /opt/app.jar -qi -
CMD ["java","-jar","/opt/app.jar"]
