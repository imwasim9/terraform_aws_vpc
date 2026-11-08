resource "aws_vpc_peering_connection" "roboshop" {
  count       = var.is_peering_required ? 1 : 0
  peer_vpc_id = aws_vpc.main.id
  vpc_id      = data.aws_vpc.default
  accepter {
    allow_remote_vpc_dns_resolution = true
  }
  requester {
    allow_remote_vpc_dns_resolution = true
  }
  auto_accept   = true
  tags = merge(
    var.vpc_tags,
    local.common_tags,
    {
      Name = "${local.common_name_suffix}-peering"
    }
  )
}

resource "aws_route" "r" {
  route_table_id            = aws_route_table.public.id
  destination_cidr_block    = "10.0.1.0/22"
  vpc_peering_connection_id = "pcx-45ff3dc1"
}