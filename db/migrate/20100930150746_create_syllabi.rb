class CreateSyllabi < ActiveRecord::Migration
  def self.up
    create_table :syllabi do |t|
      t.integer :course_id
      t.integer :topic_id
      t.timestamps
    end
  end

  def self.down
    drop_table :syllabi
  end
end
