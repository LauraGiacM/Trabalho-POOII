

SELECT p.id AS pedido, p.data_hora, p.mesa_id,
       pr.nome, pp.quantidade, pr.preco,
       (pp.quantidade * pr.preco) AS subtotal
FROM pedido p
JOIN pedido_prato pp ON pp.pedido_id = p.id
JOIN prato pr ON pr.id = pp.prato_id
ORDER BY p.id DESC;