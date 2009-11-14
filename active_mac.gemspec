# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{active_mac}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Robert Matei"]
  s.date = %q{2009-11-13}
  s.description = %q{Provides an ORM interface to the data of any AppleScript-enabled application. Useful for querying and scripting any Mac application in an intuitive way - you can pretend your iTunes library is a relational database, for instance.}
  s.email = ["rmatei@gmail.com"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "PostInstall.txt"]
  s.files = ["History.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc", "Rakefile", "lib/active_mac.rb", "script/console", "script/destroy", "script/generate", "test/test_active_mac.rb", "test/test_helper.rb"]
  s.homepage = %q{http://github.com/rmatei/active_mac}
  s.post_install_message = %q{PostInstall.txt}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{active_mac}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Provides an ORM interface to the data of any AppleScript-enabled application}
  s.test_files = ["test/test_active_mac.rb", "test/test_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rb-appscript>, [">= 0.5.3"])
      s.add_runtime_dependency(%q<activesupport>, [">= 2.2.2"])
      s.add_development_dependency(%q<hoe>, [">= 2.3.3"])
    else
      s.add_dependency(%q<rb-appscript>, [">= 0.5.3"])
      s.add_dependency(%q<activesupport>, [">= 2.2.2"])
      s.add_dependency(%q<hoe>, [">= 2.3.3"])
    end
  else
    s.add_dependency(%q<rb-appscript>, [">= 0.5.3"])
    s.add_dependency(%q<activesupport>, [">= 2.2.2"])
    s.add_dependency(%q<hoe>, [">= 2.3.3"])
  end
end
