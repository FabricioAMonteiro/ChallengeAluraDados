SELECT * FROM dados_mutuarios;
SELECT * FROM emprestimos;
select * from historicos_banco;
SELECT * FROM id;
select A.*, B.person_id from dados_mutuarios A 
inner join id B on A.person_id = B.person_id
order by B.person_id;
select A.*, B.loan_id from emprestimos A 
inner join id B on A.loan_id = B.loan_id
order by B.person_id;
select A.*, B.cb_id from historicos_banco A 
inner join id B on A.cb_id = B.cb_id
order by B.person_id;


