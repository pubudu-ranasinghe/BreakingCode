class Post < ActiveRecord::Base
  belongs_to :user

  has_many :taggings

  has_many :ministers, through: :taggings

  acts_as_votable

  accepts_nested_attributes_for :ministers

  has_attached_file :cover, styles: { medium: "1200x500#", thumb: "300x250#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
end
