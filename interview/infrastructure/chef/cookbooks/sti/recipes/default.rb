#
# Cookbook Name:: sti
# Recipe:: default
#
# Copyright 2008-2013, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


directory "create apache docroot as apache" do
  action :create
  owner 'apache'
  group 'apache'
  mode '0755'
  path "/etc/httpd/htdocs/"
  recursive true
end

# cookbook_file "index.html" do
#   action :create
#   owner 'apache'
#   group 'apache'
#   mode '0755'
#   path "/etc/httpd/htdocs/index.html"
# end


file "index.html" do
  action :create
  path "/etc/httpd/htdocs/index.html"
  backup 5
  owner "apcahe"
  group "apache"
  mode "0644"
  content "<html><body>Hello Stelligent</body></html>"
end

