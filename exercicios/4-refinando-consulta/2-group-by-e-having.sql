-- Crie uma consulta usando as tabelas "invoices" e "customers" cujo o resultado seja o total de gastos por cliente
SELECT 
cus.CustomerId AS id_cliente,
cus.FirstName AS nome,
SUM(inv.Total) AS total_gasto
FROM
invoices AS inv
INNER JOIN customers AS cus ON inv.CustomerId = cus.CustomerId 
GROUP BY id_cliente;

-- Na consulta anterior, insira um filtro para que apresente apenas os clientes que gastaram mais de R$40

SELECT 
cus.CustomerId AS id_cliente,
cus.FirstName AS nome,
SUM(inv.Total) AS total_gasto
FROM
invoices AS inv
INNER JOIN customers AS cus ON inv.CustomerId = cus.CustomerId 
GROUP BY id_cliente
HAVING SUM(inv.total) >= 40;

-- Na consulta anterior, insira uma coluna que informe a compra de maior valor feita por cada cliente
SELECT 
cus.CustomerId AS id_cliente,
cus.FirstName AS nome,
SUM(inv.Total) AS total_gasto,
COUNT(inv.Total) AS qtd_compras
FROM
invoices AS inv
INNER JOIN customers AS cus ON inv.CustomerId = cus.CustomerId 
GROUP BY id_cliente
HAVING SUM(inv.total) >= 40;