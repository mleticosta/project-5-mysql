# 🏋️‍♂️ SkillGain - "Passe de fase, treine como um expert" – Banco de dados para gamificação de treinos 
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

![Diagrama EER](https://github.com/user-attachments/assets/c1725fc3-72f9-45ff-a760-b0827fd712f3)

Mas o trabalho ainda não acabou...

## 🚀 Próximos Passos
- Implementação de **views** para facilitar consultas analíticas.
- Desenvolvimento de **stored procedures** para automatizar cálculos e processos.
- Criação de **triggers** para manter a integridade dos dados em tempo real.
- Integração com **Power BI** para visualização interativa dos treinos e progresso dos alunos.
- Desenvolvimento de um **front-end (painel ou app)** para interagir com os dados de forma intuitiva.



[EN] 
# SkillGain - "Level up, train like an expert."

**SkillGain** is a system designed for the **gamification of gyms**, aimed at making workouts more dynamic and motivating. The core idea of the project is to allow gym members to track their progress interactively, experiencing a game-like environment, while trainers can optimize the creation of personalized workouts based on student data and history.

The project is built on a **relational MySQL database**, modeled to store and process all relevant information about gym members, instructors, workouts, physical performance, and gym attendance. The ultimate goal is to integrate this database with an **application or interactive dashboard**, where users can view statistics, challenges, goals to be achieved, and levels to be unlocked.

## 🎯 How Would the App Work?

**SkillGain** would function as a tool for gyms looking to innovate in how they track student progress. Based on the data stored in the database, the system can generate the following features:

### ✅ Student Dashboard
- Display of **updated biometrics** (weight, body fat percentage, lean mass, hydration)
- Progress of completed vs. planned workouts
- Workout recommendations
- Unlocked levels based on the gym member final goal

### ✅ Instructor Panel
- Analysis of workouts completed by students
- Feedback on performance and reported difficulties
- Suggestions for adjustments to workout plans
- Suggestions for workout schedules aligned with the student's history, muscle group progression, and available time.

### ✅ Workout Gamification
- Personalized goals and challenges (e.g., "Complete 10 workouts this month!")
- Internal student ranking based on attendance and progress
- Rewards and achievements for workout consistency

These functionalities are made possible by the robust database structure, which efficiently stores information for future analysis and visualization.

## 🏗️ Database Structure

The modeling was designed to ensure **integrity, scalability, and performance**. The main tables in the database include:

### 📌 Main Tables
- **Student** – Records student information, including personal data, biometrics, and workout frequency.
- **Instructor** – Contains data about the trainers responsible for prescribing workouts and their specialties.
- **Workout Plan** – Stores personalized workout routines for each student.
- **Exercises** – Detailed registration of existing exercises, including muscle group, calories burned, and estimated time.

### 📊 Relationship Tables
- **exercises_has_workout_plan** – Relates exercises to workout plans.
- **attendance** – Records student attendance and statistics on completed workouts.
- **bioimpedance** – Maintains a history of the student's physical assessments.
- **goal and goal_type** – Defines personalized goals for students, linked to a specific type of goal (e.g., weight loss, muscle gain).

The modeling follows **normalization** principles, reducing redundancies and ensuring **data consistency**.

![EER Diagram](https://github.com/user-attachments/assets/c1725fc3-72f9-45ff-a760-b0827fd712f3)

But the work isn't done yet...

## 🚀 Next Steps
- Implementation of **views** to facilitate analytical queries.
- Development of **stored procedures** to automate calculations and processes.
- Creation of **triggers** to maintain real-time data integrity.
- Integration with **Power BI** for interactive visualization of workouts and student progress.
- Development of a **front-end (dashboard or app)** to interact with the data intuitively.
