# Memod API AWS EKS Cluster IaC

## Setup

### Set you AWS account credentials on Github Repo

1.On your Github Repo `Settings`, in `Action` under `Secrets and variables` create two new `Repository Secrets` and their corresponding values:

* `AWS_ACCESS_KEY_ID`: AWS Account Access Key

* `AWS_SECRET_ACCESS_KEY`: AWS Account Secret Key

### Setting tfvars as Github Secrets

Instead of using a `.tfvars` for storing the different variable values, Github environments secrets are used.The following steps cover how to do it:

1. On your Github Repo `Settings`, in `Action` under `Secrets and variables` create a new environment. For example: `development`

2. Create the following secrets and add the corresponding types of values for each one. These are the ones set for this project:

    * `AWS_REGION`: ex: "us-east-1"
    * `EKS_CLUSTER_EC2_INSTANCE_TYPE`: ex: "m3.large"
    * `EKS_VPC_SECURITY_GROUP_ID`: ex: "sg-062f05b98b1edfefaeasdadaedaed"
    * `NODE_GROUP_AUTOSCALING_POLICY_ARN`: ex: "arn:aws:iam::23428842523567:policy/NameOFTHEPOLICY"
    * `EKS_CLUSTER_NAME`: ex: "example-cluster"
    * `VPC_CIDR_BLOCK`: ex: "10.1.0.0/16"
    * `VPC_ID`: ex: "vpc-232fsr9fs9229frf"
    * `VPC_PRIVATE_SUBNETS`: ex: "subnet-22938423489239"

## How to Deploy

To deploy a new cluster with the given values just go to the `Actions` section of you repository and click on the `Deploy/update infrastructure`. There, go the `Run workflow` button and choose the environment you wish to deploy. The deployment will begin. It should take about 10 minutes for the cluster to be deployed on AWS EKS.