cuenta           = "654654478122"
proyecto         = "proyecto-brandoMontoya"
key_name         = "keypairproyecto"
private_key_path = "./nombrekeypair.pem"
tags = {
  "tag1" = "valor"
}
vpc_id = "vpc-00f479057476a2db8"
ec2_config = {
  instance_1 = {
    role_name     = "rol_proyecto_terraform-brandoMontoya"
    ami           = "ami-0c94855ba95c71c99"
    instance_type = "t2.micro"
    subnet_id     = "subnet-0c90bb685bbbd4f4c"
    policy_arn    = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
    policy_arn1   = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
    tagsec2 = {
      Name     = "proyecto_terraform_brandoMontoya"
      "a-tag1" = "tags"
    }
    root_block_device = {
      volume_size = 8
      volume_type = "gp3"
      iops        = 3000
    }
  }
}
sg_config = {
  instance_1 = {
    name                 = "sg-proyecto.brandoMontoya"
    description          = "grupo de seguridad proyecto terraform brandoMontoya"
    vpc_id               = "vpc-00f479057476a2db8"
    projectsecuritygroup = "sgproyect"
    ingress_rules = [
      { from_port = 3389, to_port = 3389, protocol = "tcp", cidr_blocks = ["10.0.0.0/8"]
      },
      { from_port = 0, to_port = 65535, protocol = "tcp", cidr_blocks = ["10.215.3.51/32"]
      }
    ]
  }
}