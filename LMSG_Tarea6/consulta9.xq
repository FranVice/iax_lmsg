(: 
  Consulta 9 - Devuelve la marca y modelo de las impresoras que solo tienen el tamaño A3.

  for $impresora in doc("impresoras.xml")//impresora
    - Recorre todos los nodos <impresora> del archivo XML.

  where count($impresora/tamaño) = 1
    - Verifica que haya exactamente un solo nodo <tamaño>.

  and $impresora/tamaño = "A3"
    - Además, se asegura de que el único tamaño sea exactamente "A3".

  return <impresora>...</impresora>
    - Devuelve una estructura XML personalizada con <marca> y <modelo>.
:)

for $impresora in doc("impresoras.xml")//impresora
where count($impresora/tamaño) = 1
  and $impresora/tamaño = "A3"
return <impresora>
  <marca>{ $impresora/marca/text() }</marca>
  <modelo>{ $impresora/modelo/text() }</modelo>
</impresora>






