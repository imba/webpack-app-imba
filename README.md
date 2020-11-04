# Hello World Imba

Tiny template for Imba using webpack & webpack-dev-server

## Getting started

```
git clone https://github.com/imba/webpack-app-imba
cd webpack-app-imba
npm install
```

You can run the app in two ways, either served via the webpack-dev-server or
Express.

### Webpack

```bash
npm start
# Go to url logged out by devserver
# usually "Project is running at http://localhost:8080/"
```

### Server side

First make sure you have built or are watching the client
```bash
npm run watch
```
Then in another tab / session
```bash
npm run express
```