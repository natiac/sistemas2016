class Pais < ApplicationRecord
  has_many :departamentos
  has_paper_trail
end
