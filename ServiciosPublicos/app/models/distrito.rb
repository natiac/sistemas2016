class Distrito < ApplicationRecord
  belongs_to :departamento
  has_many :barrios
  has_paper_trail
end
