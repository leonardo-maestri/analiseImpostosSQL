-- Quanto cada estado arrecadou de imposto no ano de 2024 ?



SELECT 
    sigla_uf,
    'R$ ' || printf('%.2f', FORMAT(SUM(
        COALESCE(imposto_importacao, 0) + 
        COALESCE(imposto_exportacao, 0) + 
        COALESCE(ipi_fumo, 0) + 
        COALESCE(ipi_bebidas, 0) + 
        COALESCE(ipi_automoveis, 0) + 
        COALESCE(ipi_importacoes, 0) + 
        COALESCE(ipi_outros, 0) + 
        COALESCE(irpf, 0) + 
        COALESCE(irpj_entidades_financeiras, 0) + 
        COALESCE(irpj_demais_empresas, 0) + 
        COALESCE(irrf_rendimentos_trabalho, 0) + 
        COALESCE(irrf_rendimentos_capital, 0) + 
        COALESCE(irrf_remessas_exterior, 0) + 
        COALESCE(irrf_outros_rendimentos, 0) + 
        COALESCE(iof, 0) + 
        COALESCE(itr, 0) + 
        COALESCE(ipmf, 0) + 
        COALESCE(cpmf, 0) + 
        COALESCE(cofins, 0) + 
        COALESCE(cofins_entidades_financeiras, 0) + 
        COALESCE(cofins_demais_empresas, 0) + 
        COALESCE(pis_pasep, 0) + 
        COALESCE(pis_pasep_entidades_financeiras, 0) + 
        COALESCE(pis_pasep_demais_empresas, 0) + 
        COALESCE(csll, 0) + 
        COALESCE(csll_entidades_financeiras, 0) + 
        COALESCE(csll_demais_empresas, 0) + 
        COALESCE(cide_combustiveis_parcela_nao_dedutivel, 0) + 
        COALESCE(cide_combustiveis, 0) + 
        COALESCE(cpsss_1, 0) + 
        COALESCE(cpsss_2, 0) + 
        COALESCE(contribuicao_fundaf, 0) + 
        COALESCE(refis, 0) + 
        COALESCE(paes, 0) + 
        COALESCE(retencoes_fonte, 0) + 
        COALESCE(pagamento_unificado, 0) + 
        COALESCE(outras_receitas_rfb, 0) + 
        COALESCE(demais_receitas, 0) + 
        COALESCE(receita_previdenciaria, 0) + 
        COALESCE(receita_previdenciaria_propria, 0) + 
        COALESCE(receita_previdenciaria_demais, 0) + 
        COALESCE(receitas_outros_orgaos, 0)
    ), 2)) AS total_arrecadacao2024
FROM 
    arrecadacao_uf
WHERE 
    ano = 2024
GROUP BY 
    sigla_uf
ORDER BY 
    sigla_uf


