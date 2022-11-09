terraform {
  required_version = ">= 0.15"
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
