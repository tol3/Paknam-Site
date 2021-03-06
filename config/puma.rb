workers Integer(ENV['PUMA_WORKERS'] || 1)
threads Integer(ENV['MIN_THREADS']  || 1), Integer(ENV['MAX_THREADS'] || 5)

preload_app!

rackup      DefaultRackup
port        ENV['PORT']     || 5555
environment ENV['RACK_ENV'] || 'production'

pidfile '/root/domains/Paknam-Site/tmp/pids/puma.pid'

on_worker_boot do
  # worker specific setup
  puts 'Worker boot...'
  ActiveSupport.on_load(:active_record) do
    ActiveRecord::Base.establish_connection
  end
end


tag 'Paknam'

on_restart do
	puts 'On restart...'
end

