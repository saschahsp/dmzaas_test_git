# Copyright 2017, 2019, Oracle Corporation and/or affiliates.  All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl/

locals {
  oci_base_provider = {
    api_fingerprint      = var.api_fingerprint
    api_private_key_path = var.api_private_key_path
    region               = var.region
    tenancy_id           = var.tenancy_id
    user_id              = var.user_id
  }

  oci_base_general = {
    compartment_id = var.compartment_id
    label_prefix   = var.label_prefix
  }

  oci_base_ssh_keys = {
    ssh_private_key_path = var.ssh_private_key_path
    ssh_public_key_path  = var.ssh_public_key_path
  }

  oci_base_vcn = {
    internet_gateway_enabled = var.internet_gateway_enabled
    nat_gateway_enabled      = var.nat_gateway_enabled
    service_gateway_enabled  = var.service_gateway_enabled
    tags                     = var.tags["vcn"]
    vcn_cidr                 = var.vcn_cidr
    vcn_dns_label            = var.vcn_dns_label
    vcn_name                 = var.vcn_name
  }

  oci_base_bastion = {
    availability_domains  = var.availability_domains["bastion"]
    bastion_enabled       = var.bastion_enabled
    bastion_access        = var.bastion_access
    bastion_image_id      = var.bastion_image_id
    bastion_shape         = var.bastion_shape
    bastion_upgrade       = var.bastion_package_upgrade
    netnum                = var.netnum["bastion"]
    newbits               = var.newbits["bastion"]
    notification_enabled  = var.bastion_notification_enabled
    notification_endpoint = var.bastion_notification_endpoint
    notification_protocol = var.bastion_notification_protocol
    notification_topic    = var.bastion_notification_topic
    ssh_private_key_path  = var.ssh_private_key_path
    ssh_public_key_path   = var.ssh_public_key_path
    tags                  = var.tags["bastion"]
    timezone              = var.bastion_timezone
    use_autonomous        = var.bastion_use_autonomous
  }

  oci_base_operator = {
    availability_domains      = var.availability_domains["operator"]
    operator_enabled          = var.operator_enabled
    operator_image_id         = "NONE"
    operator_shape            = var.operator_shape
    operator_upgrade          = var.operator_package_upgrade
    enable_instance_principal = var.enable_instance_principal
    netnum                    = var.netnum["operator"]
    newbits                   = var.newbits["operator"]
    notification_enabled      = var.operator_notification_enabled
    notification_endpoint     = var.operator_notification_endpoint
    notification_protocol     = var.operator_notification_protocol
    notification_topic        = var.operator_notification_topic
    ssh_private_key_path      = var.ssh_private_key_path
    ssh_public_key_path       = var.ssh_public_key_path
    tags                      = var.tags["operator"]
    timezone                  = var.operator_timezone
  }

  db_identity = {
    compartment_id = var.compartment_id
    tenancy_id     = var.tenancy_id
  }

  db_oci_general = {
    ad_names            = module.base.ad_names
    availability_domain = var.availability_domains["db"]
    label_prefix        = var.label_prefix
    region              = var.region
  }

  db_bastion = {
    bastion_public_ip = module.base.bastion_public_ip
  }

  db_network = {
    ig_route_id             = module.base.ig_route_id
    service_gateway_enabled = var.service_gateway_enabled
    nat_route_id            = module.base.nat_route_id
    netnum                  = var.netnum
    newbits                 = var.newbits
    vcn_cidr                = var.vcn_cidr
    vcn_id                  = module.base.vcn_id
  }

  db_config = {
    db_system_shape         = var.db_system_shape
    cpu_core_count          = var.cpu_core_count
    db_edition              = var.db_edition
    db_admin_password       = var.db_admin_password
    db_name                 = var.db_name
    db_home_db_name         = var.db_home_db_name
    db_version              = var.db_version
    db_home_display_name    = var.db_home_display_name
    db_disk_redundancy      = var.db_disk_redundancy
    db_system_display_name  = var.db_system_display_name
    hostname                = var.hostname
    n_character_set         = var.n_character_set
    character_set           = var.character_set
    db_workload             = var.db_workload
    pdb_name                = var.pdb_name
    data_storage_size_in_gb = var.data_storage_size_in_gb
    license_model           = var.license_model
    node_count              = var.node_count
    data_storage_percentage = var.data_storage_percentage
  }

}