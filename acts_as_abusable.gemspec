Gem::Specification.new do |s|
  s.name = %q{acts_as_abusable}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Linking Paths"]
  s.date = %q{2008-10-04}
  s.description = %q{Tiny plugin to mark any rails model instance as an abuse or site's community guideline violation.}
  s.email = ["aitor@linkingpaths.com"]
  s.files = ["MIT-LICENSE", "README.markdown", "Rakefile", "acts_as_abusable.gemspec", "generators", "generators/acts_as_abusable_migration", "generators/acts_as_abusable_migration/acts_as_abusable_migration_generator.rb", "generators/acts_as_abusable_migration/templates", "generators/acts_as_abusable_migration/templates/migration.rb", "init.rb", "lib", "lib/abuse.rb", "lib/acts_as_abusable.rb", "tasks", "tasks/acts_as_abusable_tasks.rake", "test", "test/acts_as_abusable_test.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/linkingpaths/acts_as_abusable}
  s.post_install_message = %q{
For more information on acts_as_abusable, see http://github.com/linkingpaths/acts_as_abusable

}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{acts_as_abusable}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{Tiny plugin to mark any rails model instance as an abuse or site's community guideline violation.}

end
