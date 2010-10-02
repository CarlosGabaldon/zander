class Discussion < ActiveRecord::Base
  belongs_to :Material
  has_many :posts
end
