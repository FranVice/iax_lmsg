(: 
  Consulta 4 - Crea una lista HTML <ul> con los nombres de los artistas nacidos en España.
  <ul>{ ... }</ul>
    → Crea un nodo HTML <ul> (lista sin ordenar) y dentro de él coloca cada <li>.
  for $artista in doc("artistas.xml")//artista
    → Recorre todos los artistas del archivo XML.
  where $artista/pais = "España"
    → Solo selecciona artistas cuyo nodo <pais> tiene el texto "España".
  return <li>{ $artista/nombreCompleto/text() }</li>
    → Devuelve un nodo <li> por cada artista español, con su nombre como texto.
:)
<ul>{
  for $artista in doc("artistas.xml")//artista
  where $artista/pais = "España"
  return <li>{ $artista/nombreCompleto/text() }</li>
}</ul>



