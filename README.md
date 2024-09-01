# Nginx Image Cache with Purge Functionality

This project sets up an Nginx server that caches images only after they've been requested at least twice. It also provides an endpoint to purge the cache for specific images.

## Project Structure

- `backend/`: Simple Node.js server to serve images.
- `nginx/`: Nginx configuration with Lua scripts for caching logic.
- `docker-compose.yml`: Orchestrates the backend and Nginx services.

## Setup Instructions

1. **Clone the Repository**

   ```bash
   git clone https://github.com/statechny/nginx-image-cache
   cd nginx-image-cache
   ```
   
2. **Add Image**

   Place your image files in the backend/images/ directory.

3. **Build and Run Containers**

   ```bash
   docker-compose up --build
   ```
   
4. **Accessing Images**

    Navigate to http://localhost/images/yourimage.jpg.

5. **Purging Cache**

   ```bash
   curl -X PURGE "http://localhost/purge?file=/images/yourimage.jpg"
   ```
    