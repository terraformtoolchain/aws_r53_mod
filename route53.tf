resource "aws_route53_zone" "main" {
	count	= "${ var.dev_stage_prod == 1 ? 0 : 1 }"

	name	= "${ var.base_domain }"
	vpc_id	= "${ var.vpc_id }"
}

resource "aws_route53_zone" "dev_stage_prod" {
	count	= "${ var.dev_stage_prod == 1 ? length(split(",", var.zones)) : 0 }"

	name	= "${ element(split(",", var.zones), count.index) }.${ var.base_domain }"
	vpc_id	= "${ var.vpc_id }"
}
