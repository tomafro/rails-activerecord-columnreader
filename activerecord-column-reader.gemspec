# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{activerecord-column-reader}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tom Ward"]
  s.date = %q{2011-03-13}
  s.email = %q{tom@popdog.net}
  s.extra_rdoc_files = [
    "README"
  ]
  s.files = [
    ".gitignore",
     "Gemfile",
     "Gemfile.lock",
     "README",
     "Rakefile",
     "activerecord-column-reader.gemspec",
     "lib/activerecord-column-reader.rb",
     "lib/penknife/active_record.rb",
     "lib/penknife/active_record/column_reader.rb",
     "spec/penknife/column_reader_spec.rb",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://tomafro.net}
  s.rdoc_options = ["--main", "README"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.5.2}
  s.summary = %q{Simple ActiveRecord optimization}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, ["~> 3.0.3"])
      s.add_development_dependency(%q<rspec>, ["~> 2.1.0"])
      s.add_development_dependency(%q<rake>, ["~> 0.8.7"])
      s.add_development_dependency(%q<sqlite3-ruby>, ["~> 1.3.1"])
      s.add_development_dependency(%q<sdoc>, ["~> 0.2.20"])
    else
      s.add_dependency(%q<activerecord>, ["~> 3.0.3"])
      s.add_dependency(%q<rspec>, ["~> 2.1.0"])
      s.add_dependency(%q<rake>, ["~> 0.8.7"])
      s.add_dependency(%q<sqlite3-ruby>, ["~> 1.3.1"])
      s.add_dependency(%q<sdoc>, ["~> 0.2.20"])
    end
  else
    s.add_dependency(%q<activerecord>, ["~> 3.0.3"])
    s.add_dependency(%q<rspec>, ["~> 2.1.0"])
    s.add_dependency(%q<rake>, ["~> 0.8.7"])
    s.add_dependency(%q<sqlite3-ruby>, ["~> 1.3.1"])
    s.add_dependency(%q<sdoc>, ["~> 0.2.20"])
  end
end
