resource "aws_route53_record" "roboshop" {
  count = length(var.instances)
  zone_id = "${var.zone_id}"
  name    = "${var.instances[count.index]}.${var.domain_name}" # mongodb.fineshit.shop
  type    = "A"
  ttl     = 1
  records = [aws_instance.Learning_Route_53[count.index].private_ip]
  allow_overwrite = true
}