Rails.application.routes.draw do
  get 'estado_de_conexion/index'

  get 'valores_recibidos/index'

  get 'usuarios_morosos/index'

  get 'tipo_de_servicio/index'

  get 'pagos_de_usuario/index'

  get 'estado_de_conxion/index'

  get 'ingreso_por_caja_por_rango_de_fecha/index'

  get 'consumo_por_rango_de_fechas/index'

  get 'conexiones_de_usuario/index'

  get 'boletas_reimpresas/index'

  get 'usuarios_por_zona/index'

  get 'crm/index'

  resources :plan_de_cuentas
  resources :apertura_cajas
  resources :cajas
  devise_for :users
  resources :apertura_cajas 
  get 'movimientos_cajas/new' => 'movimientos_cajas#new'
  get 'apertura_cajas/new' => 'apertura_cajas#new'
  get 'movimientos_cajas/new' => 'movimientos_cajas#new'
  get 'inicio/index'
  root :to => "inicio#index"
  resources :cuentas  
  resources :cuentas_por_asientos
  resources :asientos
  resources :cuentas_por_planes
  resources :ejercicios
  resources :plan_de_cuentas
  resources :lecturas 
  get 'facturas/generar_todas_las_facturas' => 'facturas#generar_todas_las_facturas', :as => :generar_todas_las_facturas
  resources :conceptos
  resources :rango_fechas
  resources :tipo_facturas
  resources :movimientos_cajas do
    resources :movimiento_de_cajas_detalles
  end
  resources :arqueo_cajas
  resources :formas_pagos
  resources :tarjetas
  resources :cheques
  resources :usuarios
  resources :roles
  resources :personas
  resources :tpersonas
  resources :tipo_personas
  resources :barrios
  resources :distritos
  resources :departamentos
  resources :paises
  resources :tipos_servicios
  resources :medidores do 
    get :autocomplete_medidor_medidor_nro, :on => :collection
  end
  resources :servicios
  resources :facturas
  resources :ordenes_de_consumos
  resources :crm
  resources :informes
  resources :usuarios_por_zona
  resources :boletas_reimpresas
  resources :conexiones_de_usuario
  resources :consumo_por_rango_de_fechas
  resources :ingreso_por_caja_por_rango_de_fecha
  resources :pagos_de_usuario
  resources :tipo_de_servicio
  resources :usuarios_morosos
  resources :valores_recibidos
  resources :estado_de_conexion
  
  resources :auditorias, only: [:index, :show]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
