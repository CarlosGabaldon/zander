class MaterialsTopics < ActiveRecord::Migration
  def self.up
    create_table :materials_topics,:id => false do |t|
      t.integer :material_id
      t.integer :topic_id

      t.timestamps
    end
  end

  def self.down
    drop_table :materials_topics
  end
end
