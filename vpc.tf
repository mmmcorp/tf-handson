resource "aws_vpc" "test_create" {
  # 必須設定
  # cidr_blockまたはipv4IpamPoolIdが必須
  # 今回はcidr_blockを指定
  cidr_block           = "172.20.0.0/16"

  # 任意設定
  tags = {
    Name    = "terraform-test",
  }
}

resource "aws_subnet" "public_a" {
  # 必須設定
  vpc_id                  = aws_vpc.test_create.id
  cidr_block              = "172.20.0.0/24"

  # 任意設定
  tags = {
    Name    = "terraform-test-public-a"
  }
}
