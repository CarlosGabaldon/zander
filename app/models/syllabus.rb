class Syllabus < ActiveRecord::Base
  belongs_to :course
  has_many :topics
  set_table_name :syllabi
end
