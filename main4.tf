resource "aws_launch_configuration" "example" {
 image_id = "ami-0fb653ca2d3203ac1"
 instance_type = "t2.micro"
 security_groups = [aws_security_group.instance.id]
 # Render the User Data script as a template
 user_data = templatefile("user-data.sh", {
 server_port = var.server_port
 db_address = data.terraform_remote_state.db.outputs.address
 db_port = data.terraform_remote_state.db.outputs.port
 })


locals {
 http_port = 80
 any_port = 0
 any_protocol = "-1"
 tcp_protocol = "tcp"
 all_ips = ["0.0.0.0/0"]
}
