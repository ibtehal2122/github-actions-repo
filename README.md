Here is the complete `README.md` file, professionally written in English, clean, and ready to use.

```markdown
# 🚀 Girly App: DevSecOps CI/CD Pipeline

![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Quay.io](https://img.shields.io/badge/Quay.io-D0202F?style=for-the-badge&logo=redhat&logoColor=white)
![Trivy](https://img.shields.io/badge/Trivy-Security-green?style=for-the-badge)
![Checkov](https://img.shields.io/badge/Checkov-IaC-purple?style=for-the-badge)

## 📖 Overview
This project demonstrates a practical implementation of the **DevSecOps** methodology using GitHub Actions. It aims to automate the build, scan, and deployment process of a web application ("Girly App") with a strong focus on security integration at every stage.

The pipeline features a **Self-Hosted Runner** for local deployment and utilizes custom Bash/Python scripts to generate professional, interactive security reports (HTML & PDF).

---

## 🏗️ Architecture
The project follows a comprehensive **Project Life Cycle** as illustrated in the architecture diagram below:

![Project Architecture](./images/architecture-diagram.jpg)

### Key Stages:
1.  **CI (Continuous Integration):** Builds the Docker image and scans it for vulnerabilities using **Trivy**.
2.  **CD (Continuous Deployment):** Deploys the application automatically to a **Self-Hosted Runner** (Localhost).
3.  **Validation Pipeline:** Validates Dockerfiles using **Checkov** upon creating a Pull Request.
4.  **Reporting:** Generates detailed HTML & PDF artifacts for security audits.

---

## 🛠️ Tech Stack

| Technology | Purpose |
| :--- | :--- |
| **GitHub Actions** | Orchestrates the CI/CD pipelines |
| **Docker** | Containerization of the application |
| **Quay.io** | Secure container registry for storing images |
| **Trivy** | Vulnerability scanner for container images |
| **Checkov** | Static code analysis (IaC) for Dockerfiles |
| **Bash & Python** | Custom scripts for report generation |
| **Nginx (Alpine)** | Lightweight web server for the application |

---

## 🚀 Setup & Usage

### 1️⃣ Prerequisites
* GitHub Account & Quay.io Account.
* Docker installed on the local machine.
* A configured **Self-Hosted Runner** on your machine.

### 2️⃣ Secrets Configuration
Add the following credentials to your repository secrets (`Settings > Secrets and variables > Actions`):

| Secret Name | Description |
| :--- | :--- |
| `QUAY_USERNAME` | Your Quay.io username |
| `QUAY_TOKEN` | Your Quay.io encrypted password or robot token |

### 3️⃣ Running the Pipeline
The pipeline triggers automatically on a `push` to the `main` branch.

```bash
git add .
git commit -m "Deploy new version"
git push origin main

```

---

## 🔒 Security & Artifacts

### 🛡️ Trivy Scan (Image Security)

Scans the Docker image for CVEs (Common Vulnerabilities and Exposures). The pipeline will fail if **CRITICAL** vulnerabilities are detected.

* **Output:** `report.html` (uploaded as a pipeline artifact).

### 🛡️ Checkov Scan (Dockerfile Security)

Runs on **Pull Requests** to ensure the Dockerfile follows security best practices.

* **Feature:** Uses a custom script (`generate_report.sh`) to convert JSON output into a **Stylized HTML & PDF Report** containing charts and remediation steps.

---

## 💻 Local Deployment

This project uses a **GitHub Self-Hosted Runner** to deploy the container directly to your local environment.

Once the pipeline completes successfully, access the application at:

> **http://localhost:8080**

---

## 📂 Folder Structure

```
├── .github/
│   ├── workflows/
│   │   ├── ci.yml              # Main Pipeline (Build, Trivy, Deploy)
│   │   └── checkov-scan.yml    # Validation Pipeline (Checkov & Reporting)
│   └── scripts/
│       └── generate_report.sh  # Custom script for HTML/PDF generation
├── Dockerfile                  # Multi-stage build Dockerfile
├── index.html                  # Application source code
└── README.md                   # Project documentation

```

---

<p align="center">
Made with ❤️ by <b>Ebtehal</b> using DevOps Best Practices
</p>

```

```
