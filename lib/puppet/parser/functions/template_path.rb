Puppet::Parser::Functions::newfunction(:template_path, :type => :rvalue) do |args|
  args.collect do |file|
    Puppet::Parser::Files.find_template(file, self.compiler.environment.to_s)
  end
end
