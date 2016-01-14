##############################################################
# SERVER SETTINGS

# IP Address to bind to (0.0.0.0 for ANY)
# Set to 127.0.0.1 if connections should only come from localhost
# and through the webserver proxy
server_bind		= 0.0.0.0

# Accept normal TCP connections (not recommended to disable)
server_tcp_enabled	= yes

# Port to bind to
server_tcp_port		= 236

# Accept unix pipe connections (not recommended to disable)
server_pipe_enabled	= yes

# Unix socket location
server_pipe_name	= /var/run/zarafa

# Priority unix socket location
server_pipe_priority	= /var/run/zarafa-prio

# Name for identifying the server in a multi-server environment
server_name = Zarafa

# Override the hostname of this server, used by Kerberos SSO if enabled
server_hostname =

# Database engine (mysql)
database_engine		= mysql

# Allow connections from normal users through the unix socket
allow_local_users	= yes

# local admin users who can connect to any store (use this for the zarafa-dagent)
# field is SPACE separated
# eg: local_admin_users = root vmail
local_admin_users	= root zarafa

# e-mail address of the Zarafa System user
system_email_address	= postmaster

# drop privileges and run the process as this user
run_as_user		= zarafa

# drop privileges and run the process as this group
run_as_group		= zarafa

# create a pid file for stopping the service via the init.d scripts
pid_file		= /var/run/zarafa-server.pid

# run server in this path (when not using the -F switch)
running_path = /

# session timeout for clients. Values lower than 300 will be upped to 300
# automatically. If the server hears nothing from a client in session_timeout
# seconds, then the session is killed.
session_timeout		= 300

# Socket to connect to license server
license_socket		= /var/run/zarafa-licensed

# Time (in seconds) to wait for a connection to the license server before 
# terminating the request.
license_timeout = 10

##############################################################
# LOG SETTINGS

# Logging method (syslog, file), syslog facility is 'mail'
log_method		= file

# Logfile (for log_method = file, '-' for stderr)
log_file		= /var/log/zarafa/server.log

# Loglevel (0=no logging, 5=full logging)
log_level		= 2

# Log timestamp - prefix each log line with timestamp in 'file' logging mode
log_timestamp		= 1

##############################################################
# AUDIT LOG SETTINGS

# Audit logging is by default not enabled
audit_log_enabled	= no

# Audit logging method (syslog, file), syslog facility is 'authpriv'
audit_log_method	= syslog

# Audit logfile (for log_method = file, '-' for stderr)
audit_log_file		= /var/log/zarafa/audit.log

# Audit loglevel (0=no logging, 1=full logging)
audit_log_level		= 1

# Audit log timestamp - prefix each log line with timestamp in 'file' logging mode
audit_log_timestamp	= 1

##############################################################
# MYSQL SETTINGS (for database_engine = mysql)

# MySQL hostname to connect to for database access
mysql_host		= localhost

# MySQL port to connect with (usually 3306)
mysql_port		= 3306

# The user under which we connect with MySQL
mysql_user		= zarafa

# The password for the user (leave empty for no password)
mysql_password		= @MYSQLPASSWORD@

# Override the default MySQL socket to access mysql locally
# Works only if the mysql_host value is empty or 'localhost'
mysql_socket		=

# Database to connect to
mysql_database		= zarafa

# Where to place attachments. Value can be 'database' or 'files'
attachment_storage	= files 

# When attachment_storage is 'files', use this path to store the files
attachment_path		= /var/lib/zarafa

# Compression level for attachments when attachment_storage is 'files'.
# Set compression level for attachments disabled=0, max=9
attachment_compression	= 6

##############################################################
#  SSL SETTINGS

# enable SSL support in server
server_ssl_enabled	= no

# Listen for SSL connections on this port
server_ssl_port		= 237

# Required Server certificate, contains the certificate and the private key parts
server_ssl_key_file	= /etc/zarafa/ssl/server.pem

# Password of Server certificate
server_ssl_key_pass	= replace-with-server-cert-password

# Required Certificate Authority of server
server_ssl_ca_file	= /etc/zarafa/ssl/cacert.pem

# Path with CA certificates, e.g. /etc/ssl/certs
server_ssl_ca_path	=

# Path of SSL Public keys of clients
sslkeys_path		= /etc/zarafa/sslkeys

##############################################################
# THREAD SETTINGS

# Number of server threads
# default: 8
threads				=	8

# Watchdog frequency. The number of watchdog checks per second.
# default: 1
watchdog_frequency	=	1

# Watchdog max age. The maximum age in ms of a task before a
# new thread is started.
# default: 500
watchdog_max_age	=	500

# Maximum SOAP keep_alive value
# default: 100
server_max_keep_alive_requests	=	100

# SOAP recv timeout value (time between requests)
# default: 5
server_recv_timeout	=	5

# SOAP read timeout value (time during requests)
# default: 60
server_read_timeout	=	60

# SOAP send timeout value
# default: 60
server_send_timeout	=	60

##############################################################
#  OTHER SETTINGS

# Softdelete clean cycle (in days) 0=never running
softdelete_lifetime	= 30

# Sync lifetime, removes all changes remembered for a client after x days of inactivity
sync_lifetime		= 90

# Set to 'yes' if all changes (for synchronization) to messages should be logged to the database
sync_log_all_changes = yes

# Set to 'yes' if you have Kerberos or NTLM correctly configured for single sign-on
enable_sso = no

# Set to 'yes' if you want to show the GAB to your users
enable_gab = yes

# Authentication can be through plugin (default, recommended), pam or kerberos
auth_method = plugin

# If auth_method is set to pam, you should provide the pam service name
pam_service = passwd


#############################################################
# CACHE SETTINGS
#
# To see the live cache usage, use 'zarafa-stats --system'.

# Size in bytes of the 'cell' cache (should be set as high as you can afford to set it)
cache_cell_size				= 268435456 

# Size in bytes of the 'object' cache
cache_object_size			= 5242880

# Size in bytes of the 'indexed object' cache
cache_indexedobject_size	= 16777216

# Size in bytes of the userquota details
cache_quota_size			= 1048576

# Lifetime for userquota details
cache_quota_lifetime		= 1

# Size in bytes of the acl cache
cache_acl_size				= 1048576

# Size in bytes of the store id/guid cache
cache_store_size			= 1048576

# Size in bytes of the 'user id' cache (this is allocated twice)
cache_user_size				= 1048576

# Size in bytes of the 'user details' cache
cache_userdetails_size		= 26214400

# Lifetime for user details
cache_userdetails_lifetime	= 0

# Size in bytes of the server details (multiserver setups only)
cache_server_size			= 1048576

# Lifetime for server details (multiserver setups only)
cache_server_lifetime	= 30


##############################################################
#  QUOTA SETTINGS

# The default Warning Quota Level. Set to 0 to disable this level.
# The user will receive an email when this level is reached. Value is in Mb. Default value is 0.
quota_warn		= 0

# The default Soft Quota Level. Set to 0 to disable this level.
# The user will still receive mail, but sending new mail is prohibited, until objects are removed from the store.
# VALUE is in Mb. Default value is 0.
quota_soft		= 0

# The default Hard Quota Level. Set to 0 to disable this level.
# The user can not receive and send mail, until objects are removed from the store.
# Value is in Mb. Default value is 0.
quota_hard		= 0

# The default Warning Quota Level for multitenant public stores. Set to 0 to disable this level.
# The tenant administrator will receive an email when this level is reached. Value is in Mb. Default value is 0.
companyquota_warn      = 0


##############################################################
#  USER PLUGIN SETTINGS

# Name of the plugin that handles users
# Required, default = ldap
# Values: ldap, unix, db, ldapms (available in enterprise license)
user_plugin		= ldap

# configuration file of the user plugin, examples can be found in /usr/share/zarafa/example-config
user_plugin_config	= /etc/zarafa/ldap.cfg

# location of the zarafa plugins
# if you have a 64bit distribution, this probably should be changed to /usr/lib64/zarafa
plugin_path		= /usr/lib/zarafa

# scripts which create stores for users from an external source
# used for ldap and unix plugins only
createuser_script		=	/etc/zarafa/userscripts/createuser
deleteuser_script		=	/etc/zarafa/userscripts/deleteuser
creategroup_script		=	/etc/zarafa/userscripts/creategroup
deletegroup_script		=	/etc/zarafa/userscripts/deletegroup
createcompany_script	=	/etc/zarafa/userscripts/createcompany
deletecompany_script	=	/etc/zarafa/userscripts/deletecompany

# Set this option to 'yes' to skip the creation and deletion of new users
# The action will be logged, so you can see if your changes to the plugin
# configuration are correct.
user_safe_mode = no

##############################################################
# MISC SETTINGS

# Thread size in KB, default is 512
# WARNING: Do not set too small, your server WILL crash
thread_stacksize = 512

# Enable multi-tenancy environment
# When set to true it is possible to create tenants within the
# zarafa instance and assign all users and groups to particular
# tenants.
# When set to false, the normal single-tenancy environment is created.
enable_hosted_zarafa = false

# Enable multi-server environment
# When set to true it is possible to place users and tenants on
# specific servers.
# When set to false, the normal single-server environment is created.
enable_distributed_zarafa = false

# Display format of store name
# Allowed variables:
#  %u Username
#  %f Fullname
#  %c Teantname
# default: %f
storename_format = %f

# Loginname format (for Multi-tenancy installations)
# When the user does not login through a system-wide unique
# username (like the email address) a unique name is created
# by combining the username and the tenantname.
# With this configuration option you can set how the
# loginname should be built up.
#
# Note: Do not use the = character in the format.
#
# Allowed variables:
#  %u Username
#  %c Teantname 
#
# default: %u
loginname_format = %u

# Set to yes for Windows clients to be able to download the latest
# Zarafa Outlook client from the Zarafa server
client_update_enabled = false

# Place the correct Zarafa Outlook Client in this directory for
# Windows clients to download through the Zarafa server
client_update_path = /var/lib/zarafa/client

# Recieve update information from the client (0 = disabled, 1 = only on error, 2 = log always)
client_update_log_level = 1

# Log location for the client auto update files
client_update_log_path = /var/log/zarafa/autoupdate

# Everyone is a special internal group, which contains every user and group
# You may want to disable this group from the Global Addressbook by setting
# this option to 'yes'. Administrators will still be able to see the group.
hide_everyone = no

# System is a special internal user, which has super-admin privileges
# You may want to disable this user from the Global Addressbook by setting
# this option to 'yes'. Administrators will still be able to see the user.
hide_system = yes 

# Use Indexing service for faster searching.
# Enabling this option requires the zarafa-indexer service to
# be running.
index_services_enabled = no

# Path to the zarafa-indexer service, this option is only required
# if the server is going to make use of the indexing service.
index_services_path = file:///var/run/zarafa-indexer

# Time (in seconds) to wait for a connection to the zarafa-indexer service
# before terminating the indexed search request.
index_services_search_timeout = 10

# Minimum length of a search term in characters to enable prefix searching
index_services_prefix_chars = 3

# Allow enhanced ICS operations to speedup synchronization with cached profiles.
# default: yes
enable_enhanced_ics = yes

# Synchronize GAB users on every open of the GAB (otherwise, only on 
# zarafa-admin --sync)
sync_gab_realtime = yes

# Disable features for users. Default all features are disabled. This
# list is space separated. Currently valid values: imap
disabled_features = imap pop3

# Maximum number of deferred records in total
max_deferred_records = 0

# Maximum number of deferred records per folder
max_deferred_records_folder = 20
