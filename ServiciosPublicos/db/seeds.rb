# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tpersona.create(tipo: 'administrador')
Tpersona.create(tipo: 'cajero')
Tpersona.create(tipo: 'cliente')
Tpersona.create(tipo: 'usuario generico')

Persona.create(nacionalidad: 'Paraguaya',nombre: 'Juan Perez',direccion: 'Mallorquin',ruc: '751410',telefono: '0985182813',ci_numero: '751410',
correo: 'aroo@gmail.com')
Persona.create(nacionalidad: 'Paraguaya',nombre: 'Alberto Perez',direccion: 'Mallorquin',ruc: '232541',telefono: '0982022412',ci_numero: '232541',
correo: 'aroo@gmail.com')
Persona.create(nacionalidad: 'Paraguaya',nombre: 'Rodrigo Perez',direccion: 'Irrazabal c/ Boy Scout',ruc: '452324',telefono: '0981452404',ci_numero: '452324',
correo: 'aroo@gmail.com')
Persona.create(nacionalidad: 'Paraguaya',nombre: 'Zoriano Perez',direccion: 'Av Caballero y C.A. Lopez',ruc: '551774',telefono: '0985714004',ci_numero: '552174',
correo: 'aroo@gmail.com')
Persona.create(nacionalidad: 'Paraguaya',nombre: 'Maria Gomez',direccion: 'Av Caballero y C.A. Lopez',ruc: '552194',telefono: '0985714234',ci_numero: '872174',
correo: 'aroo@gmail.com')
Persona.create(nacionalidad: 'Paraguaya',nombre: 'Carmen Gonzalez',direccion: 'Villarrica y Mcal. Estigarribia',ruc: '552175',telefono: '0985719054',ci_numero: '559573',
correo: 'aroo@gmail.com')


Concepto.create(nombre: 'Suministro de Electricidad', monto: '0')
Concepto.create(nombre: 'Suministro de Agua', monto: '0')
Concepto.create(nombre: 'Instalacion de medidor', monto: '25000')
Concepto.create(nombre: 'Mantenimiento general', monto: '10000')
Concepto.create(nombre: 'Alumbrado publico', monto: '10000')
Concepto.create(nombre: 'Ayuda a los bomberos', monto: '5000')


Servicio.create(consumo_minimo: '30', costo_unitario: '450', unidad_medida:'kw/h',  descripcion:'Energia electrica')
Servicio.create(consumo_minimo: '30', costo_unitario: '100', unidad_medida:'m3',  descripcion:'Agua')
Servicio.create(consumo_minimo: '5', costo_unitario: '6000', unidad_medida:'ls',  descripcion:'Gas')

TipoFactura.create(descripcion: 'Pendiente')
TipoFactura.create(descripcion: 'Anulado')
TipoFactura.create(descripcion: 'Vencido')
TipoFactura.create(descripcion: 'Pagado')
TipoFactura.create(descripcion: 'Generada')

Medidor.create(medidor_nro: '54675', persona_id: '1', servicio_id: '1', descripcion: 'Medidor electronico')
Medidor.create(medidor_nro: '47245', persona_id: '1', servicio_id: '2', descripcion: 'Medidor magnetico')
Medidor.create(medidor_nro: '35154', persona_id: '1', servicio_id: '3', descripcion: 'Instalado dentro del predio')
Medidor.create(medidor_nro: '15522', persona_id: '2', servicio_id: '1', descripcion: 'Medidor de segunda mano')
Medidor.create(medidor_nro: '51545', persona_id: '2', servicio_id: '2', descripcion: 'Medidor electronico')
Medidor.create(medidor_nro: '63545', persona_id: '2', servicio_id: '3', descripcion: 'Medidor electronico')
Medidor.create(medidor_nro: '95545', persona_id: '3', servicio_id: '1', descripcion: 'Medidor electronico')
Medidor.create(medidor_nro: '24545', persona_id: '3', servicio_id: '2', descripcion: 'Medidor electronico')
Medidor.create(medidor_nro: '47545', persona_id: '3', servicio_id: '3', descripcion: 'Medidor electronico')

Lectura.create(medidor_id:'1', fecha_anterior:'2016-10-02', lectura_anterior:'54848', fecha_actual:'2016-11-02', lectura_actual: '65659')
Lectura.create(medidor_id:'2', fecha_anterior:'2016-10-01', lectura_anterior:'48485', fecha_actual:'2016-11-01', lectura_actual: '54882')
Lectura.create(medidor_id:'3', fecha_anterior:'2016-10-01', lectura_anterior:'34545', fecha_actual:'2016-11-01', lectura_actual: '45158')
Lectura.create(medidor_id:'4', fecha_anterior:'2016-10-01', lectura_anterior:'45452', fecha_actual:'2016-11-01', lectura_actual: '49895')
Lectura.create(medidor_id:'5', fecha_anterior:'2016-10-01', lectura_anterior:'84551', fecha_actual:'2016-11-01', lectura_actual: '86162')
Lectura.create(medidor_id:'6', fecha_anterior:'2016-10-02', lectura_anterior:'54848', fecha_actual:'2016-11-02', lectura_actual: '54959')
Lectura.create(medidor_id:'7', fecha_anterior:'2016-10-01', lectura_anterior:'48485', fecha_actual:'2016-11-01', lectura_actual: '48582')
Lectura.create(medidor_id:'8', fecha_anterior:'2016-10-03', lectura_anterior:'34545', fecha_actual:'2016-11-03', lectura_actual: '34658')
Lectura.create(medidor_id:'9', fecha_anterior:'2016-10-02', lectura_anterior:'45452', fecha_actual:'2016-11-02', lectura_actual: '45595')
Lectura.create(medidor_id:'1', fecha_anterior:'2016-11-01', lectura_anterior:'65659', fecha_actual:'2016-12-01', lectura_actual: '65762')


 

Ejercicio.create(anho: '2015' , estado: 'Inactivo' )
Ejercicio.create(anho: '2016' , estado: 'Inactivo' )
Ejercicio.create(anho: '2017' , estado: 'Inactivo' )


