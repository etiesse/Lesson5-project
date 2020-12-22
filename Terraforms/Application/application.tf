provider azuread {
}  
provider random { 
}

resource "azuread_application" "Lesson5" {
  name                       = var.AppRegistrationSAName
  reply_urls                 = ["https://localhost:5555/getAToken"]
  logout_url                 = "https://localhost:5555/login"
  prevent_duplicate_names    = true
  group_membership_claims    = "All"
  available_to_other_tenants = true
  public_client              = true
  owners = [ "c4915770-7149-4bdb-b292-137162f9bedb" ]
}

