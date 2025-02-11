--Qual é a média de arrecadação mensal de impostos em SP em todos os anos.

SELECT  sigla_uf, ano,
        AVG(imposto_importacao)                     AS media_imposto_importacao,
        AVG(imposto_exportacao)                     AS media_imposto_exportacao,
        AVG(ipi_fumo)                               AS media_ipi_fumo,
        AVG(ipi_bebidas)                            AS media_ipi_bebidas,
        AVG(ipi_automoveis)                         AS media_ipi_automoveis,
        AVG(ipi_importacoes)                        AS media_ipi_importacoes,
        AVG(ipi_outros)                             AS media_ipi_outros,
        AVG(irpf)                                   AS media_irpf,
        AVG(irpj_entidades_financeiras)             AS media_irpj_entidades_financeiras,
        AVG(irpj_demais_empresas)                   AS media_irpj_demais_empresas,
        AVG(irrf_rendimentos_trabalho)              AS media_irrf_rendimentos_trabalho,
        AVG(irrf_rendimentos_capital)               AS media_irrf_rendimentos_capital,
        AVG(irrf_remessas_exterior)                 AS media_irrf_remessas_exterior,
        AVG(irrf_outros_rendimentos)                AS media_irrf_outros_rendimentos,
        AVG(iof)                                    AS media_iof,
        AVG(itr)                                    AS media_itr,
        AVG(ipmf)                                   AS media_ipmf,
        AVG(cpmf)                                   AS media_cpmf,
        AVG(cofins)                                 AS media_cofins,
        AVG(cofins_entidades_financeiras)           AS media_cofins_entidades_financeiras,
        AVG(cofins_demais_empresas)                 AS media_cofins_demais_empresas,
        AVG(pis_pasep)                              AS media_pis_pasep,
        AVG(pis_pasep_entidades_financeiras)        AS media_pis_pasep_entidades_financeiras,
        AVG(pis_pasep_demais_empresas)              AS media_pis_pasep_demais_empresas,
        AVG(csll)                                   AS media_csll,
        AVG(csll_entidades_financeiras)             AS media_csll_entidades_financeiras,
        AVG(csll_demais_empresas)                   AS media_csll_demais_empresas,
        AVG(cide_combustiveis_parcela_nao_dedutivel)AS media_cide_combustiveis_parcela_nao_dedutivel,
        AVG(cide_combustiveis)                      AS media_cide_combustiveis,
        AVG(cpsss_1)                                AS media_cpsss_1,
        AVG(cpsss_2)                                AS media_cpsss_2,
        AVG(contribuicao_fundaf)                    AS media_contribuicao_fundaf,
        AVG(refis)                                  AS media_refis,
        AVG(paes)                                   AS media_paes,
        AVG(retencoes_fonte)                        AS media_retencoes_fonte,
        AVG(pagamento_unificado)                    AS media_pagamento_unificado,
        AVG(outras_receitas_rfb)                    AS media_outras_receitas_rfb,
        AVG(demais_receitas)                        AS media_demais_receitas,
        AVG(receita_previdenciaria)                 AS media_receita_previdenciaria,
        AVG(receita_previdenciaria_propria)         AS media_receita_previdenciaria_propria,
        AVG(receita_previdenciaria_demais)          AS media_receita_previdenciaria_demais,
        AVG(receitas_outros_orgaos)                 AS media_receitas_outros_orgaos

FROM arrecadacao_uf

WHERE sigla_uf = 'SP'

GROUP BY ano
