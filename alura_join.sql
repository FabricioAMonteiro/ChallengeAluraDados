create table dados_totais as select

dm.person_id as id_cliente,
dm.person_age as idade,
dm.person_income as salario,
dm.person_home_ownership as tipo_imovel,
dm.person_emp_length as tempo_trabalhando,
e.loan_id as id_emprestimo,
e.loan_intent as motivo_emprestimo,
e.loan_grade as grupo,
e.loan_amnt as valor_emprestimo,
e.loan_int_rate as juros,
e.loan_status as RISCO_INADIMPLENCIA,
e.loan_percent_income as emp_sal,
hb.cb_id as id_historico,
hb.cb_person_default_on_file as INADIMPLENCIA,
hb.cb_person_cred_hist_length as tempo_cliente

from id i

inner join dados_mutuarios dm on dm.person_id = i.person_id

inner join emprestimos e on e.loan_id = i.loan_id

inner join historicos_banco hb on hb.cb_id = i.cb_id;



