# 新規作成テスト用EC2インスタンス
resource "aws_instance" "test_create" {

  # 必須設定
  instance_type = "t2.micro"

  # amiまたはlaunch_templateセクションが必須。
  # 今回はAMIを指定します
  ami = "ami-0f36dcfcc94112ea1"

  # 任意設定
  tags = {
    Name = "terraform-create-test"
  }

  subnet_id = "${aws_subnet.public_a.id}"
}

# インポートテスト用EC2インスタンス
resource "aws_instance" "test_import" {
}
