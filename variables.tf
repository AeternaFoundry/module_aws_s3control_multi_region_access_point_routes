variable "s3control_multi_region_access_point_routes" {
  description = <<EOT
Map of s3control_multi_region_access_point_routes, attributes below
Required:
    - mrap
Optional:
    - account_id
    - region
    - route (block):
        - bucket (required)
        - region (required)
        - traffic_dial_percentage (required)
EOT

  type = map(object({
    mrap       = string
    account_id = optional(string)
    region     = optional(string)
    route = optional(list(object({
      bucket                  = string
      region                  = string
      traffic_dial_percentage = number
    })))
  }))
}

