(: 
  Consulta 3 - Devuelve los nombres de los artistas sin año de fallecimiento.
  for $artista in doc("artistas.xml")//artista
    → Recorre todos los nodos <artista> y los asigna a $artista.
  where not($artista/fallecimiento)
    → Filtra los artistas que NO tienen el nodo <fallecimiento>.
    → not() devuelve true si el nodo no existe o está vacío.
  return $artista/nombreCompleto
    → Devuelve el nodo <nombreCompleto> completo (incluye etiquetas).
:)
for $artista in doc("artistas.xml")//artista
where not($artista/fallecimiento)
return $artista/nombreCompleto


