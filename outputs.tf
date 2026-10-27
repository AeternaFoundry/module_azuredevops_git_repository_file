output "git_repository_files_id" {
  description = "Map of id values across all git_repository_files, keyed the same as var.git_repository_files"
  value       = { for k, v in azuredevops_git_repository_file.git_repository_files : k => v.id }
}
output "git_repository_files_author_email" {
  description = "Map of author_email values across all git_repository_files, keyed the same as var.git_repository_files"
  value       = { for k, v in azuredevops_git_repository_file.git_repository_files : k => v.author_email }
}
output "git_repository_files_author_name" {
  description = "Map of author_name values across all git_repository_files, keyed the same as var.git_repository_files"
  value       = { for k, v in azuredevops_git_repository_file.git_repository_files : k => v.author_name }
}
output "git_repository_files_branch" {
  description = "Map of branch values across all git_repository_files, keyed the same as var.git_repository_files"
  value       = { for k, v in azuredevops_git_repository_file.git_repository_files : k => v.branch }
}
output "git_repository_files_commit_message" {
  description = "Map of commit_message values across all git_repository_files, keyed the same as var.git_repository_files"
  value       = { for k, v in azuredevops_git_repository_file.git_repository_files : k => v.commit_message }
}
output "git_repository_files_committer_email" {
  description = "Map of committer_email values across all git_repository_files, keyed the same as var.git_repository_files"
  value       = { for k, v in azuredevops_git_repository_file.git_repository_files : k => v.committer_email }
}
output "git_repository_files_committer_name" {
  description = "Map of committer_name values across all git_repository_files, keyed the same as var.git_repository_files"
  value       = { for k, v in azuredevops_git_repository_file.git_repository_files : k => v.committer_name }
}
output "git_repository_files_content" {
  description = "Map of content values across all git_repository_files, keyed the same as var.git_repository_files"
  value       = { for k, v in azuredevops_git_repository_file.git_repository_files : k => v.content }
}
output "git_repository_files_file" {
  description = "Map of file values across all git_repository_files, keyed the same as var.git_repository_files"
  value       = { for k, v in azuredevops_git_repository_file.git_repository_files : k => v.file }
}
output "git_repository_files_overwrite_on_create" {
  description = "Map of overwrite_on_create values across all git_repository_files, keyed the same as var.git_repository_files"
  value       = { for k, v in azuredevops_git_repository_file.git_repository_files : k => v.overwrite_on_create }
}
output "git_repository_files_repository_id" {
  description = "Map of repository_id values across all git_repository_files, keyed the same as var.git_repository_files"
  value       = { for k, v in azuredevops_git_repository_file.git_repository_files : k => v.repository_id }
}

