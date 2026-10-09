
resource "aws_security_group" "cortex_test" {
  name        = "cortex-test-sg"
  description = "Cortex Cloud security testing"

  ingress {
    description = "Unrestricted SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Unrestricted RDP"
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
