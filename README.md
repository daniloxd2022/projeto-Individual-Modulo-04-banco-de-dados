# projeto-Individual-Modulo-04-banco-de-dados

A Resilia está com uma nova de idéia de lançar um sistema de acompahamento, sendo necessário criar ou modelar um banco de dados que vai armazenar seus cursos, suas turmas e seus alunos.

Perguntas sobre o banco de dados

- Existem outras entidades além dessas três?

Resposta:
Depende da necessidade da aplicação. De acordo com as informações dadas, parece que só há as entidades de cursos, turmas e alunos. No entanto, se houver necessidade de incluir mais informações, pode ser necessário incluir outras entidades como por exemplo facilitadores,instituição,polos e dentre outros.

- Quais são os principais campos e tipos?

Resposta:

Isso depende do que você deseja armazenar em cada entidade. Algumas sugestões de campos para cada entidade podem incluir:

Cursos:

ID (chave primária, inteiro)
Nome (varchar)
Descrição (texto)
Duração (inteiro)

Turmas:

ID (chave primária, inteiro)
Nome (varchar)
ID do Curso (chave estrangeira, inteiro)
Início (data)
Término (data)

Alunos:

ID (chave primária, inteiro)
Nome (varchar)
Endereço de e-mail (varchar)
ID da Turma (chave estrangeira, inteiro)

- Como essas entidades estão relacionadas?

Resposta:

As entidades estão relacionadas de forma que uma turma pertence a um curso e um aluno pertence a uma turma. Isso é representado na modelagem de banco de dados através de chaves estrangeiras, onde a chave primária de uma entidade é referenciada como uma chave estrangeira em outra entidade.
