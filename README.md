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
├── app/               
│   ├── app.py         # Main application file  
│   └── Dockerfile     # Docker build configuration  
├── README.md          # This documentation  
└── .gitattributes     # Git configuration file  
 

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

docker build -t esha2208/simple-time-service ./app

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



☁️ Infrastructure Deployment with Terraform

This section contains instructions for deploying the Simple Time Service on AWS using ECS Fargate and Terraform.

📁 Terraform Project Structure

terraform/
├── main.tf                # Core infrastructure definition
├── variables.tf           # Input variable definitions
├── terraform.tfvars       # Default values for variables
├── outputs.tf             # Output values for inspection
├── versions.tf            # Provider and Terraform version constraints
├── data.tf            

🔐 AWS Authentication
You must configure AWS credentials before running Terraform. You can do so via:

Environment variables:

export AWS_ACCESS_KEY_ID="your-access-key-id"
export AWS_SECRET_ACCESS_KEY="your-secret-access-key"


🚀 Deploying the Infrastructure

Navigate to the terraform folder:

cd terraform

Initialize Terraform:

terraform init

Preview the infrastructure:

terraform plan

Apply the changes:

terraform apply
This will:

✅ Create a new VPC with public and private subnets
✅ Deploy an ECS cluster with Fargate launch type
✅ Run your Docker container on private subnets
✅ Set up an Application Load Balancer (ALB) in public subnets
✅ Automatically pull the Docker image from DockerHub
✅ Expose your service via the ALB DNS name

⚙️ Step 2: Deploy Application Using GitHub Actions

This project includes a CI/CD pipeline powered by GitHub Actions. The workflow:

Triggers on every push to the main branch

Builds and pushes your Docker image to Docker Hub

Automatically updates the ECS service to use the latest image

📌 Note: Make sure the Terraform infrastructure (Step 1) is successfully deployed before triggering the GitHub Actions workflow. The ECS cluster, ALB, and related resources must already exist for the deployment to succeed.


🧑‍💻 Maintainer
Created by Esha — feel free to fork or open issues!
