class CreateCoves < ActiveRecord::Migration
  def self.up
    create_table :coves do |t|
      t.string :title
      t.timestamps
    end
  end

  def self.down
    drop_table :coves
  end
end