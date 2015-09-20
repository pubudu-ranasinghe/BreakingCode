class Tagging < ActiveRecord::Base
  belongs_to :post
  belongs_to :minister
end
