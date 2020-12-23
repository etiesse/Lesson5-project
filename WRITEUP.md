# Write-up Template

### Analyze, choose, and justify the appropriate resource option for deploying the app.

*For **both** a VM or App Service solution for the CMS app:*
- *Analyze costs, scalability, availability, and workflow*
- *Choose the appropriate solution (VM or App Service) for deploying the app*
- *Justify your choice*

### Assess app changes that would change your decision.

*Detail how the app and any other needs would have to change for you to change your decision in the last section.* 
#
# -- Etape 1
#
Creation du Ressource Group : Lesson5 / West US 2
#
# -- etape 2
#
DBServeur :
    - Server     : lesson5dbserver.database.windows.net  / West US 2
    - Admin User : lesson5AdminDB / 1Effr@#dfdDf0
DB : 
    - lesson5DB

# Mode Commande
# ---------------------------------
# ----------- DataBase ------------
# --------------------------------- 
# Server SQL Server
    az sql server create --admin-user lesson5AdminDB --admin-password 1Effr@#dfdDf0 \
    --name lesson5dbserver --resource-group Lesson5 --location westus2 \
    --enable-public-network true --verbose
    az sql server firewall-rule create \
# Rules of Firewall
az sql server firewall-rule create -g Lesson5 -s lesson5dbserver -n lessondbserveraccess --start-ip-address 0.0.0.0 --end-ip-address 0.0.0.0 --verbose
az sql server firewall-rule create -g Lesson5 -s lesson5dbserver -n lessondbserverclientip --start-ip-address 82.121.194.0 -end-ip-address 82.121.194.255 --verbose
# DataBase
az sql db create --name lesson5DB --resource-group Lesson5 --server lesson5dbserver --tier Basic --verbose
#
# -- etape 3
#
DBLOB :
    - Storage Account : lesson5storageaccount / West US 2
    - Storage Key     : o/uZ29FKxiQ/IhatBS4Aj/oZYJ5FuMgCWz5e8/AcsVLThM8vO/6jjQnKEbh15k6bQ0UkMLbWwQrOPrrZAmHozQ==
    - Storage         : images
# Mode Commande
az storage account create --name lesson5storageaccount  --resource-group Lesson5  --location westus2 --min-tls-version TLS1_2 
#
az storage container create --account-name lesson5storageaccount --name images --auth-mode login --public-access container


az webapp up --sku F1 --name lesson5Webapp  --resource-group Lesson5 --location westus2
