-- Crie uma consulta que retorne as colunas CustomerId, FirstName, LastName e Address das pessoas consumidoras brasileiras
SELECT DISTINCT 
CustomerId as id,
FirstName as nome,
LastName as sobrenome,
Address as endereco
FROM customers
WHERE
Country LIKE 'Bra%';

-- Na consulta anterior, converta o sobrenome para letras maiúsculas
SELECT DISTINCT 
CustomerId as id,
FirstName as nome,
UPPER(LastName) as sobrenome,
Address as endereco
FROM customers
WHERE
Country LIKE 'Bra%';

-- Na consulta anterior, converta o nome para letras minúsculas
SELECT DISTINCT 
CustomerId as id,
LOWER(FirstName) as nome,
LastName as sobrenome,
Address as endereco
FROM customers
WHERE
Country LIKE 'Bra%';

-- Na consulta anterior, adicione uma coluna cujos os dados seja o resultado da concatenação das colunas de nome e sobrenome
SELECT DISTINCT 
CustomerId as id,
LOWER(FirstName) as nome,
UPPER(LastName) as sobrenome,
CONCAT(FirstName, ' ', LastName) AS nome_completo,
Address as endereco
FROM customers
WHERE
Country LIKE 'Bra%';

-- Na consulta anterior, substitua "Av." por "Avenida" na coluna endereço
SELECT DISTINCT 
CustomerId as id,
LOWER(FirstName) as nome,
UPPER(LastName) as sobrenome,
CONCAT(FirstName, ' ', LastName) AS nome_completo,
REPLACE(Address, 'Av.', 'Avenida')
AS endereco
FROM customers
WHERE
Country LIKE 'Bra%';


-- Na consulta anterior, utilize o símbolo de coringa para construir padrões textuais
