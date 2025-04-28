variable "project_url" {
  type        = string
  description = "Url to Git repository with sandbox definition, as obtained by Clone with SSH or HTTPS."
}

variable "rev" {
  type        = string
  description = "Git revision of the Git repository from project_url to use."
}

variable "kypo_endpoint" {
  type        = string
  description = "Url to the KYPO CRP instance."
}
