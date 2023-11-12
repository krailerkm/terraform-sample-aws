data "aws_availability_zones" "available" {
  state = "available" # Only fetch AZs that are available for use
}
