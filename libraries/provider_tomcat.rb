#
# Cookbook Name:: tomcat
# Provider:: tomcat
#
# Author:: Bryan W. Berry <bryan.berry@gmail.com>
# Copyright 2012, Bryan W. Berry
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

require 'chef/provider'

class Chef
  class Provider
    class Tomcat < Chef::Provider
      
      def load_current_resource
        @current_resource = Chef::Resource::Tomcat.new(@new_resource.name)
      end

      def action_install
        Chef::Log.debug("jvm options are #{new_resource.jvm} for tomcat resource #{new_resource.name}")
        puts 'foo'
      end
      
    end
  end
end
