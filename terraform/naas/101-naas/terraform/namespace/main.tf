locals {
  namespace = lower("test-namespace")
}

# Define a namespace resource
resource "rafay_namespace" "namespace" {
  metadata {
    name    = local.namespace
    project = var.project
  }
  spec {
    drift {
      enabled = true
    }
    placement {
      labels {
        key   = "rafay.dev/clusterName"
        value = var.cluster_name
      }
    }
    # Set resource quotas for the namespace
    resource_quotas {
      config_maps = "10"
      cpu_requests = var.cpu
      memory_requests = var.memory
      cpu_limits = "4000m"
      memory_limits = "4096Mi"
      persistent_volume_claims = "2"
      pods = "30"
      replication_controllers = "5"
      services = "10"
      services_load_balancers = "10"
      services_node_ports = "10"
      storage_requests = "1Gi"
    }
  }
}

# Create a local file for the network policy using a template
resource "local_file" "create_network_policy" {
  content  = templatefile("networkpolicy.yaml", { namespace = local.namespace })
  filename = "/tmp/networkpolicy.yaml"
  depends_on = [rafay_download_kubeconfig.tfkubeconfig]
}

# Create a group in Rafay
resource "rafay_group" "group" {
  name = "${local.namespace}-group"
}

# Associate the group with the namespace and assign namespace admin role to the passed user
resource "rafay_groupassociation" "groupassociation" {
  depends_on = [rafay_group.group]
  project = var.project
  group = "${local.namespace}-group"
  namespaces = [local.namespace]
  roles = ["NAMESPACE_ADMIN"]
  add_users = [var.username]
  idp_user = var.user_type
}
