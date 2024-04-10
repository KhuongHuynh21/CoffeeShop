const {createHash} = require('crypto');

function hashText(text) {
    const hash = createHash('sha256')
    hash.update(text)
    return hash.digest('base64')
}

console.log('hash,', hashText('Test12345678'))