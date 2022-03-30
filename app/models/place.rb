# == Schema Information
#
# Table name: places
#
#  id         :bigint           not null, primary key
#  coordinate :string           not null
#  locale     :string           not null
#  name       :string           not null
#  place_type :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_places_on_locale                 (locale)
#  index_places_on_locale_and_coordinate  (locale,coordinate) UNIQUE
#
class Place < ApplicationRecord
  has_many :sights
end
