rvm_gem 'thin' do
  action :install
end

rvm_wrapper "bootup" do
  binary "thin"
end

directory "/etc/thin" do
  action :create
  mode '0755'
  owner node['thin']['user']
  group node['thin']['group']
end
