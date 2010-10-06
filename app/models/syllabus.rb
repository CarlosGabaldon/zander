class Syllabus < ActiveRecord::Base
  belongs_to :course
  belongs_to :topics
  set_table_name :syllabi
end
