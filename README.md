# 🏋️‍♂️ SkillGain - "Passe de fase, treine como um expert" – Banco de Dados para Gamificação de Treinos 
[PT]
O **SkillGain** é um sistema pensando para a **gamificação de academias**, projetado para tornar os treinos mais dinâmicos e motivadores. A ideia central do projeto é permitir que alunos acompanhem sua evolução de forma interativa, vivendo um jogo, enquanto treinadores conseguem otimizar a criação de treinos personalizados com base nos dados e histórico dos alunos. 

O projeto tem como base um **banco de dados relacional MySQL**, modelado para armazenar e processar todas as informações relevantes sobre alunos, instrutores, treinos, desempenho físico e frequência na academia. O objetivo final é integrar esse banco de dados a um **aplicativo ou painel interativo**, onde os usuários podem visualizar estatísticas, desafios e metas a serem atingidas e fases a serem desbloqueadas.

## 🎯 Como funcionaria o aplicativo?
O **SkillGain** funcionaria como uma ferramenta para academias que desejam inovar na forma de acompanhar a evolução de seus alunos. Com base nos dados armazenados no banco, o sistema pode gerar as seguintes funcionalidades:

### ✅ Dashboard do Aluno
- Exibição da **biometria atualizada** (peso, percentual de gordura, massa magra, hidratação)
- Progresso de treinos concluídos vs. planejados
- Recomendações de treinos
- Fases desbloqueadas de acordo com a meta final do aluno

### ✅ Painel do Instrutor
- Análise dos treinos finalizados pelos alunos
- Feedbacks sobre desempenho e dificuldades relatadas
- Sugestões de ajustes nos planos de treino
- Sugestões de cronogramas de treinos alinhados ao histórico do aluno, evolução dos grupos musculares e tempo disponível. 

### ✅ Gamificação do Treino
- Metas e desafios personalizados (ex.: "Complete 10 treinos este mês!")
- Ranking interno dos alunos com base na frequência e progresso
- Recompensas e conquistas por consistência nos treinos

Essas funcionalidades são possíveis graças à estrutura robusta do banco de dados, que armazena as informações de maneira eficiente para futuras análises e visualizações.

## 🏗️ Estrutura do Banco de Dados
A modelagem foi projetada para garantir **integridade, escalabilidade e performance**. As principais tabelas do banco de dados incluem:

### 📌 Tabelas Principais
- **Aluno** – Registra informações do aluno, incluindo dados pessoais, biometria e frequência de treinos.
- **Instrutor** – Contém dados sobre os treinadores responsáveis pela prescrição dos treinos e suas especialidades.
- **Plano de Treino** – Armazena as rotinas de treino personalizadas para cada aluno.
- **Exercícios** – Cadastro detalhado de exercícios existentes, incluindo grupo muscular, calorias gastas e tempo estimado.

### 📊 Tabelas de Relacionamento
- **exercicios_has_plano_treino** – Relaciona os exercícios aos planos de treino.
- **frequencia** – Registra a assiduidade do aluno e estatísticas sobre os treinos realizados.
- **bioimpedancia** – Mantém um histórico das avaliações físicas do aluno.
- **objetivo e tipo_objetivo** – Define metas personalizadas para os alunos, vinculadas a um tipo específico de objetivo (ex.: perda de peso, ganho de massa muscular).

A modelagem segue os princípios de **normalização**, reduzindo redundâncias e garantindo **consistência dos dados**.

![Diagrama EER](coloque_aqui_o_caminho_da_imagem)


[EN] 
This project consists of modeling a database for a gym, developed in MySQL, with the aim of feeding an application that gamifies the training process for students and optimizes training preparation by trainers. 
