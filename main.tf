
resource "aws_security_group" "cortex_lab" {
  name        = "cortex-lab-sg"
  description = "Security testing lab only"

  ingress {
    description = "SSH access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
  