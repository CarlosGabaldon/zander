class CreateSyllabuses < ActiveRecord::Migration
  def self.up
    create_table :syllabuses do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :syllabuses
  end
end
