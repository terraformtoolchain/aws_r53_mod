output "zone_id" {
	value = "${ aws_route53_zone.main.zone_id }"
}

output "zone_ids" {
	value = "${ join(",", aws_route53_zone.dev_stage_prod.*.zone_id) }"
}
