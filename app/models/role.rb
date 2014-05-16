class Role < ActiveRecord::Base
  attr_accessible :title

  has_many :assignments
  has_many :zobmies, through: :assignments
end
