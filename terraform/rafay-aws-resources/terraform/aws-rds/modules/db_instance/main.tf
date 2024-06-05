module "terraform-aws-rds" {
  source  = "terraform-aws-rds//modules/db_instance"
  version = "6.5.5"

  create = var.create
  identifier = var.identifier
  custom_iam_instance_profile = var.custom_iam_instance_profile
  use_identifier_prefix = var.use_identifier_prefix
  allocated_storage = var.allocated_storage
  storage_type = var.storage_type
  storage_throughput = var.storage_throughput
  storage_encrypted = var.storage_encrypted
  kms_key_id = var.kms_key_id
  replicate_source_db = var.replicate_source_db
  license_model = var.license_model
  replica_mode = var.replica_mode
  iam_database_authentication_enabled = var.iam_database_authentication_enabled
  domain = var.domain
  domain_auth_secret_arn = var.domain_auth_secret_arn
  domain_dns_ips = var.domain_dns_ips
  domain_fqdn = var.domain_fqdn
  domain_iam_role_name = var.domain_iam_role_name
  domain_ou = var.domain_ou
  engine = var.engine
  engine_version = var.engine_version
  instance_class = var.instance_class
  db_name = var.db_name
  username = var.username
  password = var.password
  manage_master_user_password = var.manage_master_user_password
  master_user_secret_kms_key_id = var.master_user_secret_kms_key_id
  port = var.port
  skip_final_snapshot = var.skip_final_snapshot
  snapshot_identifier = var.snapshot_identifier
  copy_tags_to_snapshot = var.copy_tags_to_snapshot
  final_snapshot_identifier_prefix = var.final_snapshot_identifier_prefix
  vpc_security_group_ids = var.vpc_security_group_ids
  db_subnet_group_name = var.db_subnet_group_name
  parameter_group_name = var.parameter_group_name
  availability_zone = var.availability_zone
  multi_az = var.multi_az
  iops = var.iops
  publicly_accessible = var.publicly_accessible
  monitoring_interval = var.monitoring_interval
  monitoring_role_arn = var.monitoring_role_arn
  monitoring_role_name = var.monitoring_role_name
  monitoring_role_use_name_prefix = var.monitoring_role_use_name_prefix
  monitoring_role_description = var.monitoring_role_description
  monitoring_role_permissions_boundary = var.monitoring_role_permissions_boundary
  create_monitoring_role = var.create_monitoring_role
  allow_major_version_upgrade = var.allow_major_version_upgrade
  auto_minor_version_upgrade = var.auto_minor_version_upgrade
  apply_immediately = var.apply_immediately
  maintenance_window = var.maintenance_window
  blue_green_update = var.blue_green_update
  backup_retention_period = var.backup_retention_period
  backup_window = var.backup_window
  tags = var.tags
  db_instance_tags = var.db_instance_tags
  option_group_name = var.option_group_name
  timezone = var.timezone
  character_set_name = var.character_set_name
  nchar_character_set_name = var.nchar_character_set_name
  enabled_cloudwatch_logs_exports = var.enabled_cloudwatch_logs_exports
  timeouts = var.timeouts
  deletion_protection = var.deletion_protection
  performance_insights_enabled = var.performance_insights_enabled
  performance_insights_retention_period = var.performance_insights_retention_period
  performance_insights_kms_key_id = var.performance_insights_kms_key_id
  max_allocated_storage = var.max_allocated_storage
  ca_cert_identifier = var.ca_cert_identifier
  delete_automated_backups = var.delete_automated_backups
  s3_import = var.s3_import
  restore_to_point_in_time = var.restore_to_point_in_time
  network_type = var.network_type
  create_cloudwatch_log_group = var.create_cloudwatch_log_group
  cloudwatch_log_group_retention_in_days = var.cloudwatch_log_group_retention_in_days
  cloudwatch_log_group_kms_key_id = var.cloudwatch_log_group_kms_key_id
  manage_master_user_password_rotation = var.manage_master_user_password_rotation
  master_user_password_rotate_immediately = var.master_user_password_rotate_immediately
  master_user_password_rotation_automatically_after_days = var.master_user_password_rotation_automatically_after_days
  master_user_password_rotation_duration = var.master_user_password_rotation_duration
  master_user_password_rotation_schedule_expression = var.master_user_password_rotation_schedule_expression
}
