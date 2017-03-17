# Route53 Zone Terraform Module

A Terraform module for Route53 with single and multizone capabilities.

## Design Philosophy

This atomic module was designed for multiple and one-off zone configuration. This is possible with the "multizone" variable. The multizone feature is meant to be used along with the creation of a new VPC.


## Module Input Variables

- `base_domain` - The base domain for the VPC. Ex. example.com
- `multizone` - Boolean value that allows for the creation of multiple zones . (default=false)
- `zones` - Only necessary if `multizone` is set to true. Zone names for the vpc. Ex. dev = dev.example.com (default=dev, stage, and prod)
- `vpc_id` - VPC ID

## Module Outputs

- `zone_id` - Base domain zone ID (Only available if multizone = false) 
- `zone_ids` - Base domain zone IDs (Only available if multizone = true)
