module "terraform-aws-security-group" {
  source  = "terraform-aws-security-group//modules/rdp"
  version = "5.1.2"

  create = var.create
  vpc_id = var.vpc_id
  name = var.name
  use_name_prefix = var.use_name_prefix
  description = var.description
  revoke_rules_on_delete = var.revoke_rules_on_delete
  tags = var.tags
  ingress_rules = var.ingress_rules
  ingress_with_self = var.ingress_with_self
  ingress_with_cidr_blocks = var.ingress_with_cidr_blocks
  ingress_with_ipv6_cidr_blocks = var.ingress_with_ipv6_cidr_blocks
  ingress_with_source_security_group_id = var.ingress_with_source_security_group_id
  ingress_with_prefix_list_ids = var.ingress_with_prefix_list_ids
  ingress_cidr_blocks = var.ingress_cidr_blocks
  ingress_ipv6_cidr_blocks = var.ingress_ipv6_cidr_blocks
  ingress_prefix_list_ids = var.ingress_prefix_list_ids
  computed_ingress_rules = var.computed_ingress_rules
  computed_ingress_with_self = var.computed_ingress_with_self
  computed_ingress_with_cidr_blocks = var.computed_ingress_with_cidr_blocks
  computed_ingress_with_ipv6_cidr_blocks = var.computed_ingress_with_ipv6_cidr_blocks
  computed_ingress_with_source_security_group_id = var.computed_ingress_with_source_security_group_id
  computed_ingress_with_prefix_list_ids = var.computed_ingress_with_prefix_list_ids
  computed_ingress_cidr_blocks = var.computed_ingress_cidr_blocks
  computed_ingress_ipv6_cidr_blocks = var.computed_ingress_ipv6_cidr_blocks
  computed_ingress_prefix_list_ids = var.computed_ingress_prefix_list_ids
  number_of_computed_ingress_rules = var.number_of_computed_ingress_rules
  number_of_computed_ingress_with_self = var.number_of_computed_ingress_with_self
  number_of_computed_ingress_with_cidr_blocks = var.number_of_computed_ingress_with_cidr_blocks
  number_of_computed_ingress_with_ipv6_cidr_blocks = var.number_of_computed_ingress_with_ipv6_cidr_blocks
  number_of_computed_ingress_with_source_security_group_id = var.number_of_computed_ingress_with_source_security_group_id
  number_of_computed_ingress_with_prefix_list_ids = var.number_of_computed_ingress_with_prefix_list_ids
  number_of_computed_ingress_cidr_blocks = var.number_of_computed_ingress_cidr_blocks
  number_of_computed_ingress_ipv6_cidr_blocks = var.number_of_computed_ingress_ipv6_cidr_blocks
  number_of_computed_ingress_prefix_list_ids = var.number_of_computed_ingress_prefix_list_ids
  egress_rules = var.egress_rules
  egress_with_self = var.egress_with_self
  egress_with_cidr_blocks = var.egress_with_cidr_blocks
  egress_with_ipv6_cidr_blocks = var.egress_with_ipv6_cidr_blocks
  egress_with_source_security_group_id = var.egress_with_source_security_group_id
  egress_with_prefix_list_ids = var.egress_with_prefix_list_ids
  egress_cidr_blocks = var.egress_cidr_blocks
  egress_ipv6_cidr_blocks = var.egress_ipv6_cidr_blocks
  egress_prefix_list_ids = var.egress_prefix_list_ids
  computed_egress_rules = var.computed_egress_rules
  computed_egress_with_self = var.computed_egress_with_self
  computed_egress_with_cidr_blocks = var.computed_egress_with_cidr_blocks
  computed_egress_with_ipv6_cidr_blocks = var.computed_egress_with_ipv6_cidr_blocks
  computed_egress_with_source_security_group_id = var.computed_egress_with_source_security_group_id
  computed_egress_with_prefix_list_ids = var.computed_egress_with_prefix_list_ids
  computed_egress_cidr_blocks = var.computed_egress_cidr_blocks
  computed_egress_ipv6_cidr_blocks = var.computed_egress_ipv6_cidr_blocks
  computed_egress_prefix_list_ids = var.computed_egress_prefix_list_ids
  number_of_computed_egress_rules = var.number_of_computed_egress_rules
  number_of_computed_egress_with_self = var.number_of_computed_egress_with_self
  number_of_computed_egress_with_cidr_blocks = var.number_of_computed_egress_with_cidr_blocks
  number_of_computed_egress_with_ipv6_cidr_blocks = var.number_of_computed_egress_with_ipv6_cidr_blocks
  number_of_computed_egress_with_source_security_group_id = var.number_of_computed_egress_with_source_security_group_id
  number_of_computed_egress_with_prefix_list_ids = var.number_of_computed_egress_with_prefix_list_ids
  number_of_computed_egress_cidr_blocks = var.number_of_computed_egress_cidr_blocks
  number_of_computed_egress_ipv6_cidr_blocks = var.number_of_computed_egress_ipv6_cidr_blocks
  number_of_computed_egress_prefix_list_ids = var.number_of_computed_egress_prefix_list_ids
}
