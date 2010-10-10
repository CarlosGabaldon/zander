class CreateMaterials < ActiveRecord::Migration
  def self.up
    create_table :materials do |t|
      t.string :name
      t.text :description
      t.string :type
      t.string :url

      t.timestamps
    end
  end

  def self.down
    drop_table :materials
  end
end
