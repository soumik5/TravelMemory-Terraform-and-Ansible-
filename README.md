# Deploying steps of Terraform 

## Creates the AWS infrastructure via Terraform.

### To Run terraform connect WSL to verify that your local environment is ready.

<img width="1457" height="660" alt="image" src="https://github.com/user-attachments/assets/d98076e7-47b9-487b-af38-9b2ee137a974" />

## Part 1: Infrastructure Setup with Terraform 
### 1. AWS Setup and Terraform Initialization:
- Configure AWS CLI and authenticate with your AWS account.
<img width="1325" height="300" alt="image" src="https://github.com/user-attachments/assets/086a997b-db88-4a6a-8273-6969a9b16458" />

- Initialize a new Terraform project targeting AWS.
<img width="1182" height="482" alt="image" src="https://github.com/user-attachments/assets/34f8e7a9-d0c5-4e86-95dd-8e618057a0f7" />
<img width="1157" height="750" alt="image" src="https://github.com/user-attachments/assets/75cee504-a1a1-448a-b7d5-5b406ff3740b" />


### 2. VPC and Network Configuration: 
- Create an AWS VPC with two subnets: one public and one private.
<img width="1177" height="382" alt="image" src="https://github.com/user-attachments/assets/33e25fdf-c553-41da-bec4-52645731fad1" />
<img width="1535" height="997" alt="image" src="https://github.com/user-attachments/assets/b4f9ca63-1e6b-4b54-ac42-1a1a03b3f5ec" />
<img width="1545" height="975" alt="image" src="https://github.com/user-attachments/assets/2bfe0a0e-95c3-4fe9-8595-b72bd5270b48" />

- Create public and one private subnets:
<img width="1096" height="467" alt="image" src="https://github.com/user-attachments/assets/59e9cf2c-3abe-425f-ac24-5cf79e2e0c46" />
<img width="1305" height="1016" alt="image" src="https://github.com/user-attachments/assets/21a4b1fa-3f47-46da-88de-aab7fd5fdc81" />
<img width="1755" height="636" alt="image" src="https://github.com/user-attachments/assets/25c26b19-a9bd-4e26-9510-b74872bee563" />
<img width="1571" height="650" alt="image" src="https://github.com/user-attachments/assets/fad17327-49d6-4923-bfa4-ceb26a0e64ce" />
<img width="1257" height="667" alt="image" src="https://github.com/user-attachments/assets/e71d417f-7c82-40ed-8437-e1367f7c5aea" />


- Set up an Internet Gateway and a NAT Gateway.
<img width="1201" height="337" alt="image" src="https://github.com/user-attachments/assets/d895d240-4567-47e0-80ea-ca2af2d559ad" />
<img width="1262" height="532" alt="image" src="https://github.com/user-attachments/assets/edb7a8bd-9480-4824-bed4-056471255e82" />

---
``` Format -> Validate -> Plan -> Apply ```
> it creates Internet gateways and NAT Gateway
---

- Configure route tables for both subnets(public+private).

<img width="1201" height="475" alt="image" src="https://github.com/user-attachments/assets/ee2d832d-6ccb-4a1e-9ebc-eb60e03c903d" />
<img width="1182" height="447" alt="image" src="https://github.com/user-attachments/assets/2c9161c9-4d7c-4f2c-932e-9ce6eb8ce487" />

---
``` Format -> Validate -> Plan -> Apply ```

> Update Routes for Public and Private Route.

---

### association of ublivc and Private Route.

<img width="1222" height="367" alt="image" src="https://github.com/user-attachments/assets/dbed1bc7-dcc0-43c0-9bca-644ddad7ab9b" />
---
``` Format -> Validate -> Plan -> Apply ```

> private and public route-table association have been done.

---

### 3. EC2 Instance Provisioning:

- Create the AWS Key Pair & Create a dedicated SSH key -> ssh-keygen -t rsa -b 4096 -f ~/.ssh/mern-devops
<img width="1347" height="680" alt="image" src="https://github.com/user-attachments/assets/3b361523-0028-4b35-a527-8c07930bbfa6" />
<img width="1052" height="320" alt="image" src="https://github.com/user-attachments/assets/d8790dba-d999-41e7-8f9b-1a01ac112ab5" />

- Launch two EC2 instances: one in the public subnet (for the web server) and another in the private subnet (for the database).
<img width="991" height="817" alt="image" src="https://github.com/user-attachments/assets/d310becc-b754-4b51-a3fb-8b850b84cf45" />

---
``` Format -> Validate -> Plan -> Apply ```

> Two EC2 are created for web and DB respectively

---
  
- Ensure both instances are accessible via SSH (public instance only accessible from your IP).
- ### 1. you can see my web EC2 is accessible from my machine through public IP
 <img width="1406" height="901" alt="image" src="https://github.com/user-attachments/assets/8d927d9c-f245-4113-90f7-3b4b4924dde8" />
- ### 2. you can see my DB EC2 is accessible from my machine through private IP
<img width="1201" height="946" alt="image" src="https://github.com/user-attachments/assets/ab03b960-17eb-49e2-94e9-4f7eda76c341" />


### 4. Security Groups and IAM Roles: 

- Create necessary security groups for web and database servers.
<img width="1296" height="877" alt="image" src="https://github.com/user-attachments/assets/19414f30-10d1-40d5-a7d8-55b9cf9abc2d" />
<img width="1272" height="731" alt="image" src="https://github.com/user-attachments/assets/57cdf38a-2d1c-4e48-839f-5c21eb4892a7" />

---
``` Format -> Validate -> Plan -> Apply ```

> Created security groups for both web and database servers.

---

### 5. Resource Output: 
- Output the public IP of the web server EC2 instance.
<img width="1042" height="310" alt="image" src="https://github.com/user-attachments/assets/f1347cf8-03ca-4a01-849d-09c46ec30d4a" />


