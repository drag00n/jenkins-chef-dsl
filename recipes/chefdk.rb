# in the future, maybe use this instead of installing Gems.

chefdk_file = 'chefdk_0.1.0-1_amd64.deb'
remote_file "#{Chef::Config[:file_cache_path]}/#{chefdk_file}" do
  source "http://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/#{chefdk_file}"
end

dpkg_package "#{Chef::Config[:file_cache_path]}/#{chefdk_file}" do
  action :install
end
