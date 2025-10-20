resource "aws_route53_record" "roboshop" {
  for_each =  aws_instance.learn_for_each
  zone_id = "${var.zone_id}"
  name    = "${each.key}.${var.domain_name}" # mongodb.fineshit.shop
  type    = "A"
  ttl     = 1
  records = [each.value.private_ip]
  allow_overwrite = true
}