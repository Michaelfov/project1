# == Schema Information
#
# Table name: categories
#
#  id         :bigint(8)        not null, primary key
#  title      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ApplicationRecord
  has_many :cookings
end
