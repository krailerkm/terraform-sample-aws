resource "aws_db_instance" "default" {
  allocated_storage    = var.allocated_storage
  storage_type         = var.storage_type
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  name                 = var.db_name
  username             = var.db_username
  password             = var.db_password
  parameter_group_name = var.db_parameter_group
  db_subnet_group_name = aws_db_subnet_group.default.name
  vpc_security_group_ids = [var.db_security_group]
  skip_final_snapshot  = true
  publicly_accessible  = var.publicly_accessible
  tags = {
    Name = "MyDBInstance"
  }
}

resource "aws_db_subnet_group" "default" {
  name       = "main"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "My DB subnet group"
  }
}

# ... additional resources like RDS read replicas or option groups.
