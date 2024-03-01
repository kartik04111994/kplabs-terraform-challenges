provider "aws" {
    region = "us-east-1"
}
## data block for dynamically fetching values

data "aws_iam_users" "users" {}

output "names" {
    value = data.aws_iam_users.users.names  
}

## Function Length for getting total number of users

output "total-users" {
    value = length(data.aws_iam_users.users.names) 
}

## for printing Iam users with Account ID 

data "aws_caller_identity" "current" {}

    resource "aws_iam_user" "demo-user" {
    name = "admin-user-${data.aws_caller_identity.current.account_id}"
}
