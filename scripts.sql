//Tabela Alunos
table alunos {
  id_alunos serial [pk]
  nome varchar(30)
  matricula varchar(7)
  cpf varchar(11)
}

//Tabela Curso
table curso{
  id_curso serial [pk]
  nome varchar(200)
  duracao time
  descricao text
}

//Tabela Turma
table turma  {
  id_turma serial [pk]
  turma int
}

//Tabela Turno
table turno {
  id_turno serial [pk]
  turno boolean
}

//Relação das entidades

Ref: "alunos"."id_alunos" < "curso"."id_curso"

Ref: "curso"."id_curso" < "turma"."id_turma"

Ref: "turma"."id_turma" < "turno"."id_turno"

