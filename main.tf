resource "azuredevops_git_repository_file" "git_repository_files" {
  for_each = var.git_repository_files

  content             = each.value.content
  file                = each.value.file
  repository_id       = each.value.repository_id
  author_email        = each.value.author_email
  author_name         = each.value.author_name
  branch              = each.value.branch
  commit_message      = each.value.commit_message
  committer_email     = each.value.committer_email
  committer_name      = each.value.committer_name
  overwrite_on_create = each.value.overwrite_on_create

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

