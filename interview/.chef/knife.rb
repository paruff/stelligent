log_level                :debug
log_location             STDOUT
ssl_verify_mode          :verify_none
node_name                ENV['Chef_Node_Name'] || ENV['USER']
client_key               ENV['Chef_Client_Key'] || File.dirname(__FILE__) + '/' + ENV['USER'] + '.pem'
validation_client_name   'chef-validator'
validation_key           ENV['Chef_Validation_Key'] || File.dirname(__FILE__) + '/validation.pem'
chef_server_url          'https://chef.vistacore.us'
cache_type               'BasicFile'
cache_options( :path => '/var/chef/cache/checksums' )
cookbook_path [ File.dirname(__FILE__) + "/../chef/cookbooks" ]
file_backup_path "/var/chef/backup"
role_path "/var/chef/roles"
data_bag_path File.dirname(__FILE__) + "/../chef/data_bags"

json_attribs File.dirname(__FILE__) + "/../chef/node.json"
