(: 
  Consulta 7 - Marca y modelo de las impresoras que tienen más de un tamaño disponible.

  for $impresora in doc("impresoras.xml")//impresora
    - Recorre todos los nodos <impresora> del documento.
  
  where count($impresora/tamaño) > 1
    - Cuenta cuántos nodos <tamaño> hay directamente bajo cada <impresora>.
    - Si hay más de uno, la impresora tiene varios tamaños disponibles.
  
  return <impresora>...</impresora>
    - Devuelve una estructura <impresora> personalizada con su <marca> y <modelo>.
:)

for $impresora in doc("impresoras.xml")//impresora
where count($impresora/tamaño) > 1
return <impresora>
  <marca>{ $impresora/marca/text() }</marca>
  <modelo>{ $impresora/modelo/text() }</modelo>
</impresora>






