class Post < ActiveRecord::Base
  belongs_to :user

  has_many :taggings

  has_many :ministers, through: :taggings

  acts_as_votable

  accepts_nested_attributes_for :ministers
end
