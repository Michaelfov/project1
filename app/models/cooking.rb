# == Schema Information
#
# Table name: cookings
#
#  id          :bigint(8)        not null, primary key
#  title       :text
#  category_id :integer
#  step        :text
#  image       :text
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cooking < ApplicationRecord
  belongs_to :user, :optional => true
  has_and_belongs_to_many :materials
  has_and_belongs_to_many :sauces
end
