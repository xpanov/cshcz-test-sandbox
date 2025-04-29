Run terraform init
  terraform init
  shell: /usr/bin/bash -e {0}
  env:
    AWS_ACCESS_KEY_ID: ***
    AWS_SECRET_ACCESS_KEY: ***
    TF_VAR_KYPO_ENDPOINT: https://images.crp.kypo.muni.cz
    TF_VAR_CI_PROJECT_URL: https://github.com/xpanov/cshcz-test-sandbox
    TF_VAR_CI_COMMIT_SHORT_SHA: dd56ab367887215373367cb174dfb396f26cfb73
    CRCZP_ENDPOINT: https://images.crp.kypo.muni.cz
    CRCZP_USERNAME: ***
    CRCZP_PASSWORD: ***
    TERRAFORM_CLI_PATH: /home/runner/work/_temp/93c6d3be-b555-4dcb-babe-31864b510020
Initializing the backend...
Initializing modules...
Downloading registry.terraform.io/cyberrangecz/sandbox/crczp 0.1.0 for sandbox...
- sandbox in .terraform/modules/sandbox
╷
│ Warning: Deprecated Parameter
│ 
│   on terraform.tf line 4, in terraform:
│    4:     endpoint                    = "object-store.cloud.muni.cz"
│ 
│ The parameter "endpoint" is deprecated. Use parameter "endpoints.s3"
│ instead.
╵
╷
│ Warning: Complete URL Expected
│ 
│   on terraform.tf line 4, in terraform:
│    4:     endpoint                    = "object-store.cloud.muni.cz"
│ 
│ The value should be a valid URL containing at least a scheme and hostname.
╷
│ Error: Retrieving AWS account details: AWS account ID not previously found and failed retrieving via all available methods.
│ 
│ See https://www.terraform.io/docs/providers/aws/index.html#skip_requesting_account_id for workaround and implications.
│ Errors: 2 errors occurred:
│ 	* retrieving caller identity from STS: operation error STS: GetCallerIdentity, https response error StatusCode: 0, RequestID: , request send failed, Post "https://sts.brno1.amazonaws.com/": dial tcp: lookup sts.brno1.amazonaws.com on 127.0.0.53:53: no such host
│ 	* retrieving account information via iam:ListRoles: operation error IAM: ListRoles, https response error StatusCode: 403, RequestID: f4794165-ea40-4631-b2fd-bef8f012053c, api error InvalidClientTokenId: The security token included in the request is invalid.
│ 
│ 
│ 
│ 
╵
│ Had "object-store.cloud.muni.cz".
│ 
│ Using an incomplete URL, such as a hostname only, may work, but may have
│ unexpected behavior.
╵
Error: Terraform exited with code 1.
Error: Process completed with exit code 1.
