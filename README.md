# Udacity-project-3

It was accessible on http://13.217.108.218:30081/. Now My EC2 instances were X2.large. Hence now EC2 is stopped.
<img width="1003" height="182" alt="URL-OP" src="https://github.com/user-attachments/assets/26072c5c-68c4-4af1-81b4-5a692a0d6d3e" />


# Udacity Project 3: Python Application Containerized with CI/CD using AWS Codebuild and Pushing to ECR & Deployment with Minikube(Single node cluster)

Overview

This project demonstrates a production-style CI/CD deployment pipeline for a containerized Python-based web application using **Docker**, **AWS ECR**, and **Kubernetes (Minikube)**.
The deployment includes a PostgreSQL database, Kubernetes Secrets, ConfigMaps, and Namespaces for modular and secure application structure.

---

Technologies Used

| Tool              | Purpose                                                                 |
|-------------------|-------------------------------------------------------------------------|
| Github            | Remote repository to manage code base                                   |
| Docker            | Containerizes both the application and the database.                    |
| AWS ECR           | Stores container images used for Kubernetes deployments.                |
| Kubernetes        | Manages container orchestration, networking, and scaling.               |
| Minikube          | Runs a local Kubernetes cluster on a single EC2 node.                   |
| kubectl           | CLI for interacting with the Kubernetes API.                            |
| Codebuild & ECR   | CI/CD automation (build, push, deploy) in a real-world setting.         |

---

Worklist

1. Python code with dependencies 
2. Prepared Dockerfile to containerize the application
3. buildspec.yml file for the CI/CD with connection to Github with AWS Cloud and all the stages written to execute build & push docker images.
4. On push event codebuild pipeline trigger and uodate the changes and push image to ECR.
5. Docker image is been utilised in the application YAML with postgres DB
6. Deployed to Minikube with NodePort ingress in order to open app outside.
7. 30081 port is being added into minikube security Group that allowed to open from web browser.
8. Any update in application triggers auto build and create a latest Docker image.

