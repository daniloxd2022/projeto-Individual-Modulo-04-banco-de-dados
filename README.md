# projeto-Individual-Modulo-04-banco-de-dados

A Resilia está com uma nova de idéia de lançar um sistema de acompahamento, sendo necessário criar ou modelar um banco de dados que vai armazenar seus cursos, suas turmas e seus alunos.

Perguntas sobre o banco de dados

- Existem outras entidades além dessas três?

Resposta:
Depende da necessidade da aplicação. De acordo com as informações dadas, parece que só há as entidades de cursos, turmas e alunos. No entanto, se houver necessidade de incluir mais informações, pode ser necessário incluir outras entidades como por exemplo facilitadores,instituição,polos e dentre outros.

- Quais são os principais campos e tipos?

Resposta:

Isso depende do que você deseja armazenar em cada entidade. Algumas sugestões de campos para cada entidade podem incluir:

Unidades:
ID (chave primária, inteiro)
Nome (varchar)
CEP (varchar)
Cursos_id(chave estrangeira,inteiro)

Cursos:

ID (chave primária, inteiro)
Nome (varchar)
Descrição (texto)
Duração (inteiro)

Turmas:

ID (chave primária, inteiro)
Nome (varchar)
Turno (varchar)
numero_de_alunos (Inteiro)
aluno_id(Inteiro)
professor_id (inteiro)

Alunos:

ID (chave primária, inteiro)
Nome (varchar)
CPF(varchar)
sexo(char)
contato(varchar)
cep(varchar)
Endereço de e-mail (varchar)
Nascimento DATE

Professores:

ID (chave primária, inteiro)
Nome (varchar)
CPF(varchar)
sexo(char)
contato(varchar)
cep(varchar)
Endereço de e-mail (varchar)
Nascimento DATE



- Como essas entidades estão relacionadas?

Resposta:

As entidades estão relacionadas de forma que uma turma pertence a um curso e curso pertence a unidade e um aluno e professor pertence a uma turma. Isso é representado na modelagem de banco de dados através de chaves estrangeiras, onde a chave primária de uma entidade é referenciada como uma chave estrangeira em outra entidade.

![](https://github.com/daniloxd2022/projeto-Individual-Modulo-04-banco-de-dados/blob/b1fa69d82ca16d2d4ff45d74af82e1ddbf21a6c4/SQL/diagrama.png)
