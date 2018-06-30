# README

Este README descreve a instalação e uso da aplicação Code-Hub e também contém uma breve descrivção da estrutura implementada até o momento.

Este projeto foi montado utilizando o tutorial "Ruby e Rails no Ubuntu" disponibilzado no PACA da disciplina MAC-0218 do primeiro semestre de 2018, ministrada pelo professor Marco Dimas Gubitoso. Mais detalhes da instalação da versão utilizada do Ruby e das Gems utilizadas podem ser encontradas no tutorial.

* Versão do Ruby: 2.5.0
* Versão do Rails: 5.1.4

* Dependências do sistema:
  - SQLite v3.23

* Configuração:
  Execução do comando "bundle install" dentro da pasta deste repositório para que todas as Gems necessárias sejam instaladas.
  Dentro da pasta do projeto o banco de dados já está configurado com as relações implementadas.
  Não há nenhuma configuração adicional a ser feita na aplicação.

* Inicialização:
  Para a inicialização do projeto basta ter o Ruby (2.5.0) e o Rails (5.1.4) instalados na máquina e executar os comandos "rake db:migrate", para subir o banco, e "bundle exec rails server", para subir o servidor web da aplicação, dentro da pasta code-hub dentro deste git para que a aplicação inicialize.

* Utilização:
  Para utilizar a aplicação basta apenas acessar o site "localhost:3000" para o uso a aplicação em domínio local.
  Ao criar um usuário na tela inicial de login já é possível ver a tela de gerenciamento da aplicação.
  
  Existem 3 telas de controle dentro da aplicação nesta versão inicial:
    - Your Projects;
    - Your Programmers;
    - Your Contracts;
  
  Nestas telas é capaz criar e gerenciar apenas os projetos, entradas de programadores e contratos criados pelo usuário atual.
  
* Estrutura implementada:
  - O banco de dados deste projeto está implementado em SQLite, todas as definições de campos e relações das entidades criadas podem ser encontrados na pasta code-hub/db/schema.rb.
  - Foram implementadas 4 entidades no projeto:
    - Users: Define um usuário cadastrado no sistema da aplicação.
    - Programmers: Define um programador criado por um usuário. Programadores podem ter contratos de oferecimento de serviços a determinados projetos dentro do sistema.
    - Projects: Define um projeto criado por um usuário do sistema, projetos tem as propriedades necessárias para um projeto de programação ser lançado no sistema. Os projetos podem ter contratos que relacionam programadores do sistema com contratos de serviço para o projeto dono do contrato.
    - Contracts: Define um contrato criado por usuários no sistemas. Os contratos tem relação com projetos e programadores, definindo a relação contratual dos serviços oferecidos a um determinado projeto por um programador.
    
* Módulos de Teste:
  Os testes podem ser encontrados no diretório "spec" presente neste repositório. Todas as funções de criação para os teste pode ser encontrada no arquivo "factories.rb" e todos as definições dos testes podem ser encontrados nos arquivos respectivos a cada módulo dentro do mesmo diretório.
  Para executar os teste basta executar o comando: "bundle exec rspec" para que os 23 testes sejam executados.

* Versão final:
  O projeto já conta com a gerência e adiministação de todas as entidades relacionadas ao usuário e já pode ser testado nas 3 interfaces citadas nós tópicos anteriores.
  
