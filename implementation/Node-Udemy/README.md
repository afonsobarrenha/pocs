# Node-Udemy

## Content

### Getting Started

- Node is NOT a programming language, or a framework. Node is a runtime environment for executing JavaScript code.

- Node has a asynchronous architeture.

- Node is ideal for I/O-intensive apps, data intensive and real time applications. Do not use Node for CPU-intensive apps.

- Paypall numbers:
  - Built twice as fast with fewer people
  - 33% fewer lines of code
  - 40% fewer files
  - 2x request/sec
  - 35% faster response time

### Node Module System

- Every file in a node application is considered a Module. If you want to use a variable or a function defined in a module, outside that module, you need to explicitly export it and make it public.

```
logger.js
  var url = 'http://mylogger.io/log';

  function log(message) {
    //Send an HTTP request
    console.log(message);
  }

  module.exports.log = log;
  module.exports.url = url;

  or

  module.exports = log;

app.js
  const logger = require('./logger');
  logger.log('message');

  or

  logger('message');
```

## Commands

### Node
```
node --version
node app.js
nodemon app.js
export NODE_ENV=development //production
export DEBUG=app:startup,app:db
export DEBUG=app:*
DEBUG=app:* nodemon index.js
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
npm i debug
```

## Links
- [npmjs.com](npmjs.com)