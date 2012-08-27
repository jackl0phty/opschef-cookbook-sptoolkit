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
default['sptoolkit']['db_user'] = "spt"
default['sptoolkit']['db_name'] = "spt"

# Random password is generated in default.rb
default['sptoolkit']['db_pass'] = ""

# Set WWW root directory
default['sptoolkit']['www_root_dir'] = "/var/www"

# Apache vhost settings for spt app
default['sptoolkit']['server_name'] =  node['hostname']
default['sptoolkit']['server_aliases'] = node['fqdn']
default['sptoolkit']['docroot'] = "#{default['sptoolkit']['www_root_dir']}/spt"
default['sptoolkit']['apache_error_log'] = "error.log"
default['sptoolkit']['application_name'] = "spt"
