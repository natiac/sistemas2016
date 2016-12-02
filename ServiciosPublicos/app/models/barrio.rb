class Barrio < ApplicationRecord
  belongs_to :distrito
  has_many :personas
  has_paper_trail
end
