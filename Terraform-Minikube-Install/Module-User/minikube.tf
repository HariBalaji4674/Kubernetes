module "minikube" {
  source = "github.com/scholzj/terraform-aws-minikube"

  aws_region    = "us-east-1"
  cluster_name  = "my-minikube"
  aws_instance_type = "t3.medium"
  ssh_public_key = "DevOps.pub"
  aws_subnet_id = "subnet-0fe045518f51de8f5"
#   ami_image_id = "ami-03265a0778a880afb"
  hosted_zone = "haridevopspractice.online"
#   hosted_zone_id = "Z0036310835V46R363UD"
  hosted_zone_private = false

  tags = {
    Application = "Minikube"
  }

  addons = [
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/storage-class.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/heapster.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/dashboard.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/external-dns.yaml"
  ]
}