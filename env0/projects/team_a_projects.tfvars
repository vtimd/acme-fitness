projects = {
  dev = {
    name        = "NonProd"
    description = "This T-800 is back for more exciting Infrastructure as Code work"
    credential  = "devops_advocate_account"
    policy = {
      disable_destroy_environments  = false
      include_cost_estimation       = true
      number_of_environments        = "3"
      number_of_environments_total  = "10"
      requires_approval_default     = false
      skip_apply_when_plan_is_empty = true
      skip_redundant_deployments    = true
      continuous_deployment_default = true
      run_pull_request_plan_default = false
    }
  },
  prod = {
    name        = "Prod"
    description = "We're in production!"
    credential  = "Prod Demo Account"
    policy = {
      disable_destroy_environments  = true
      include_cost_estimation       = true
      number_of_environments        = null
      number_of_environments_total  = null
      requires_approval_default     = true
      skip_apply_when_plan_is_empty = true
      skip_redundant_deployments    = true
      continuous_deployment_default = false
      run_pull_request_plan_default = false
    }
  }
}

