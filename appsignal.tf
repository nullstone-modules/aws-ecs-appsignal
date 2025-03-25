data "ns_connection" "appsignal" {
  name     = "appsignal"
  contract = "datastore/aws/appsignal"
}

locals {
  push_api_key_secret_id = data.ns_connection.appsignal.outputs.push_api_key_secret_id
}

data "aws_secretsmanager_secret_version" "push_api_key" {
  secret_id = local.push_api_key_secret_id
}
