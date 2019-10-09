This is a web server for hosting ArcGIS Web AppBuilder widgets.

It runs on Docker for Windows.

docker pull nanoserver/apache24

docker build -t brian32768/widget-server .

docker volume create widgets

docker run -it -v C:\Users\brian\source\docker\docker-widget-server\widgets:c:\apache24\widgets --name=apache -p 80:80 brian32768/widget-server

docker exec -it apache cmd

See also http://httpd.apache.org/docs/2.4/platform/windows.html