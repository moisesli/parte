# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format
# (all these examples are active by default):
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end
#
# These inflection rules are supported but not enabled by default:
 ActiveSupport::Inflector.inflections do |inflect|
   inflect.acronym 'RESTful'
   inflect.irregular 'parteobra', 'parteobras'
   inflect.irregular 'partida', 'partidas'
   inflect.irregular 'materiale', 'materiales'
   inflect.irregular 'equipo', 'equipos'
   inflect.irregular 'lista', 'listas'
   inflect.irregular 'listacategoria', 'listacategorias'   
   inflect.irregular 'descompocicione', 'descompociciones'
   inflect.irregular 'inicio', 'inicios'
   inflect.irregular 'corrida', 'corridas'
   inflect.irregular 'fase', 'fases'
   inflect.irregular 'subfase', 'subfases'
   inflect.irregular 'grupo', 'grupos'
   inflect.irregular 'sectore', 'sectores'
   inflect.irregular 'subsectore', 'subsectores'
   inflect.irregular 'partidasdecontrol', 'partidasdecontrols'
 end
