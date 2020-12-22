# Lesson5-project / Terrforms

Dans Infra la description de l'archi

Vous devez :
1. installer terrforms (1 executable)
2. initialiser le projet via : terraform.exe init
3. Faire les MAJ 
4. valider le déploiement : terraform.exe plan
5. deployer via : terrform.exe apply   (4 minutes pour ce projet)
    - Affichage des variables néccessaires dans le fichier Config du projet.
    Exemple de résultat :
        Apply complete! Resources: 5 added, 0 changed, 0 destroyed.

        Outputs:

        BLOBAccountName = "lesson5storageaccount"
        BLOBContainerName = "images"
        BLOBStorgeKey = "+vFT9pAqoKBGXjw6fQqdyM2X1DdPbBPbGiUlouOH6s2MO2nciiuuItv5If8RMzDN47dMhv0gpIAtHbbakoG2ew=="
        PasswordUserSQLServer = "1Effr@#dfdDf0"
        SQLServerDB = "lesson5DB"
        SQLServerDBServerName = "lesson5dbserver.database.windows.net"
        UserSQLServer = "lesson5AdminDB" 
        

6. destruction de l'infrastructure via : terraform.exe destroy  (2 minutes pour le projet)
    Exemple de resultat :
        Destroy complete! Resources: 5 destroyed.