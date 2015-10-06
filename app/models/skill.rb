class Skill < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_and_belongs_to_many :jobs
  accepts_nested_attributes_for :users, allow_destroy: true
  accepts_nested_attributes_for :jobs, allow_destroy: true
end
