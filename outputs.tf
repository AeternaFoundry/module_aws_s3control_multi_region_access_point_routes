output "s3control_multi_region_access_point_routes_account_id" {
  description = "Map of account_id values across all s3control_multi_region_access_point_routes, keyed the same as var.s3control_multi_region_access_point_routes"
  value       = { for k, v in aws_s3control_multi_region_access_point_routes.s3control_multi_region_access_point_routes : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "s3control_multi_region_access_point_routes_mrap" {
  description = "Map of mrap values across all s3control_multi_region_access_point_routes, keyed the same as var.s3control_multi_region_access_point_routes"
  value       = { for k, v in aws_s3control_multi_region_access_point_routes.s3control_multi_region_access_point_routes : k => v.mrap if v.mrap != null && length(v.mrap) > 0 }
}
output "s3control_multi_region_access_point_routes_region" {
  description = "Map of region values across all s3control_multi_region_access_point_routes, keyed the same as var.s3control_multi_region_access_point_routes"
  value       = { for k, v in aws_s3control_multi_region_access_point_routes.s3control_multi_region_access_point_routes : k => v.region if v.region != null && length(v.region) > 0 }
}
output "s3control_multi_region_access_point_routes_route" {
  description = "Map of route values across all s3control_multi_region_access_point_routes, keyed the same as var.s3control_multi_region_access_point_routes"
  value       = { for k, v in aws_s3control_multi_region_access_point_routes.s3control_multi_region_access_point_routes : k => v.route if v.route != null && length(v.route) > 0 }
}

