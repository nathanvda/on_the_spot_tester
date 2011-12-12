begin
  version = File.read(Rails.root + 'VERSION')
  version.gsub!(/\s+/x,'') if version
rescue Errno::ENOENT => e
end
APP_VERSION = version || "_Please create RAILS_ROOT/VERSION_"