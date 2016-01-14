############################
# Credential Configuration #
############################
# Notes: you can specify two differents configuration if you use a
# master ldap for writing access and a slave ldap server for reading access
# By default, we will use the same DN (so it will work for standard Samba
# release)
slaveDN="uid=LDAP Admin,ou=System Accounts,@SUFFIX@"
slavePw="@PASSWORD@"
masterDN="uid=LDAP Admin,ou=System Accounts,@SUFFIX@"
masterPw="@PASSWORD@"
