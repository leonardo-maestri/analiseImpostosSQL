--Qual foi o total arrecadado de Impostos sobre Produtos Industrializados (IPI) por tipo 
--(fumo, bebidas, automóveis, etc.) e por estado em um período determinado?(2022)



SELECT sigla_uf,
    sum(ipi_fumo)       AS ipi_fumo,
    sum(ipi_bebidas)    AS ipi_bebidas,
    sum(ipi_automoveis) AS ipi_automoveis,
    sum(ipi_importacoes)AS ipi_importacoes,
    sum(ipi_outros)     AS ipi_outros
FROM arrecadacao_uf
WHERE ano = 2022
GROUP BY sigla_uf