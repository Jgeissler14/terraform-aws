resource "aws_iam_user" "admin_users" {
  for_each = var.admin_users

  name = each.key

  tags = var.tags
}

resource "aws_iam_user_policy_attachment" "admin_user_attachments" {
  for_each   = var.admin_users
  user       = aws_iam_user.admin_users[each.key].name
  policy_arn = each.value
}
