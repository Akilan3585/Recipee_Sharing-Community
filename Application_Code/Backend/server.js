require('dotenv').config();

const express = require('express');
const mongoose = require('mongoose');
const cors = require('cors');

const userRoutes = require('./routes/userRoutes');
const recipeRoutes = require('./routes/recipeRoutes');

const app = express();

// Middleware
app.use(cors());
app.use(express.json());

// MongoDB Connection
const mongoURI = process.env.MONGO_CONN_STR;

mongoose.connect(mongoURI, {
    useNewUrlParser: true,
    useUnifiedTopology: true
})
.then(() => {
    console.log('Connected to MongoDB');
})
.catch((err) => {
    console.error('MongoDB connection error:', err);
});

// Routes
app.use('/api/users', userRoutes);
app.use('/api/recipes', recipeRoutes);

// Health Check Endpoints for Kubernetes
app.get('/healthz', (req, res) => {
    res.status(200).send('OK');
});

app.get('/ready', (req, res) => {
    res.status(200).send('READY');
});

app.get('/started', (req, res) => {
    res.status(200).send('STARTED');
});

// Server Port
const PORT = process.env.PORT || 3500;

app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
