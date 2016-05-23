include_recipe "monitor::default"

sensu_gem "sensu-plugins-disk-checks"

cookbook_file "/etc/sensu/plugins/metrics-disk-usage.rb" do
  source "plugins/metrics-disk-usage.rb"
  mode 0755
end
