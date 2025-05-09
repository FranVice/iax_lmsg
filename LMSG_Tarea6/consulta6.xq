(: 
  Consulta 6 - Devuelve el modelo de las impresoras cuyo atributo tipo sea "láser".
  El valor "láser" está definido como atributo del nodo <impresora>, por eso se accede con @tipo.
:)

for $impresora in doc("impresoras.xml")//impresora
where $impresora/@tipo = "láser"
return $impresora/modelo





