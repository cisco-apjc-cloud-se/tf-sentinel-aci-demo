module "tfplan-functions" {
  # https://raw.githubusercontent.com/hashicorp/terraform-guides/master/governance/third-generation/aws/restrict-ec2-instance-type.sentinel
  source = "https://raw.githubusercontent.com/hashicorp/terraform-guides/master/governance/third-generation/common-functions/tfplan-functions/tfplan-functions.sentinel"
}

policy "destroy-policy" {
  source            = "./destroy-policy.sentinel"
  enforcement_level = "soft-mandatory"
}
