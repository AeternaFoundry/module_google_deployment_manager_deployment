variable "deployment_manager_deployments" {
  description = <<EOT
Map of deployment_manager_deployments, attributes below
Required:
    - name
    - target (block):
        - config (required, block):
            - content (required)
        - imports (optional, block):
            - content (optional)
            - name (optional)
Optional:
    - create_policy
    - delete_policy
    - deletion_policy
    - description
    - preview
    - project
    - labels (block):
        - key (optional)
        - value (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name            = string
    create_policy   = optional(string)
    delete_policy   = optional(string)
    deletion_policy = optional(string)
    description     = optional(string)
    preview         = optional(bool)
    project         = optional(string)
    target = object({
      config = object({
        content = string
      })
      imports = optional(list(object({
        content = optional(string)
        name    = optional(string)
      })))
    })
    labels = optional(list(object({
      key   = optional(string)
      value = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

