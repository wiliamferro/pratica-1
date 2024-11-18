create table cliente(
ID_cliente int not null primary key,
Nome_cliente varchar(20),
Email_cliente varchar(50),
telefone_cliente varchar(11)
);

create table colaborador(
ID_colaborador int not null primary key,
Nome_colaborador varchar(20),
Email_colaborador varchar(50),
telefone_colaborador varchar(11)
);

create table chamados(
ID_chamado int not null primary key,
ID_cliente int,
ID_colaborador int,
descricao_problema varchar(200),
criticidade enum ('Baixa','Media','Alta') not null,
statu enum ('aberto','em andamento','resolvido') not null,
data_abertura date,
foreign key (ID_cliente) references cliente(ID_cliente),
foreign key (ID_colaborador) references colaborador(ID_colaborador) 
);