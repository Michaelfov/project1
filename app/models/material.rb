# == Schema Information
#
# Table name: materials
#
#  id         :bigint(8)        not null, primary key
#  name       :text
#  image      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Material < ApplicationRecord
  has_and_belongs_to_many :cookings
end
