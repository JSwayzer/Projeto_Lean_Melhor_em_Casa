 select distinct
        t1.id_prontuario,
        t1.data_inclusao,
        t1.data_alteracao,
        t1.id_unidade_saude_end,
        t1.id_procedencia,
        t1.cd_prontuario_wpd,
        t1.paciente,
        t1.sexo,
        t1.dt_nascimento,
        t1.celular,
        t1.email_paciente,
        t1.nome_responsavel,
        t1.fone_responsavel,
        t1.rua,
        t1.numero_casa,
        t1.complemento,
        t1.bairro,
        t1.cidade,
        t1.uf_estado,
        t1.cep,
        t2.id_passagem,
        t2.data_inclusao,
        t2.data_alteracao,
        t2.id_prontuario,
        t2.cd_passagem_wpd,
        t2.data_entrada,
        t2.hora_entrada,
        t2.data_saida,
        t2.hora_saida,
        t2.tipo_paciente,
        t2.especialidade,
        t3.id_unidade_saude_end,
        t3.data_inclusao,
        t3.data_alteracao,
        t3.id_unidade_saude,
        t3.unidade_saude,
        t3.rua,
        t3.cep,
        t3.numero,
        t3.complemento,
        t3.bairro,
        t3.cidade,
        t3.uf,
        t4.id_unidade_saude,
        t4.data_inclusao,
        t4.data_alteracao,
        t4.unidade_saude,
        t4.tipo_unidade,
        t4.rua_unidade_saude,
        t4.cep_unidade_saude,
        t5.id_leito,
        t5.data_inclusao,
        t5.data_alteracao,
        t5.id_passagem,
        t5.id_reg,
        t5.leito,
        t5.cd_passagem_wpd
   from public.mec_prontuario t1
  inner join public.mec_passagem t2 on t1.id_prontuario = t2.id_prontuario
  inner join public.mec_unidade_saude_end t3 on t1.id_unidade_saude_end = t3.id_unidade_saude_end
   left join public.mec_unidade_saude t4 on t3.id_unidade_saude = t4.id_unidade_saude
  inner join public.mec_leito t5 on t2.id_passagem = t5.id_passagem
  where t2.tipo_paciente = 'Interno'
  order by 4 desc
