variable "base_domain" {
	type = "string"
	default = "default.zone"
}

variable "multi_zone" {
	default = false
}

variable "zones" {
	default = "dev,stage,prod"
}

variable "vpc_id" {
	type = "string"
}
