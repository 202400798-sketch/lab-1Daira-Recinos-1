SELECT pe.id_pedido,
       cl.dui_cliente AS dui,
       cl.nombre,
       (cl.direccion_linea1 || ', ' || dep.nombre || ', ' || mun.nombre) AS direccion,
       rep.nombre AS repartidor,
       pe.costo_envio
FROM pedido pe,
     cliente cl,
     departamento dep,
     municipio mun,
     repartidor rep
WHERE pe.dui_cliente = cl.dui_cliente
  AND cl.id_municipio = mun.id_municipio
  AND mun.id_departamento = dep.id_departamento
  AND pe.id_repartidor = rep.id_repartidor;