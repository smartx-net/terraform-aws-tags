data "aws_default_tags" "current" {}

locals {
  asg_tags = [for key in distinct(concat(keys(var.tags), keys(data.aws_default_tags.current.tags))) :
    {
      key   = key
      value = try(var.tags[key], data.aws_default_tags.current.tags[key])
      propagate_at_launch = var.propagate_at_launch
    }
  ]
}
