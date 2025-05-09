(: 
  Consulta 1 - Devuelve el nombre completo y el país de todos los artistas.
  for artista in doc("artistas.xml")//artista
    → Recorre todos los elementos <artista> dentro del documento artistas.xml.
    → Se asigna cada elemento a la variable artista.
    → doc("artistas.xml") carga el documento XML.
    → //artista selecciona todos los nodos <artista> en cualquier lugar del documento.
  return ...
    → Por cada $artista encontrado, se genera una nueva estructura XML
      con solo los elementos <nombreCompleto> y <pais>.
:)
for $artista in doc("artistas.xml")//artista
return 
  <artista>
    <nombreCompleto>{ $artista/nombreCompleto/text() }</nombreCompleto>
    <pais>{ $artista/pais/text() }</pais>
  </artista>
