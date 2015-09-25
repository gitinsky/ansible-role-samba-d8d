Eye.application 'samba' do
  working_dir '/'
  stdall '/var/log/eye/samba-stdall.log' # stdout,err logs for processes by default
  trigger :flapping, times: 10, within: 1.minute, retry_in: 3.minutes
  check :cpu, every: 10.seconds, below: 100, times: 3 # global check for all processes

  process :samba do
    pid_file '/var/run/samba/smbd.pid'
    start_command '/etc/init.d/samba start'
    daemonize true
    start_timeout 10.seconds
    stop_timeout 5.seconds
  end
end
