class Persona < ApplicationRecord
  belongs_to :tpersona
  has_many :cajas, dependent: :restrict_with_error
  has_many :users
  has_many :facturas
  has_one :apertura_caja, dependent: :restrict_with_error
  has_many :medidores
  has_paper_trail

  def nombre_completo
    "#{nombre}"
  end	
end
