resource "google_deployment_manager_deployment" "deployment_manager_deployments" {
  for_each = var.deployment_manager_deployments

  name            = each.value.name
  create_policy   = each.value.create_policy
  delete_policy   = each.value.delete_policy
  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  preview         = each.value.preview
  project         = each.value.project

  target {
    config {
      content = each.value.target.config.content
    }
    dynamic "imports" {
      for_each = each.value.target.imports != null ? each.value.target.imports : []
      content {
        content = imports.value.content
        name    = imports.value.name
      }
    }
  }

  dynamic "labels" {
    for_each = each.value.labels != null ? each.value.labels : []
    content {
      key   = labels.value.key
      value = labels.value.value
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

