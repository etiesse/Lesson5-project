variable "projectName" {
    type = string
    description = "Name of the system or environment"
    default ="Lesson5"
}

variable "environment" {
    type = string
    description = "Status of the project"
    default ="Education"
}

variable "resourceGroupName" {
    type = string
    description = "name of resourceGroupe"
    default = "rg-lesson5"
}

variable "location" {
    type = string
    description = "Azure location of terraform server environment"
    default = "westus2"
}

variable "serverDBName" {
    type = string
    description = "Name of DB Server"
    default = "lesson5dbserver"  
}

variable "DBName" {
    type = string
    description = "Name of DB"
    default = "lesson5DB"  
}

variable "AdminUserDBName" {
    type = string
    description = "Name of Admin Users DB"
    default = "lesson5AdminDB"  
}
 
 variable "AdminPwdUserDBName" {
    type = string
    description = "Password of Admin Users DB"
    default = "1Effr@#dfdDf0"  
}

variable "StorageAccountName" {
    type = string
    description = "Name of Storage Account"
    default = "lesson5storageaccount"  
}

variable "ContainerSAName" {
    type = string
    description = "Name Container of Storage Account"
    default = "images"  
}



