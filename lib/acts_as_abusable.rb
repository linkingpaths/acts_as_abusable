module LinkingPaths
  module Acts #:nodoc:
    module Abusable #:nodoc:

      def self.included(base)
        base.extend ClassMethods
      end
             
      module ClassMethods
        def acts_as_abusable
          has_many :abuses, :as => :resource do
            def confirmed
             find(:all, :conditions => ["confirmed = ?", true])
            end
            def pending
             find(:all, :conditions => ["confirmed = ?", false])
            end
          end
        
          include LinkingPaths::Acts::Abusable::InstanceMethods
        end                   
      end

      # Adds instance methods.
      module InstanceMethods
        def abuse?
          !self.abuses.confirmed.blank?
        end
      end

    end
  end
end