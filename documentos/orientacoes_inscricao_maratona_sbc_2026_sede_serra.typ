#set document(title: "Orientações para inscrição - Maratona SBC 2026 - Sede Regional Serra")
#set page(paper: "a4", margin: (x: 2.1cm, y: 2.0cm))
#set text(font: "Liberation Sans", size: 10.5pt)
#set heading(numbering: "1.", outlined: true)
#set par(justify: true, leading: 0.58em)

#let blue = rgb("123b74")
#let lightblue = rgb("edf4ff")
#let yellow = rgb("f5b301")
#let form-equipes = "https://forms.gle/ADKfr7eUaYhuusRp7"
#let form-individual = "https://forms.gle/SQ9bSPJiRVybjCnT7"

#align(center)[
  #text(size: 17pt, weight: "bold", fill: blue)[Orientações para inscrição de alunos]
  #linebreak()
  #text(size: 12pt, weight: "bold")[Maratona SBC de Programação 2026 - Sede Regional Serra]
  #linebreak()
  #text(size: 9pt)[Última verificação: 16 de julho de 2026]
]

#v(0.7em)
#block(fill: lightblue, inset: 10pt, radius: 6pt, stroke: 0.7pt + blue)[
  Este documento resume informações para estudantes interessados em representar sua instituição na Maratona SBC de Programação 2026, com orientações específicas para a Sede Regional Serra. Ele não substitui as regras oficiais. Em caso de divergência, prevalecem as regras e orientações publicadas pela organização da Maratona SBC e pelo ICPC.
]

= O que é a Maratona SBC de Programação

A Maratona SBC de Programação é a etapa classificatória brasileira para as fases internacionais do ICPC. Em 2026, a Primeira Fase ocorrerá em 29 de agosto e a Final Brasileira será realizada em Uberlândia, Minas Gerais, de 5 a 8 de novembro.

Os times devem competir na sede definida para a região geográfica de sua instituição. Este documento foi preparado para orientar os alunos vinculados à Sede Regional Serra.

= Registro interno para alunos do Campus Serra

#block(fill: rgb("fff8df"), inset: 10pt, radius: 6pt, stroke: 0.7pt + yellow)[
  *Atenção, alunos do Ifes - Campus Serra:* antes da inscrição oficial no site do ICPC e do pagamento no ECOS da SBC, as equipes do Campus Serra devem realizar o registro interno junto à coordenação local da sede.
]

Esse registro interno não substitui a inscrição oficial da Maratona SBC. Ele serve para organizar as equipes, verificar a demanda local e orientar os próximos passos.

== Equipes já formadas

Use o formulário de registro interno de equipes se o grupo já possui 3 integrantes, ou 4 integrantes quando houver reserva.

Link do formulário de equipes: #link(form-equipes)[Registro interno de equipes do Campus Serra]

== Alunos que ainda não têm equipe

Use o formulário de interesse individual se você deseja participar, mas ainda não conseguiu formar uma equipe. A coordenação local tentará agrupar estudantes interessados, mas o preenchimento não garante a formação de uma equipe.

Link do formulário individual: #link(form-individual)[Registro de interesse individual]

= Composição do time

Cada time regular é formado por:

- 1 técnico, que representa oficialmente o time junto à organização;
- 3 alunos competidores;
- opcionalmente, 1 aluno reserva.

O time precisa comparecer com três competidores para poder se qualificar para fases posteriores. Um time com menos de três competidores pode participar, mas não se qualifica para as próximas fases.

= Quem pode ser competidor ou reserva

Podem ser inscritos como competidores ou reservas alunos regulares de cursos de graduação ou pós-graduação. Além de estarem regularmente matriculados, todos os competidores e o reserva precisam satisfazer as regras de elegibilidade do ICPC para competições regionais.

= Regras de elegibilidade para 2026

Para a competição de 2026, o aluno deve satisfazer pelo menos uma das condições abaixo:

1. ter nascido em 2003 ou depois; ou
2. ter iniciado seus estudos superiores em 2022 ou depois.

Exemplos:

- Um aluno que iniciou seu primeiro curso superior em 2022 pode participar, mesmo que tenha nascido antes de 2003.
- Um aluno nascido em 2003 ou depois pode participar, mesmo que tenha iniciado a graduação antes de 2022.

Também há limites de participação anterior:

- no máximo 2 finais mundiais do ICPC;
- no máximo 5 competições regionais do ICPC.

Em casos excepcionais, como afastamento por saúde, serviço militar ou primeira graduação em área não relacionada, pode ser solicitada uma extensão do período de elegibilidade ao comitê de elegibilidade do ICPC. Essa solicitação deve ser encaminhada pelo técnico do time.

= Escola, instituição e sede

Para a Maratona, a "escola" é definida pela instituição de ensino superior e pela cidade de origem dos alunos. Assim, uma mesma instituição pode ter escolas diferentes em cidades diferentes.

Os times de uma mesma escola devem ser inscritos na mesma sede, definida para sua região geográfica pelo Comitê Diretor da Maratona de Programação. A aceitação de mais de dois times de uma mesma escola depende da capacidade da sede e segue ordem de chegada.

= Responsabilidade do técnico

O técnico é o representante oficial do time junto à organização da competição. Em regra, deve ser um docente da escola. Um docente pode indicar um técnico não docente por meio do formulário previsto nas regras oficiais.

O técnico é responsável por realizar a inscrição oficial dos times no evento. Para equipes do Campus Serra, recomenda-se que o técnico ou os alunos façam primeiro o registro interno da equipe na página da Sede Regional Serra. A presença do técnico durante a competição não é obrigatória; ele pode indicar um dos competidores como representante da equipe.

= Como a inscrição do time é feita

Para equipes do Ifes - Campus Serra, o fluxo recomendado é:

1. realizar o registro interno da equipe junto à coordenação local da Sede Regional Serra;
2. aguardar ou solicitar orientação da coordenação local sobre os próximos passos;
3. cadastrar o time no site do ICPC, na competição *South America Brazil First Phase*;
4. providenciar o pagamento da taxa de inscrição no sistema ECOS da SBC;
5. verificar no site do ICPC se o status do time mudou de *pending* para *accepted*.

O registro interno não garante, por si só, a participação na competição. A participação depende do cumprimento das regras oficiais, da inscrição no ICPC, do pagamento no ECOS da SBC e da aceitação do time pela organização.

= Taxas de inscrição para times regulares

A página de inscrições da Maratona SBC 2026 apresenta os seguintes valores para times regulares:

#table(
  columns: (1.2fr, 1.1fr, 1.5fr, 1.6fr),
  inset: 5pt,
  stroke: 0.5pt,
  fill: (x, y) => if y == 0 { blue } else if calc.rem(y, 2) == 0 { rgb("f7faff") } else { white },
  text(fill: white, weight: "bold")[Período], text(fill: white, weight: "bold")[Número de times], text(fill: white, weight: "bold")[Instituição associada da SBC], text(fill: white, weight: "bold")[Instituição não associada da SBC],
  [Até 20/7], [1], [R$ 192,00], [R$ 240,00],
  [Até 20/7], [2], [R$ 320,00], [R$ 400,00],
  [Até 20/7], [3 ou mais], [R$ 132,00 por time], [R$ 165,00 por time],
  [De 21/7 a 10/8], [1], [R$ 288,00], [R$ 360,00],
  [De 21/7 a 10/8], [2], [R$ 480,00], [R$ 600,00],
  [De 21/7 a 10/8], [3 ou mais], [R$ 192,00 por time], [R$ 240,00 por time],
)

A inscrição é institucional. Para utilizar a categoria de instituição associada da SBC, o pagamento no ECOS deve ser feito com o cadastro da própria instituição.

= Desistência e reembolso

Em caso de desistência de participação até 23 de agosto, pode ser solicitada devolução de 80% do valor pago pela inscrição. Após essa data, não há devolução do valor pago.

= Categoria "café com leite"

Em 2026, haverá apenas café com leite online na Primeira Fase. A taxa informada pela organização é:

- até 20/7: R$ 150,00;
- de 21/7 a 21/8: R$ 230,00.

A categoria café com leite segue orientações próprias da organização e deve ser tratada separadamente da inscrição dos times regulares.

= Informações recomendadas para os alunos enviarem ao técnico

Para organizar a inscrição, recomenda-se que cada aluno envie ao técnico as seguintes informações:

- nome completo;
- e-mail;
- curso;
- nível do curso: graduação ou pós-graduação;
- número de matrícula, se solicitado pela instituição;
- data de nascimento;
- ano em que iniciou o primeiro curso superior;
- histórico de participações anteriores em regionais do ICPC/Maratona;
- histórico de participações anteriores em finais mundiais do ICPC;
- indicação se pretende participar como competidor ou reserva;
- disponibilidade para a prova da Primeira Fase, em 29 de agosto de 2026.

= Checklist rápido para o aluno

- [ ] Sou aluno regular de graduação ou pós-graduação.
- [ ] Tenho disponibilidade para participar da Primeira Fase em 29 de agosto de 2026.
- [ ] Nasci em 2003 ou depois, ou iniciei meus estudos superiores em 2022 ou depois.
- [ ] Não excedi os limites de participação em regionais e finais mundiais do ICPC.
- [ ] Se sou aluno do Campus Serra, preenchi o registro interno adequado.
- [ ] Estou ciente de que o time precisa ter três competidores para poder se qualificar.

= Checklist rápido para o técnico

- [ ] O time tem três competidores definidos.
- [ ] Se houver reserva, o reserva também satisfaz as regras de elegibilidade.
- [ ] Todos os alunos são regulares em curso de graduação ou pós-graduação.
- [ ] Todos os alunos atendem ao critério de idade ou ao critério de início dos estudos superiores.
- [ ] Se a equipe é do Campus Serra, o registro interno foi preenchido.
- [ ] O time foi cadastrado no site do ICPC na competição *South America Brazil First Phase*.
- [ ] O pagamento foi realizado no ECOS da SBC.
- [ ] O status do time no site do ICPC mudou de *pending* para *accepted*.

= Fontes oficiais

- Página de inscrições da Maratona SBC de Programação 2026: #link("https://maratona.sbc.org.br/inscricoes.html")
- Página de regras da Maratona SBC de Programação 2026: #link("https://maratona.sbc.org.br/sobre/regras.html")
- Página da Sede Regional Serra: #link("https://profjeffandrade.github.io/maratona-sbc-2026-serra/")
