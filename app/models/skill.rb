class Skill < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_and_belongs_to_many :jobs
  accepts_nested_attributes_for :users, :jobs, allow_destroy: true
end
