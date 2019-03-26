Setting up the repo http server
===============================

A good "ready-to-use tool" option is node http-server to serve up the rpm repo:  

To install it:  
`npm install http-server -g`  

To use it type in one of the following commands which will return something similar to this output:  
~~~
Starting up http-server, serving /run/media/kpeeples/master/repos   
Available on:   
  http://127.0.0.1:8080   
  http://192.168.1.123:8080   
Hit CTRL-C to stop the server
~~~

[kpeeples@localhost ~]$ sudo npm install ecstatic -g
[kpeeples@localhost ~]$ sudo npm install mime-types -g
[Sun Oct 28 2018 18:18:33 GMT-0400 (EDT)] "GET /Library/content/dist/rhel/server/7/7Server/x86_64/os/repodata/repomd.xml" "urlgrabber/3.10 yum/3.4.3"
/usr/lib/node_modules/ecstatic/lib/ecstatic.js:206
          contentType = mime.lookup(file, defaultType),
                             ^

TypeError: mime.lookup is not a function
    at serve (/usr/lib/node_modules/ecstatic/lib/ecstatic.js:206:30)
    at /usr/lib/node_modules/ecstatic/lib/ecstatic.js:177:11
    at FSReqWrap.oncomplete (fs.js:153:5)

--skip-broken

Example 1:  
~~~
cd D:\Folder  
http-server  
~~~

Example 2:  
`http-server D:\Folder`

Example 3:  
`http-server -a localhost -p 80`

Exmaple 4:
In our case with our repo drive mounted as master:  
`[kpeeples@localhost ~]$ http-server  /run/media/kpeeples/master/repos`

then browse to:   
```http://localhost:8080/```  
(which will give the contents of the repo directory)
