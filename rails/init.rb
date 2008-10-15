require 'acts_as_abusable'

ActiveRecord::Base.class_eval do
  include LinkingPaths::Acts::Abusable
end
