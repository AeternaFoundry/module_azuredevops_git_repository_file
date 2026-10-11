output "git_repository_files_id" {
  description = "Map of id values across all git_repository_files, keyed the same as var.git_repository_files except keys with no id are omitted"
  value       = { for k, v in azuredevops_git_repository_file.git_repository_files : k => v.id if v.id != null && length(v.id) > 0 }
}
output "git_repository_files_author_email" {
  description = "Map of author_email values across all git_repository_files, keyed the same as var.git_repository_files except keys with no author_email are omitted"
  value       = { for k, v in azuredevops_git_repository_file.git_repository_files : k => v.author_email if v.author_email != null && length(v.author_email) > 0 }
}
output "git_repository_files_author_name" {
  description = "Map of author_name values across all git_repository_files, keyed the same as var.git_repository_files except keys with no author_name are omitted"
  value       = { for k, v in azuredevops_git_repository_file.git_repository_files : k => v.author_name if v.author_name != null && length(v.author_name) > 0 }
}
output "git_repository_files_branch" {
  description = "Map of branch values across all git_repository_files, keyed the same as var.git_repository_files except keys with no branch are omitted"
  value       = { for k, v in azuredevops_git_repository_file.git_repository_files : k => v.branch if v.branch != null && length(v.branch) > 0 }
}
output "git_repository_files_commit_message" {
  description = "Map of commit_message values across all git_repository_files, keyed the same as var.git_repository_files except keys with no commit_message are omitted"
  value       = { for k, v in azuredevops_git_repository_file.git_repository_files : k => v.commit_message if v.commit_message != null && length(v.commit_message) > 0 }
}
output "git_repository_files_committer_email" {
  description = "Map of committer_email values across all git_repository_files, keyed the same as var.git_repository_files except keys with no committer_email are omitted"
  value       = { for k, v in azuredevops_git_repository_file.git_repository_files : k => v.committer_email if v.committer_email != null && length(v.committer_email) > 0 }
}
output "git_repository_files_committer_name" {
  description = "Map of committer_name values across all git_repository_files, keyed the same as var.git_repository_files except keys with no committer_name are omitted"
  value       = { for k, v in azuredevops_git_repository_file.git_repository_files : k => v.committer_name if v.committer_name != null && length(v.committer_name) > 0 }
}
output "git_repository_files_content" {
  description = "Map of content values across all git_repository_files, keyed the same as var.git_repository_files except keys with no content are omitted"
  value       = { for k, v in azuredevops_git_repository_file.git_repository_files : k => v.content if v.content != null && length(v.content) > 0 }
}
output "git_repository_files_file" {
  description = "Map of file values across all git_repository_files, keyed the same as var.git_repository_files except keys with no file are omitted"
  value       = { for k, v in azuredevops_git_repository_file.git_repository_files : k => v.file if v.file != null && length(v.file) > 0 }
}
output "git_repository_files_overwrite_on_create" {
  description = "Map of overwrite_on_create values across all git_repository_files, keyed the same as var.git_repository_files except keys with no overwrite_on_create are omitted"
  value       = { for k, v in azuredevops_git_repository_file.git_repository_files : k => v.overwrite_on_create if v.overwrite_on_create != null }
}
output "git_repository_files_repository_id" {
  description = "Map of repository_id values across all git_repository_files, keyed the same as var.git_repository_files except keys with no repository_id are omitted"
  value       = { for k, v in azuredevops_git_repository_file.git_repository_files : k => v.repository_id if v.repository_id != null && length(v.repository_id) > 0 }
}

