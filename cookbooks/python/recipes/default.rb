#
# Cookbook:: python
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

package 'python'
package 'python-pip'
package 'libncurses5-dev'

execute 'pip_install' do
  command 'pip install --upgrade pip'
  command 'pip  install -r /home/vagrant/uberapp/requirements.txt'
end
