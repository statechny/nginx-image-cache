// backend/server.js

const express = require('express');
const path = require('path');
const app = express();
const PORT = 3000;

// Serve static images from the 'images' directory
app.use('/images', express.static(path.join(__dirname, 'images')));

// Simple endpoint to check server status
app.get('/', (req, res) => {
    res.send('Backend server is running.');
});

// Start the server
app.listen(PORT, () => {
    console.log(`Backend server is running on port ${PORT}`);
});
