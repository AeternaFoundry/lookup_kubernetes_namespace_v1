data "kubernetes_namespace_v1" "namespace_v1_lookup" {
  for_each = var.namespace_v1_lookup


  dynamic "metadata" {
    for_each = each.value.metadata != null ? each.value.metadata : []
    content {
      annotations = metadata.value.annotations
      labels      = metadata.value.labels
      name        = metadata.value.name
    }
  }
}

