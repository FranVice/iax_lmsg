(: 
  Consulta 5 - Devuelve la cantidad de artistas nacidos antes de 1600.
  count(...)
    → Cuenta cuántos elementos genera la expresión que contiene.
  for $artista in doc("artistas.xml")//artista
    → Recorre cada artista.
  where xs:integer($artista/nacimiento) < 1600
    → Filtra artistas que nacieron antes del año 1600.
  return $artista
    → Devuelve el nodo completo del artista (aunque solo lo usamos para contar).
:)
count(
  for $artista in doc("artistas.xml")//artista
  where xs:integer($artista/nacimiento) < 1600
  return $artista
)




