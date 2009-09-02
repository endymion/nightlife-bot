class InitialVenueSchema < ActiveRecord::Migration
  def self.up
    create_table :venues, :force => true do |t|
      t.string  :name
      t.string  :city
      t.string  :state
      t.string  :country
      t.string  :address
      t.timestamps
    end
  end

  def self.down
    drop_table :venue
  end
end
