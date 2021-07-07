# -*- encoding: utf-8 -*-
# stub: rainbow 1.99.2 ruby lib

Gem::Specification.new do |s|
  s.name = "rainbow".freeze
  s.version = "1.99.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Marcin Kulik".freeze]
  s.date = "2014-01-24"
  s.description = "Colorize printed text on ANSI terminals".freeze
  s.email = ["m@ku1ik.com".freeze]
  s.homepage = "https://github.com/sickill/rainbow".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Colorize printed text on ANSI terminals".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
  end
end
