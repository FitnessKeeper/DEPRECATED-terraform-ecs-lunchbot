variable "ami" {
  description           = "ECS AWS AMI Id, if you change, make sure it is compatible with instance type, not all AMIs allow all instance types "
    default = {
        us-east-1      = "ami-f53ea5e2"
        us-west-2      = "ami-181cd678"
        eu-west-1      = "ami-21f9ba41"
        eu-central-1   = "ami-3eb94851"
        ap-northeast-1 = "ami-5bfd2438"
        ap-southeast-1 = "ami-9689bdf5"
        ap-southeast-2 = "ami-3f10d25e"
    }
}

variable "key_name" {
  description = "SSH key name in your AWS account for AWS instances."
    default   = "amazonhosts"
}

variable "key_path" {
  description  = "Path to the private key specified by key_name."
    default    = {
      key_path = "/Users/alaric/amazonhosts.pem"
    }
}

variable "region" {
  default     = "us-east-1"
  description = "The region of AWS, for AMI lookups."
}

variable "servers" {
  default     = "2"
  description = "The number of servers to launch."
}

variable "instance_type" {
  default     = "t2.micro"
  description = "AWS Instance type, if you change, make sure it is compatible with AMI, not all AMIs allow all instance types "
}

variable "tagName" {
  default     = "ECS Node"
  description = "Name tag for the servers"
}

variable "slack_url" {
  default     = "https://hooks.slack.com/services/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"
  description = "URL to pass as an environment variable to the lunchbox bot"
}
