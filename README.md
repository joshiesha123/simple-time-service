# 🕒 Simple Time Service

A minimalist microservice built with Python and Flask that returns the current UTC timestamp and the IP address of the client in JSON format.

This project is designed for containerized deployment and follows best practices for Docker, including running the application as a non-root user.

---

## 📦 Features

- Returns current timestamp and requester IP address.
- Pure JSON response at root `/` endpoint.
- Lightweight Docker image.
- Secure: runs as a non-root user in the container.
- Public DockerHub image for easy pulling.
- Clean and readable code with zero external dependencies.

---

## 📂 Project Structure

```
simple-time-service/  
├── app.py # Main application file  
├── Dockerfile # Docker build configuration  
├── README.md # This documentation  
└── .gitattributes # Git configuration file  

```



---

## 🔧 Tech Stack

- Python 3.x
- Flask (minimal installation)
- Docker

---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/joshiesha123/simple-time-service.git
cd simple-time-service

2. Build the Docker Image

docker build -t esha2208/simple-time-service .
This builds the container image tagged as esha2208/simple-time-service.

3. Run the Docker Container
docker run -p 8080:8080 esha2208/simple-time-service

Access the service at: http://localhost:8080

🔍 Sample Response
When you visit the root endpoint /, the application returns:

{
  "timestamp": "2025-05-18T14:09:49.868487Z",
  "ip": "172.17.0.1"
}


🐳 DockerHub Image
You can pull the public Docker image from DockerHub directly:

docker pull esha2208/simple-time-service:latest

🔗 https://hub.docker.com/r/esha2208/simple-time-service



