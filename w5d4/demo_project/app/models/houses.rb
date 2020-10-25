class House < ApplicationRecord
  validates :name, presence: true


  has_many :person,
    primary_key: :id,
    class_name: :person

  has_many(:people {
    through: :people,
  })

end