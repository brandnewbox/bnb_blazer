Airbrake.configure do |config|
  config.host = 'https://errbit.brandnewops.com'
  config.project_id = 1 # required, but any positive integer works
  config.project_key = '9d9b81e9ae0b8db7b9d522c9abd8cbbf'

  # airbrake.io supports various features that are out of scope for
  # Errbit. Disable them:
  config.job_stats           = false
  config.query_stats         = false
  config.performance_stats   = false
  config.remote_config       = false
end

# Rancher sends a SIGTERM signal to kill containers and we're fine with that so we can have Airbrake ignore that
Airbrake.add_filter do |notice|
  if notice[:errors].any? { |error| error[:type] == "SignalException" && error[:message] == "SIGTERM" }
    notice.ignore!
  end
end