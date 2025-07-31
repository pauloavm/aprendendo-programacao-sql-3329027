-- Para a tabela "invoices", crie uma consulta que retorne o país e a soma das compras realizadas nele, bem como o valor da compra mínima e máxima, a quantidade de compras realizadas e o ticket médio de cada compra.
SELECT 
BillingCountry AS pais,
SUM(total) AS soma_compras,
COUNT(total) As 
qtd_compras_realizadas,
MIN(total) AS menor_compra,
MAX(total) as maior_compra,
ROUND (AVG(Total), 2) as ticket_medio
FROM
invoices
WHERE
BillingCountry = 'Austria';
