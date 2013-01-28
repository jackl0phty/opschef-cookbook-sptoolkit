#
# Cookbook Name:: sptoolkit
# Attributes:: default 
# Copyright 2011, Gerald L. Hevener, Jr, M.S., Marshall University
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

# Set database options
node.set['sptoolkit']['db_user'] = "spt"
node.set['sptoolkit']['db_name'] = "spt"

# Random password is generated in default.rb
node.set['sptoolkit']['db_pass'] = ""

# Set WWW root directory
node.set['sptoolkit']['www_root_dir'] = "/var/www"

# Set sptoolkit version to install
node.set['sptoolkit']['version'] = '0.70'

# Apache vhost settings for spt app
node.set['sptoolkit']['server_name'] =  node['hostname']
node.set['sptoolkit']['server_aliases'] = node['fqdn']
node.set['sptoolkit']['docroot'] = "#{default['sptoolkit']['www_root_dir']}/spt"
node.set['sptoolkit']['apache_error_log'] = "error.log"
node.set['sptoolkit']['application_name'] = "spt"
