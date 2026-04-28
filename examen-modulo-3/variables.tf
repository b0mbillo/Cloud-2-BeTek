variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "s3_config" {
  type = object({
    bucket_name             = string
    block_public_acls       = bool
    block_public_policy     = bool
    ignore_public_acls      = bool
    restrict_public_buckets = bool
    path_to_index           = string
    key_object              = string
  })
}

variable "tags" {
  description = "Tags para los recursos"
  type        = map(string)
}

variable "proyecto" {
  description = "Nombre del proyecto"
  type        = string
}

variable "cuenta" {
  description = "Número de cuenta de AWS"
  type        = string
}
