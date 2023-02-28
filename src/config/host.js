const typeorm = require('typeorm');
require('dotenv').config({ path: './.env' });

const db = new typeorm.DataSource({
    type: 'mysql',
    host: process.env.DB_HOST,
    port: process.env.DB_PORT,
    database: process.env.DB_NAME,
    username: process.env.DB_USERNAME,
    password: process.env.DB_PASSWORD,
    logging: true,
    synchronize: false
});

db.initialize().then(() => {
    console.log(`Database has initialized`);
}).catch((err) => {
    console.error(`Database connection error`, err);
})

module.exports = db;