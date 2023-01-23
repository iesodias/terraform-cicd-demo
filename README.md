# Deploying Resources on Azure Cloud with Github Actions and Terraform

## Step 1

```
az ad sp create-for-rbac --name SERVICE_PRINCIPAL --role Contributor --scopes /subscriptions/SUBSCRIPTION_ID
```

### Result:

```
{
"appId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
"displayName": "Pay-As-You-Go",
"password": "xxxxxxxxxxx-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
"tenant": "xxxxxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxxxxxxxxx"
}

```
---

## Step 2

### Now we need to create the following secrets:

| Variables | Values|
|--------------------|-------|
|AZURE_AD_CLIENT_ID | appId |
|AZURE_AD_CLIENT_SECRET | password
|AZURE_AD_TENANT_ID | tenant |
|AZURE_SUBSCRIPTION_ID | subscription_id |
|ARM_ACCESS_KEY | StorageAccountKey |

---

## Step 3

### How to create terraform backend infra

```
terraform -chdir=terraform-manifest init
terraform -chdir=terraform-manifest plan
terraform -chdir=terraform-manifest apply -auto-approve
```
