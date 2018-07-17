### m-account setup
https://thomsonreuters.service-now.com/sp/?id=sc_cat_item&sys_id=5eb590f013e8f6009c89b53a6144b0f6

- [.] 1. M-account setup - You already have the link to setup
- [ ] 2. Vault login to get m-account password (you need to have first m-account setup and then you can use this link to login with your network credentials - https://thevault.int.thomsonreuters.com/PasswordVault/logon.aspx?ReturnUrl=%2fPasswordVault%2fdefault.aspx
- [ ] 3. M-account access to “a-tr-corporate-preprod” account with ECP Identity Access and Management - Josh can help us getting access to this account.
- [ ] 4. AWS console access using m-account and connecting to appropriate account - https://mfs.thomsonreuters.com/adfs/ls/idpinitiatedsignon
- [√] 5. Cloud-tool & cloud-tool-fr installation - https://thehub.thomsonreuters.com/docs/DOC-2609692#jive_content_id_Installation
- [√] 6. Git access to download code - https://git.sami.int.thomsonreuters.com/MRCloud
- [√]   - API Testing code base - https://git.sami.int.thomsonreuters.com/MRCloud/aws-registry-apitesting 

### instal ststoken-ft 
https://git.sami.int.thomsonreuters.com/enterprise-cloud-fr/ststoken-fr/blob/master/INSTALL.md

[N] ➜  workspace set bams_url https://bams-sami.int.thomsonreuters.com/artifactory/api/pypi/default.pypi.global/simple
[I] ➜  workspace pip install --extra-index-url $bams_url ststoken-fr
-> i install v 2.3.0

### password-vault-fr
https://git.sami.int.thomsonreuters.com/enterprise-cloud-fr/password-vault-fr/blob/master/INSTALL.md

-> installed v 3.0.0

### install cloud-tool-fr
Create a folder in your home directory called .pip

Create a file called pip.conf inside of the .pip directory
Add the following contents into your pip.conf configuration file:


[global]  
extra-index-url = https://bams-sami.int.thomsonreuters.com/artifactory/api/pypi/default.pypi.global/simple
  
-> cloud-tool-fr 5.0.0 installed

---
superb...ya once u get access then u shud be all good to run tests as well from ur local

ya u r right and not just m-account we need access to a-tr-corporate-preprod account to login to AWS console or awscli with a particular profile that you will create using cloud-tool-fr
