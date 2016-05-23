include_recipe "monitor::_disks"

sensu_check "disks_usage" do
  command "check-disk-usage.rb"
  handlers ["pagerduty"]
  standalone true
  interval 30
  additional(:notification => "Playbook -> FIXME", :occurrences => 5)
end

sensu_check "metrics-disk-usage" do
  type "metric"
  command "metrics-disk-usage.rb"
  handlers ["metrics"]
  standalone true
  interval 30
end
