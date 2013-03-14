Puppet::Parser::Functions::newfunction(:source_path, :type => :rvalue) do |args|
  args.collect do |uri|
    uri =~ /^puppet:\/\/.*?\/modules\/(.*?)\/(.*)/ or next
    module_name = $1
    relative_path = $2
    self.environment.module(module_name).path + "/files/" + relative_path
  end
end
