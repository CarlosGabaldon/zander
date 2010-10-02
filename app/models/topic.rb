class Topic < ActiveRecord::Base
  belongs_to :syllabus
  has_and_belongs_to_many :materials
end
