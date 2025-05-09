(: 
  Consulta 10 - Devuelve el modelo de las impresoras que están conectadas en red.

  En el XML, la conexión en red no se indica mediante el contenido de un nodo <red>, 
  sino mediante la existencia de un nodo vacío llamado <enred/>.

  Por eso, usamos: if (exists($impresora/enred)) para verificar si dicho nodo existe.
  Si existe, entonces esa impresora está en red.

  Se devuelve solo el contenido del nodo <modelo> como texto.
:)

for $impresora in doc("impresoras.xml")//impresora
where exists($impresora/enred)
return $impresora/modelo/text()






