Event-Driven Infrastructure Automation using Terraform & GitHub Actions

🚀 Overview

This project demonstrates how to automate cloud infrastructure using Terraform and GitHub Actions in an event-driven approach.

The infrastructure is triggered based on GitHub Pull Request events:

- When a PR is opened → EC2 instance is automatically created
- When a PR is closed → EC2 instance is automatically destroyed

This ensures efficient resource usage and avoids unnecessary cloud costs.

---

🏗️ Architecture

The workflow follows this pipeline:

Developer → GitHub Repository → GitHub Actions → Terraform → AWS

- Terraform provisions infrastructure
- AWS S3 stores Terraform state file
- DynamoDB is used for state locking to prevent conflicts

---

⚙️ Technologies Used

- Terraform (Infrastructure as Code)
- AWS (EC2, S3, DynamoDB)
- GitHub Actions (CI/CD automation)

---

🔁 Workflow Explanation

PR Open

- GitHub Actions triggers Terraform
- Terraform runs "apply"
- EC2 instance is created automatically

PR Close

- GitHub Actions triggers Terraform
- Terraform runs "destroy"
- EC2 instance is terminated

---

🔐 Backend Configuration

- S3 Bucket → Stores Terraform state file
- DynamoDB → Handles state locking

This ensures safe and consistent infrastructure updates.

---

📂 Project Structure

.
├── .github/workflows      # GitHub Actions pipeline
├── main.tf                # Main infrastructure code
├── variables.tf           # Input variables
├── output.tf              # Output values
├── backend.tf             # Remote backend config (S3 + DynamoDB)
├── architecture-diagram.png
└── screenshots/           # Execution screenshots

---

▶️ How to Run

1. Configure AWS credentials
2. Initialize Terraform:
   terraform init
3. Create a Pull Request → Infrastructure will be created
4. Close the Pull Request → Infrastructure will be destroyed

---

📸 Screenshots

Refer to the "screenshots/" folder for execution proof.

---

💡 Key Learnings

- Automated infrastructure using Terraform
- Implemented CI/CD using GitHub Actions
- Used remote backend (S3 + DynamoDB)
- Event-driven deployment strategy
- Cost optimization using PR-based lifecycle

---

📌 Conclusion

This project showcases a practical implementation of DevOps principles by combining Infrastructure as Code and CI/CD automation.

---

👨‍💻 Author

Moses A
