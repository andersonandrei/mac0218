# README

Este README descreve a instalação e uso da aplicação Code-Hub e também contém uma breve descrivção da estrutura implementada até o momento.

Este projeto foi montado utilizando o tutorial "Ruby e Rails no Ubuntu" disponibilzado no PACA da disciplina MAC-0218 do primeiro semestre de 2018, ministrada pelo professor Marco Dimas Gubitoso. Mais detalhes da instalação da versão utilizada do Ruby e das Gems utilizadas podem ser encontradas no tutorial.

* Versão do Ruby: 2.5.0
* Versão do Rails: 5.1.4

* Dependências do sistema:
  - SQLite v3.23

* Configuração:
  Dentro da pasta do projeto o banco de dados já está configurado com as relações implementadas.
  Nesta fase inicial do projeto não há nenhuma configuração adicional a ser feita na aplicação.

* Inicialização:
  Para a inicialização do projeto basta ter o Ruby (2.5.0) e o Rails (5.1.4) instalados na máquina e executar o comando "rails server" dentro da pasta code-hub dentro deste git para que o servidor da aplicação inicialize.

* Utilização:
  Para utilizar a aplicação basta apenas acessar o site "localhost:3000" para o uso a aplicação em domínio local.
  Ao criar um usuário na tela inicial de login já é possível ver a tela de gerenciamento da aplicação.
  
  Existem 3 telas de controle dentro da aplicação nesta versão inicial:
    - Your Projects;
    - Your Programmers;
    - Your Contracts;
  
  Nestas telas é capaz criar e gerenciar apenas os projetos, entradas de programadores e contratos criados pelo usuário atual.
  Nas versões posteriores do projeto pretendemos implementar a visualização dos projetos com contratos abertos e a gerencia de programadores ativos em projetos do usuário.
  
* Estrutura implementada:
  - O banco de dados deste projeto está implementado em SQLite, todas as definições de campos e relações das entidades criadas podem ser encontrados na pasta code-hub/db/schema.rb.
  - Foram implementadas 4 entidades no projeto:
    - Users: Define um usuário cadastrado no sistema da aplicação.
    - Programmers: Define um programador criado por um usuário. Programadores podem ter contratos de oferecimento de serviços a determinados projetos dentro do sistema.
    - Projects: Define um projeto criado por um usuário do sistema, projetos tem as propriedades necessárias para um projeto de programação ser lançado no sistema. Os projetos podem ter contratos que relacionam programadores do sistema com contratos de serviço para o projeto dono do contrato.
    - Contracts: Define um contrato criado por usuários no sistemas. Os contratos tem relação com projetos e programadores, definindo a relação contratual dos serviços oferecidos a um determinado projeto por um programador.
  
