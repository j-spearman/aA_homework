class Person < ApplicationRecord
  validates :name, presence: true


  belongs_to(:house, {
    primary_key: :id, #house id
    foreign_key: :house_id, #house table
    class_name: :House
  })
  # has_one :house,
  #   primary_key: :id,
  #   foreign

end