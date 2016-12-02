class Departamento < ApplicationRecord
  belongs_to :pais
  has_many :distritos
  has_paper_trail
end
