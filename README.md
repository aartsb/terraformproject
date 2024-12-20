# terraformproject
Cloud/Terraform Project: VM Deployment with Policy as Code  

This repository demonstrates the use of Terraform to:  
1. Deploy a Virtual Machine (VM) in Azure using a modular compute configuration.
2. 2.Implement policy-as-code with Azure Policy and Sentinel for governance and compliance.
3. Execute scripts on the deployed VM. **
4. Outputs include deployed VM details and applied policy assignment IDs.

Future Customizations & Improvements

1. Support for Multiple VM Deployments -> Enhance the compute module to support deployment of multiple VMs with different configurations.
2. Custom Policy Definitions -> Extend the policy module to support custom policy definitions and initiatives.
3. Workload Automation -> Add Terraform provisioners or integrations with tools like 'Ansible' to run automated scripts/workloads on the VM post-deployment.
4. Logging and Monitoring -> Integrate Azure Monitor and Log Analytics for operational visibility and governance insights.
5. Security Addition -> Include modules for Azure Key Vault, managed identities, and RBAC.
6. CI/CD Integration -> Add pipelines for automated testing and deployment using Azure DevOps.


--> ** to add a .sh for execute on VM

Testing environ, in a bash file 

az login
terraform-project
terraform init
terraform plan
terraform apply


