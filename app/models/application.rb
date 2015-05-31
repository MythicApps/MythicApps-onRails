class Application < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, email: true
  validates :school, presence: true
end
