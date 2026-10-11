variable "namespace_v1_lookup" {
  description = <<EOT
Map of namespace_v1_lookup, attributes below
Optional:
    - metadata (block):
        - annotations (optional)
        - labels (optional)
        - name (required)
EOT

  type = map(object({
    metadata = optional(list(object({
      annotations = optional(map(string))
      labels      = optional(map(string))
      name        = string
    })))
  }))
}

