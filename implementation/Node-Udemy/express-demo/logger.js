function log (req, res, next) {
    console.log('Logger Middleware logging...');
    next();
}

module.exports = log;