variable "git_repository_files" {
  description = <<EOT
Map of git_repository_files, attributes below
Required:
    - content
    - file
    - repository_id
Optional:
    - author_email
    - author_name
    - branch
    - commit_message
    - committer_email
    - committer_name
    - overwrite_on_create
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    content             = string
    file                = string
    repository_id       = string
    author_email        = optional(string)
    author_name         = optional(string)
    branch              = optional(string)
    commit_message      = optional(string)
    committer_email     = optional(string)
    committer_name      = optional(string)
    overwrite_on_create = optional(bool)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.git_repository_files : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.repository_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.git_repository_files : (
        v.committer_name == null || (length(v.committer_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.git_repository_files : (
        v.committer_email == null || (length(v.committer_email) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.git_repository_files : (
        v.author_name == null || (length(v.author_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.git_repository_files : (
        v.author_email == null || (length(v.author_email) > 0)
      )
    ])
    error_message = "must not be empty"
  }
}

