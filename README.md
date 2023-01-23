# Deploying Resources on Azure Cloud with Github Actions and Terraform

```
az ad sp create-for-rbac --name SERVICE_PRINCIPAL --role Contributor --scopes /subscriptions/SUBSCRIPTION_ID
```

Result:

```
{
"appId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
"displayName": "Pay-As-You-Go",
"password": "xxxxxxxxxxx-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
"tenant": "xxxxxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxxxxxxxxx"
}

Now we need to create the following secrets:

```
| Variables | Values|
|--------------------|-------|
| AZURE_AD_CLIENT_ID | appId |
| AZURE_AD_CLIENT_SECRET | password
|AZURE_AD_TENANT_ID | tenant |
|AZURE_SUBSCRIPTION_ID | subscription_id |
