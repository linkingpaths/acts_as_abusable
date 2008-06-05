class Abuse < ActiveRecord::Base
  belongs_to :resource, :polymorphic => true
  
  def confirm!
    self.confirmed = true
    self.save unless self.new_record?
  end
  
end