# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#-----------------------------------------------------------
# Configurar una carga por defecto para nuestro usuario
#Usuario.create(email: "adminzoo@minizoo.com", password: "minizoo2018", password_confirmation: "minizoo2018")

# 3650.times do 
#   event = Event.new
#   event.title = Faker::Book.title
#   start = Faker::Time.between(4.years.ago, Date.today + 4.years, :morning)
#   event.start = start
#   event.end = Faker::Time.between(start, start + 2.days, :evening)
#   event.color = ['black','green','red', nil].sample
#   event.save
# end

# user = CreateAdminService.new.call
# puts '1-Administrador creado: ' << user.email

User.create(email:'admin@minizoo.com', name:'Victoriano', role: 2, password:'123admin')
puts '1-Administrador creado: '

Especie.create([{ nombre: 'Aves' }, 
				{ nombre: 'Mamiferos' },
				{ nombre: 'Reptiles' }
				])
puts '2-Especie creados'

Cite.create([{ nombre: 'I' }, 
				{ nombre: 'II' },
				{ nombre: 'III' }
				])

EstadoConservacion.create([{ nombre: 'N1' }, 
				{ nombre: 'N2' },
				{ nombre: 'N3' }
				])
puts '3-Estados de conservacion creados '

EstadoMedico.create([{ nombre: 'Leve' }, 
				{ nombre: 'Grabe' },
				{ nombre: 'Muy Grabe' }
				])
puts '4-Estados Medicos creados '

Alimento.create([{ nombre: 'Carnivoro' }, 
				{ nombre: 'Herviboro' },
				{ nombre: 'Obnivoro' }
				])
puts '5-Alimenotos creados '

Animal.create([ { nombre_cientifico: 'Psittacoidea', nombre_comun: 'Loro', origen:'Paraguay, America Latina', descripcion:'Los loros se caracterizan por tener un pico curvado, con una mandíbula inferior con cierta movilidad en su conexión con el cráneo y situada en una posición bastante vertical. Además tienen una gran capacidad craneal y son uno de los grupos de aves más inteligentes.3​ Son aves que vuelan bien y son capaces de agarrarse a las ramas de los árboles y trepar por ellas con destreza, gracias a sus garras prensiles zigodáctilas (con dos dedos hacia delante y dos hacia atrás).', alimento_id: 1, cite_id: 1, estado_conservacion_id: 1, sexo:'Macho', identificador:'A001', familia:'Psittacidae', edad:'2007-01-01 10:00:00', especie_id: 2 }, 
				  { nombre_cientifico: 'Tapirus', nombre_comun: 'Tapir', origen:'Paraguay, Brasil, Argentina', descripcion:'El cuerpo es compacto y la cabeza y cuello robustos, con el fin de facilitarles mejor el paso a través del denso apareamiento tropical. El pelaje suele ser muy corto y oscuro, aunque las crías presentan un pelaje pardo con manchas crípticas, similares a las de los jabatos jóvenes, que se difuminan con la edad.

Se trata de animales bastante primitivos, los primeros representantes fósiles de la familia se encuentran ya en el Eoceno de Eurasia, hace unos 55 millones de años, donde se observan algunas características que estaban presentes también en los antiguos ancestros (Hyracotherium), de sus parientes actuales. Los pies presentan cuatro dedos en las patas delanteras y tres en las traseras.', alimento_id: 2, cite_id: 2, estado_conservacion_id: 2, sexo:'Macho', identificador:'B001', familia:'Tapiridae', edad:'2008-01-01 10:00:00', especie_id: 1 }, 
				  { nombre_cientifico: 'Panthera leo', nombre_comun: 'León', origen:'Paraguay', descripcion:'El león es una especie vulnerable y, en su ámbito de distribución africano, a lo largo de las dos últimas décadas ha sufrido un declive de las poblaciones, posiblemente irreversible, de entre un 30 % y un 50 %;1​ las poblaciones no son viables fuera de las reservas delimitadas y los parques nacionales. Aunque la causa de este declive no es del todo comprendida, la pérdida del hábitat y los conflictos con humanos son actualmente los motivos de preocupación más importantes. Se han tenido leones en cautividad desde los tiempos de la Antigua Roma y desde finales del siglo XVIII han sido una especie muy buscada y exhibida en zoológicos por todo el mundo. Los propios zoológicos están colaborando en programas de reproducción para proteger la amenazada subespecie asiática.', alimento_id: 3, cite_id: 3, estado_conservacion_id: 3, sexo:'Macho', identificador:'C001', familia:'Felidae', edad:'2006-01-01 10:00:00', especie_id: 3 }
				])
puts '6-Animales creados '