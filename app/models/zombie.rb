class Zombie < ActiveRecord::Base
  attr_accessible :name, :age, :email, :rotting
  validates_presence_of :age

  has_one :brain, dependent: :destroy
  has_many :assignments
  has_many :roles, through: :assignments


  scope :rotting, where(rotting: true)
  scope :fresh, where("age < 20")
  scope :recent, order("created_at desc").limit(3)

  before_save :make_rotting

  def make_rotting
    self.rotting = true if age > 20
  end

end
