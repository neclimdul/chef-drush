# Author:: James Gilliland <jgilliland@apqc.org>
# Cookbook Name:: drush
# Recipe:: phar
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

log '[drush] phar (PHP archive) not supported' do
  level :warn
  not_if "php -m | grep 'Phar'"
end

directory node['drush']['install_dir'] do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
  recursive true
end

file = "#{node['drush']['install_dir']}/drush.phar"
remote_file file do
  source node['drush']['phar']['url']
  mode '0755'
  action :create
  not_if { ::File.exist?(file) }
end

link '/usr/bin/drush' do
  to "#{node['drush']['install_dir']}/drush.phar"
end
