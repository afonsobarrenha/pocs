# Projeto SpringBoot
Projeto Maven com Spring Boot. Será base para as POCs de Spring, e também nosso projeto Back-end.

## BD
Utiliza um container MySql como banco de dados.

Estou usando a propriedade ```spring.datasource.initialize=true``` para inicializar o banco de dados, através dos arquivos ```schema.sql``` e ```data.sql```. Fantástico. Essa configuração é desativada no momento do build da Imagem Docker do app-container, para evitar que a base de dados **statefull**, de Produção, seja apagada na entrega de uma nova versão da aplicação.

Por brevidade e segurança, estou criando as Entities pelo Eclipse. Foi acrescentado então o Facet JPA ao projeto.

## Desenvolvimento
Muito recomendado é a utilização do spring-boot-devtools e do LiveReload para uso no Desenvolvimento, reinicializando o contexto Spring e fazendo a atualização do browser a cada mudança salva na aplicação. Facilita muito o Desenvolvimento.

## Docker
Foi criado o Dockerfile na pasta-raiz do projeto, contendo as instruções para a criação de sua Imagem Docker. Esse arquivo não foi transferido para a pasta **Deployments** pois acredito que deve estar em mãos de todos os desenvolvedores, diferente do conteúdo dessa pasta, que pode ficar em um repositório separado, e mantido pelos membros especializados em DevOps do time.

## Testes
Foram criados Testes Unitários para o projeto, seguindo as ferramentas Mockito, Selenium e Cucumber/Gherkin.
- @RunWith(SpringRunner.class)
- @RunWith(Cucumber.class)
- @SpringBootTest
- @SpringBootTest(webEnvironment = WebEnvironment.RANDOM_PORT)
- @AutoConfigureMockMvc