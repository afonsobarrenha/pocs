# Node-Udemy

> ... In Node, we have a single thread to handle all requests. When a request arrives, that single thread is used to handle that request. If we need to query a database, our thread doesn't have to wait for the database to return the data. While the database is executing our query, that thread will be used to serve another client. When the database prepares the result. It puts a message in what we call an event queue. Node is consistently monitoring this queue in the background. When it finds an event in this queue it will take it out and process it. This kind of architecture makes Node ideal for building applications that include a lot of disk or network access. We can serve more clients without the need to throw in more hardware. And that's why Node applications are highly scaleable. In contrast, Node should not be used for CPU-intensive applications like video encoding or an image manipulation service. In these kind of applications, we have a lot of calculations that should be done by CPU, and few operations that touch the file system or the network. Since Node applications are single threaded, when performing the calculations to serve one client, other clients have to wait, and that's why Node should not be used for CPU intensive applications. It should only be used for building data intensive and real time applications.

> ... in Node, every file is a module, and the variables and functions defined and in that file are a scope to that module, they are not available outside of that module.

> Important modules: File System, HTTP, OS, Path, Process, Query String, Stream

> So this is how the require function resolves a module: First, it assumes it's a core module, otherwiseit assumes it's a file or folder, and if not it looks for that module inside of the node modules folder.

> In semantic versioning, the version of a Node package has three components, as you can see here. So three numbers, 4, 13 and 6. The first number is what we call the major version. The second one is what we call the minor version. And the third one is what we call the patch version. Or patch release, which is used for bug fixes.

> Examples of endpoints: http://vidly.com/api/customers or http://api.vidly.com/customers. GET /api/customers/, GET /api/customers/1. PUT /api/customers/1 { name: '' }. DELETE /api/customers/1. POST /api/customers/ { name: 'Customer1' }.

> We have an example of a Middleware function when we call express.json() method. This method returns a function, a Middleware function, and the job of this Middleware function is to read the request, and if there is a JSON object in the body of the request, it will parse the body of the request into a JSON object, and then it will set request.body property.

## Commands

### Node
```
node --version
node app.js
nodemon app.js
export NODE_ENV=development //production
```

### Npm
```
npm -v
npm i -g npm@5.5.1
npm init
npm init --yes
npm install underscore
npm install mongoose
npm install mongoose@2.4.2
npm i # instala todas as dependências do package.json
npm list
npm list --depth=0
npm view mongoose
npm view mongoose dependencies
npm view mongoose versions
npm outdated
npm update
npm i -g npm-check-updates
npm-check-updates -u
npm i -g nodemon --save-dev
npm i helmet //security
npm i morgan // log http requests
npm i config
```

## Links
- [npmjs.com](npmjs.com)