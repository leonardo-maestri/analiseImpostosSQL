--Quais são os cinco estados com a maior arrecadação de Imposto sobre a Renda da Pessoa Física (IRPF) em um ano 2020?

SELECT sigla_uf, 'R$ ' || printf('%.2f',sum(irpf)) as Arrecadação_IRPF
FROM arrecadacao_uf
WHERE ano = 2020
GROUP BY sigla_uf
ORDER BY IRPF DESC
LIMIT 5
