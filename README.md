# Microservices

Primeiro de tudo, temos que ter em mente, que esse projeto, não segue as melhores práticas da arquitetura microservices, pois todos os serviços da aplicação, não possui um git próprio, dificultando assim a mudança
de código por equipes, também com o problema de o deploy ser feito com TODOS os serviços, e não um deploy por serviço.

Esse projeto, tende a mostrar o funcionamento de um código NodeJs usando microservices, porém, por fins didáticos, não consegui aplicar todo a arquitetura microservices no projeto.

# Como fazer deploy no ECS ?
1- Crie um novo contexto no

---

Serviços AWS utilizados:

- ECS
- ELB
- VPC

Para executar como DEV, rode o comando: <kbd>docker-compose -f docker-compose-dev.yaml build; docker-compose -f docker-compose-dev.yaml up -d</kbd>
Para executar como Oficial, rode o comando: <kbd>docker-compose build; docker-compose up -d</kbd>