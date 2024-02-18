# Please accept the terms of the Snowplow Limited Use License Agreement to proceed. (https://docs.snowplow.io/limited-use-license-1.0/)
accept_limited_use_license = true

# Will be prefixed to all resource names
# Use this to easily identify the resources created and provide entropy for subsequent environments
prefix = "sp"

# --- Default VPC
# Update to the VPC you would like to deploy into
# Find your default: https://docs.aws.amazon.com/vpc/latest/userguide/default-vpc.html#view-default-vpc
vpc_id            = "vpc-0dd624210f65061b4"
public_subnet_ids = ["subnet-01945ac0fca472812", "subnet-073fbe598e6af0ed5", "subnet-09b647a9a92df320b"]

# --- SSH
# Update this to your IP Address
ssh_ip_allowlist = ["147.161.173.0/24"]
# Generate a new SSH key locally with `ssh-keygen`
# ssh-keygen -t rsa -b 4096 
ssh_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC5+Uctxp2Q8xeUTztKpIW3XqMWnmTyHjFZkbmeoQcCTLKtZJ+CLROlutqZWEy19Z1Map2tfXbo3cIghVKDrr7rXV6zM9dgmCQBPvNZivu7H3BpN8qR4h/BSSi4YsSE04+QOApp+OT+D9ToNwtUUPdzisbdgSaeYtZTj8UISsoOCUyNSxrzaJB8ye6+DLkEP5GMsl+VnMxe3VXzMHPioqPl0HDSibRzok8hm0Y8jQOB6r5tkmM4Gs8Zr1hfSIZZFvCA2kP2iS+pyzBslneGNszEepsfIseT+Kybq4RvXBpPg/tZZ/dJhtYcFx+wqQWzP8RHVGmSrwRrcxzgmHaIBbr5Qeh7azhDkPEcRYERVC1b13TPSK77vc19VN+QFAfPG+7PoJ0IsWWQ3ez7CtFKA+sO0SHq9mz89gAq1G7WIm+lPSwDzsValv2osgDn1ehnX5SY4X1B7pjult0qDfpeHMOFfKPeMH6CqNS1awALheWV0qsN7Tn8+5uCmNpLGDIg15jdfV5dpZ0IGhH/lhn9De1sWI4wQcTNCaMmWzb+y7Z8b6tsyz8ZB0wB/2FJCHIyvUpMwFmGyoc4ziPWopb1JNchLem4GogbmFehHyLguc17P8dKKTFxLrIe4X5MYe+j2VjA7gZK6teVFWPqxjWT8xWUp3UkhvEmNV+rwkLp2rQY6w== angelo.rampersad@RGD4594QPT"

# --- Snowplow Iglu Server
iglu_db_name     = "iglu"
iglu_db_username = "iglu"
# Change and keep this secret!
iglu_db_password = "password"

# Used for API actions on the Iglu Server
# Change this to a new UUID and keep it secret!
iglu_super_api_key = "00000000-0000-0000-0000-000000000000"

# NOTE: To push schemas to your Iglu Server, you can use igluctl
# igluctl: https://docs.snowplowanalytics.com/docs/pipeline-components-and-applications/iglu/igluctl
# igluctl static push --public schemas/ http://CHANGE-TO-MY-IGLU-IP 00000000-0000-0000-0000-000000000000

# See for more information: https://github.com/snowplow-devops/terraform-aws-iglu-server-ec2#telemetry
# Telemetry principles: https://docs.snowplowanalytics.com/docs/open-source-quick-start/what-is-the-quick-start-for-open-source/telemetry-principles/
user_provided_id  = ""
telemetry_enabled = false

# --- AWS IAM (advanced setting)
iam_permissions_boundary = "" # e.g. "arn:aws:iam::0000000000:policy/MyAccountBoundary"

# --- SSL Configuration (optional)
ssl_information = {
  certificate_arn = ""
  enabled         = false
}

# --- Extra Tags to append to created resources (optional)
tags = {
  "owners"           = "analytics"
  "metadata:owners"  = "analytics"
  "metadata:feature" = "igluserver"
}

# --- CloudWatch logging to ensure logs are saved outside of the server
cloudwatch_logs_enabled        = false
cloudwatch_logs_retention_days = 1
