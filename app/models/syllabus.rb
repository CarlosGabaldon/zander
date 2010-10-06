class Syllabus < ActiveRecord::Base
  belongs_to :course
  belongs_to :topics
end
