function log (req, res, next) {
    console.log('Custom Middleware logging...');
    next();
}

module.exports = log;