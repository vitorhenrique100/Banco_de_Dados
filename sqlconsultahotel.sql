# Filtrar hospedagens com notas acima de 4
SELECT cliente_id, nota, comentario FROM avaliacoes
WHERE nota <= 3;

SELECT * FROM hospedagens
WHERE tipo = 'casa' AND ativo = 1;

/*
WHERE: Utiliza condições para filtrar as consultas. Segue a seguinete estrutura:
SELECT coluna FROM tabela
WHERE condição;
*/

# Selecione os endereços do estado de SP
SELECT * FROM enderecos
WHERE estado = 'SP';