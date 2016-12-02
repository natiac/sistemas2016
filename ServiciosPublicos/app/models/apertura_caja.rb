class AperturaCaja < ApplicationRecord
	belongs_to :persona
	belongs_to :caja
  has_many :movimientos_cajas
	validates :monto_apertura, :presence => true
	validates :caja_id, :presence => true

  has_paper_trail

	after_create :set_estado_abierto
  before_create :set_hora_apertura
  after_update :set_hora_cierre
	 def set_estado_abierto
    caja = Caja.find(self.caja_id)
    caja.estado = 'Abierto'
    caja.save
  end

  def set_estado_cerrado
    caja = Caja.find(self.caja_id)
    caja.estado = 'Cerrado'
    caja.save
  end

  def set_hora_apertura
    self.hora_apertura = Time.zone.now
  end
  def set_hora_cierre
    self.cierre = Time.zone.now
  end
end
