resource "random_shuffle" "subnets" { 
  input = var.subnets
  result_count = 1
}

resource "aws_instance" "instance" {
    ami                    = var.ami
    instance_type          = var.instance_type
    iam_instance_profile   = var.iam_instance_profile
    vpc_security_group_ids = var.vpc_security_group_ids
    subnet_id              = random_shuffle.subnets.result[0]

    tags = {
      Name = "GitHubTest"
    }
}

user_data   = <<EOF
  #cloud-config
  runcmd:
    - cd "${var.runner_home}"
    - instance_id=$(cat /var/lib/cloud/data/instance-id)
    - sudo -u "${var.runner_user}" ./config.sh --unattended "${var.extra_flags}" --name "$instance_id" --url "https://github.com/${var.gh_repo}" --token "${var.runner_token}" --labels "$instance_id"
    - ./svc.sh install "${var.runner_user}"
    - ./svc.sh start
  EOF
