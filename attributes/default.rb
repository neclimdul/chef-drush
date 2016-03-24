# 
# Author:: David King <dking@xforty.com>
# Contributor:: Patrick Connolly <patrick@myplanetdigital.com>
# Cookbook Name:: drush
# Attributes:: default
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

# Options: git
default['drush']['install_method'] = "git"

# Used for drush install via git and make install (PEAR stores here by default).
default['drush']['install_dir'] = "/usr/share/php/drush"

# When installing this is the preferred state version (eg. 4.5.0). When
# installing via Git, this is a commit/tag/branch reference
# (eg. 6e4c1e22f0b / 8.0.3 / 8.x)
default['drush']['version'] = "8.x"

# Version number (without drupal major version) from
# http://drupal.org/project/drush_make
default['drush']['make']['version'] = "2.3"

# The console table recipe fails if a newer version is already installed.
default['drush']['console_table']['version'] = "1.1.6"
