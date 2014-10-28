
file_cache_path "/var/chef/cache"
cookbook_path [ File.dirname(__FILE__) + "/../chef/cookbooks" ]
file_backup_path "/var/chef/backup"
role_path "/var/chef/roles"

json_attribs File.dirname(__FILE__) + "/../chef/node.json"


log_level :debug
log_location STDOUT