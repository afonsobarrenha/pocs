# Node-Udemy

> ... In Node, we have a single thread to handle all requests. When a request arrives, that single thread is used to handle that request. If we need to query a database, our thread doesn't have to wait for the database to return the data. While the database is executing our query, that thread will be used to serve another client. When the database prepares the result. It puts a message in what we call an event queue. Node is consistently monitoring this queue in the background. When it finds an event in this queue it will take it out and process it. This kind of architecture makes Node ideal for building applications that include a lot of disk or network access. We can serve more clients without the need to throw in more hardware. And that's why Node applications are highly scaleable. In contrast, Node should not be used for CPU-intensive applications like video encoding or an image manipulation service. In these kind of applications, we have a lot of calculations that should be done by CPU, and few operations that touch the file system or the network. Since Node applications are single threaded, when performing the calculations to serve one client, other clients have to wait, and that's why Node should not be used for CPU intensive applications. It should only be used for building data intensive and real time applications.

> ... in Node, every file is a module, and the variables and functions defined and in that file are a scope to that module, they are not available outside of that module.

> Important modules: File System, HTTP, OS, Path, Process, Query String, Stream

## Commands
```
node --version
node app.js
```