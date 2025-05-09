(: 
  Consulta 2 - Devuelve solo los nombres (sin etiquetas) de los artistas nacidos antes de 1500.
  for $artista in doc("artistas.xml")//artista
    → Recorre cada nodo <artista> del documento y lo asigna a la variable $artista.
  where xs:integer($artista/nacimiento) < 1500
    → Filtra los artistas cuyo año de nacimiento es menor que 1500.
    → xs:integer() convierte el texto del nodo <nacimiento> en número.
  return $artista/nombreCompleto/text()
    → Devuelve solo el texto plano del nombre del artista.
:)
for $artista in doc("artistas.xml")//artista
where xs:integer($artista/nacimiento) < 1500
return $artista/nombreCompleto/text()

