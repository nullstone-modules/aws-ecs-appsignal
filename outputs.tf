output "env" {
  value = [
    {
      name  = "APPSIGNAL_APP_NAME"
      value = local.block_name
    },
    {
      name  = "APPSIGNAL_APP_ENV",
      value = local.env_name
    }
  ]
}

output "secrets" {
  value = [
    {
      name  = "APPSIGNAL_PUSH_API_KEY"
      value = data.aws_secretsmanager_secret_version.push_api_key.secret_string
    }
  ]
}
