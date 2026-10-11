output "deployment_manager_deployments_id" {
  description = "Map of id values across all deployment_manager_deployments, keyed the same as var.deployment_manager_deployments except keys with no id are omitted"
  value       = { for k, v in google_deployment_manager_deployment.deployment_manager_deployments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "deployment_manager_deployments_create_policy" {
  description = "Map of create_policy values across all deployment_manager_deployments, keyed the same as var.deployment_manager_deployments except keys with no create_policy are omitted"
  value       = { for k, v in google_deployment_manager_deployment.deployment_manager_deployments : k => v.create_policy if v.create_policy != null && length(v.create_policy) > 0 }
}
output "deployment_manager_deployments_delete_policy" {
  description = "Map of delete_policy values across all deployment_manager_deployments, keyed the same as var.deployment_manager_deployments except keys with no delete_policy are omitted"
  value       = { for k, v in google_deployment_manager_deployment.deployment_manager_deployments : k => v.delete_policy if v.delete_policy != null && length(v.delete_policy) > 0 }
}
output "deployment_manager_deployments_deletion_policy" {
  description = "Map of deletion_policy values across all deployment_manager_deployments, keyed the same as var.deployment_manager_deployments except keys with no deletion_policy are omitted"
  value       = { for k, v in google_deployment_manager_deployment.deployment_manager_deployments : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "deployment_manager_deployments_deployment_id" {
  description = "Map of deployment_id values across all deployment_manager_deployments, keyed the same as var.deployment_manager_deployments except keys with no deployment_id are omitted"
  value       = { for k, v in google_deployment_manager_deployment.deployment_manager_deployments : k => v.deployment_id if v.deployment_id != null && length(v.deployment_id) > 0 }
}
output "deployment_manager_deployments_description" {
  description = "Map of description values across all deployment_manager_deployments, keyed the same as var.deployment_manager_deployments except keys with no description are omitted"
  value       = { for k, v in google_deployment_manager_deployment.deployment_manager_deployments : k => v.description if v.description != null && length(v.description) > 0 }
}
output "deployment_manager_deployments_labels" {
  description = "Map of labels values across all deployment_manager_deployments, keyed the same as var.deployment_manager_deployments except keys with no labels are omitted"
  value       = { for k, v in google_deployment_manager_deployment.deployment_manager_deployments : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "deployment_manager_deployments_manifest" {
  description = "Map of manifest values across all deployment_manager_deployments, keyed the same as var.deployment_manager_deployments except keys with no manifest are omitted"
  value       = { for k, v in google_deployment_manager_deployment.deployment_manager_deployments : k => v.manifest if v.manifest != null && length(v.manifest) > 0 }
}
output "deployment_manager_deployments_name" {
  description = "Map of name values across all deployment_manager_deployments, keyed the same as var.deployment_manager_deployments except keys with no name are omitted"
  value       = { for k, v in google_deployment_manager_deployment.deployment_manager_deployments : k => v.name if v.name != null && length(v.name) > 0 }
}
output "deployment_manager_deployments_preview" {
  description = "Map of preview values across all deployment_manager_deployments, keyed the same as var.deployment_manager_deployments except keys with no preview are omitted"
  value       = { for k, v in google_deployment_manager_deployment.deployment_manager_deployments : k => v.preview if v.preview != null }
}
output "deployment_manager_deployments_project" {
  description = "Map of project values across all deployment_manager_deployments, keyed the same as var.deployment_manager_deployments except keys with no project are omitted"
  value       = { for k, v in google_deployment_manager_deployment.deployment_manager_deployments : k => v.project if v.project != null && length(v.project) > 0 }
}
output "deployment_manager_deployments_self_link" {
  description = "Map of self_link values across all deployment_manager_deployments, keyed the same as var.deployment_manager_deployments except keys with no self_link are omitted"
  value       = { for k, v in google_deployment_manager_deployment.deployment_manager_deployments : k => v.self_link if v.self_link != null && length(v.self_link) > 0 }
}
output "deployment_manager_deployments_target" {
  description = "Map of target values across all deployment_manager_deployments, keyed the same as var.deployment_manager_deployments except keys with no target are omitted"
  value       = { for k, v in google_deployment_manager_deployment.deployment_manager_deployments : k => one(v.target) if v.target != null && length(v.target) > 0 }
}

