resource "aws_db_instance" "default" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  name                 = "appdb"
  username             = "dbadmin"
  password             = var.db_password
  skip_final_snapshot  = true
}

variable "db_password" {
  description = "RDS master password"
  default     = "YourStrongPassword123!" use Secrets Manager
}
