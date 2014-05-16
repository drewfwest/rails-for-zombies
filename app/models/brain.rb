class Brain < ActiveRecord::Base
  attr_accessible :status, :flavor
  belongs_to :zombie
end