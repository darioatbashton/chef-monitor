sensu_check "api_endpoint" do
  command "check-http.rb -q UP -u http://usagereporting.ENVIRONMENT.bl.store.bbc.com/bl/health"
  handlers ["pagerduty"]
  standalone true
  interval 30
  additional(:notification => "Playbook -> https://git.bashton.net/Bashton/bbcstore-bl/src/develop/bl-infrastructure/playbooks/api_endpoint.md", :occurrences => 5)
end

