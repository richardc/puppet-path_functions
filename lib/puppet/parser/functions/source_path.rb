Puppet::Parser::Functions::newfunction(:source_path, :type => :rvalue) do |args|
  args.collect do |uri|
    uri
  end
end
