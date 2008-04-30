module LinkingPaths
  module Acts #:nodoc:
    module Abusable #:nodoc:

      def self.included(base)
        base.extend ClassMethods
      end
             
      module ClassMethods
        def acts_as_abusable
          has_many :abuses, :as => :resource
        
          include Linkingpaths::Acts::Abusable::InstanceMethods
        end                   
      end

      # Adds instance methods.
      module InstanceMethods
        def abuse?
          self.abuses.size > 0
        end
        
        def confirm_as_abuse!
          self.confirmed = true
          self.save unless self.new_record?
        end
      end

    end
  end
end