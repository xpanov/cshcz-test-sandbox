

## **How to Use**
1. **Initialize Terraform**  
   ```sh
   terraform init
   ```
2. **Validate the Configuration**  
   ```sh
   terraform validate
   ```
3. **Preview the Plan**  
   ```sh
   terraform plan
   ```
4. **Apply the Changes (Deploy Infrastructure)**  
   ```sh
   terraform apply -auto-approve
   ```
5. **Destroy Resources (Cleanup)**  
   ```sh
   terraform destroy -auto-approve
   ```


## Terraform: 

Yes, it is possible to write a simple **`terraform.tf`** file that does not require any **AWS credentials** by using Terraform’s **local provider**. This allows you to test Terraform syntax and logic without interacting with a cloud provider.  

---

### **Option 1: Using Local Backend (No Credentials Required)**
```hcl
terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

provider "local" {}

resource "local_file" "test_file" {
  filename = "test.txt"
  content  = "Hello, Terraform!"
}
```
#### **How to Test**
1. **Initialize Terraform**  
   ```sh
   terraform init
   ```
2. **Plan the Execution**  
   ```sh
   terraform plan
   ```
3. **Apply the Changes (Creates `test.txt`)**  
   ```sh
   terraform apply -auto-approve
   ```
4. **Check the Created File**
   ```sh
   cat test.txt
   ```
5. **Destroy Resources (Cleanup)**
   ```sh
   terraform destroy -auto-approve
   ```

---

### **Option 2: Using Terraform Null Provider (No Real Infrastructure)**
Another way to test Terraform without credentials is using the **null provider**, which lets you define infrastructure without affecting any real system.
```hcl
terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}

provider "null" {}

resource "null_resource" "test" {
  provisioner "local-exec" {
    command = "echo 'Terraform Test Completed'"
  }
}
```

#### **How to Test**
Run the same `terraform init`, `terraform apply`, and `terraform destroy` commands.

---


## Notes

* Do we really need 'destroy'?
* Which one to use?
   * hashicorp/setup-terraform
   * opentofu/setup-opentofu
* What is 'show outputs'?


* find out about terraform registry in GH
