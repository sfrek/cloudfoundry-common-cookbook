git node['cloudfoundry_common']['vcap']['install_path'] do
  repository        node['cloudfoundry_common']['vcap']['repo']
  reference         node['cloudfoundry_common']['vcap']['reference']
  user              node['cloudfoundry_common']['user']
  depth             1 # Only fetch the latest revision
  enable_submodules true
  action :sync
end
