(: 
  Consulta 8 - Devuelve la marca y el modelo de las impresoras que incluyen el tamaño A3 entre sus tamaños disponibles.

  for $impresora in doc("impresoras.xml")//impresora
    - Recorre todos los nodos <impresora> del documento XML.

  where some $t in $impresora/tamaño satisfies $t = "A3"
    - Se utiliza la expresión some ... satisfies.
    - Recorre todos los nodos <tamaño> de la impresora.
    - La condición se cumple si al menos uno de ellos tiene el texto "A3".

  return <impresora>...</impresora>
    - Devuelve una estructura <impresora> que contiene su <marca> y <modelo>.
:)

for $impresora in doc("impresoras.xml")//impresora
where some $t in $impresora/tamaño satisfies $t = "A3"
return <impresora>
  <marca>{ $impresora/marca/text() }</marca>
  <modelo>{ $impresora/modelo/text() }</modelo>
</impresora>






