class ActsAsAbusableMigration < ActiveRecord::Migration

  def self.up
    create_table :abuses do |t|
      t.column  :email, :string
      t.column  :title, :string
      t.column  :referer, :string      
      t.column  :description, :string
      t.column  :confirmed, :boolean, :default => false
      t.column  :resource_id, :integer
      t.column  :resource_type, :string
      t.column  :created_at, :datetime
    end
  end
  
  def self.down
    drop_table :abuses
  end
  
end