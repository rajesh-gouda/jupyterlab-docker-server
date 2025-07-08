# 📒 JupyterLab Docker Server

A clean, minimal, and customizable setup to run JupyterLab in a Docker container. This version is based on a custom image hosted on AWS ECR and includes volume mounting for persistent notebooks.

---

## 🚀 Features

- JupyterLab pre-installed via Docker
- Custom base image from AWS ECR
- Mounted `workspace/` folder for saving notebooks
- No token/password login (optional)
- Easy to run, portable, and cross-platform

---

## 📁 Project Structure

jupyterlab-docker-server/
├── Dockerfile
├── requirements.txt # Optional: install additional Python packages
├── run.ps1 # PowerShell script to run container on Windows
├── workspace/ # Mounted directory for your .ipynb files
└── README.md

---

## 🔧 Prerequisites

- Docker installed and running on your system  
- Logged in to AWS ECR:
  
```bash
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 050752637092.dkr.ecr.us-east-1.amazonaws.com
```


## 🛠️ Build & Run (Windows)
1. Clone the repo
```bash
git clone https://github.com/rajesh-gouda/jupyterlab-docker-server.git
cd jupyterlab-docker-server
```
2. Build the Docker image
```bash
docker build -t custom-jupyter .
```
3. Run the container (PowerShell)
```bash
docker run -d -p 8888:8888 -v ${PWD}\workspace:/workspace --name jupyterlab custom-jupyter
```