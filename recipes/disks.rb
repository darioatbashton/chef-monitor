include_recipe "monitor::_disks"

sensu_check "disks_usage" do
  command "check-disk-usage.rb"
  handlers ["default"]
  standalone true
  interval 30
end

sensu_check "metrics-disk-usage" do
  type "metric"
  command "metrics-disk-usage.rb"
  handlers ["metrics"]
  standalone true
  interval 30
end
