# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{devise_pam_authenticatable}
  s.version = "1.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["James Wilson"]
  s.date = %q{2011-01-13}
  s.description = %q{For authenticating against PAM (Pluggable Authentication Modules)}
  s.email = %q{jwilson@lithiumcorp.com}
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    ".rvmrc",
    "MIT-LICENSE",
    "README.md",
    "Rakefile",
    "VERSION",
    "devise_pam_authenticatable.gemspec",
    "lib/devise_pam_authenticatable.rb",
    "lib/devise_pam_authenticatable/model.rb",
    "lib/devise_pam_authenticatable/pam_adapter.rb",
    "lib/devise_pam_authenticatable/routes.rb",
    "lib/devise_pam_authenticatable/strategy.rb",
    "rails/init.rb"
  ]
  s.homepage = %q{http://github.com/jwilson511/devise_pam_authenticatable}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.4.1}
  s.summary = %q{Devise PAM authentication module using rpam}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<devise>, ["> 1.1.0"])
      s.add_runtime_dependency(%q<rpam>, [">= 0"])
    else
      s.add_dependency(%q<devise>, ["> 1.1.0"])
      s.add_dependency(%q<rpam>, [">= 0"])
    end
  else
    s.add_dependency(%q<devise>, ["> 1.1.0"])
    s.add_dependency(%q<rpam>, [">= 0"])
  end
end

