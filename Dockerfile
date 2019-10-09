FROM nanoserver/apache24

# Enable JSON files, that's the whole reason this exists.
WORKDIR C:/Apache24/conf
COPY httpd.conf .
COPY httpd-widgets.conf extra/

WORKDIR C:/Apache24/htdocs

#COPY htaccess .htaccess
#COPY index.html .
#COPY manifest.json .

EXPOSE 80

WORKDIR C:/Apache24

VOLUME "C:/Apache24/widgets"

#ENTRYPOINT ["C:/Apache24/bin/httpd.exe", "-d", "C:/Apache24"]