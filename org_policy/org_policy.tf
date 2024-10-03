# ----------------------------------------------------------------------------------------------------------------------
# Organization policy
# ----------------------------------------------------------------------------------------------------------------------
resource "google_project_organization_policy" "allowedPolicyMemberDomains" {
  project     = var.project_id
  constraint = "iam.allowedPolicyMemberDomains"
  list_policy {
    allow {
      all = true
    }
  }
}