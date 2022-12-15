terraform {
  required_version = ">= 1.0.0"
}

provider "aws" {
  default_tags {
    tags = {
      foo   = "bar"
      hello = "mars"
      ham   = "spam"
    }
  }
}
