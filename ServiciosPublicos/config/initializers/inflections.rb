# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end

ActiveSupport::Inflector.inflections(:en) do |inflect|
	inflect.irregular 'medidor', 'medidores'
	inflect.irregular 'tipo_servicio', 'tipos_servicios'
	inflect.irregular 'pais', 'paises'
	inflect.irregular 'tipo_persona', 'tipos_personas'
	inflect.irregular 'rol', 'roles'
	inflect.irregular 'tarjeta', 'tarjetas'
	inflect.irregular 'forma_pago', 'formas_pagos'
	inflect.irregular 'movimiento_caja', 'movimientos_cajas'
	inflect.irregular 'cuentas_por_plan', 'cuentas_por_planes'
	inflect.irregular 'cuenta', 'cuentas'
	inflect.irregular 'plan_de_cuenta', 'plan_de_cuentas'
	inflect.irregular 'ordenes_de_consumo', 'ordenes_de_consumos'
end

