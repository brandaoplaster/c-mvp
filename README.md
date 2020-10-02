# Helpe Me

## Funcionalidades
- Buscar de projetos por título
- CRUD de projetos
- Listagem dos projetos
- Apoio a projetos
- Listagem de apoiadores em um projeto
- Autenticação

## Requisitos

> Você só precisa ter o ** docker ** e o ** docker-compose ** instalados em sua máquina.


## Começando
Para colocar o aplicativo em execução, execute os seguintes comandos:

- Criando container
```
docker-compose build
```

- Instalando as gems
```
docker-compose run --rm webiste bundle install
```

- criando banco de dados
```
docker-compose run --rm website exec rails db:create
```

- gerando as migrate
```
docker-compose run --rm website rails db:migrate
```

- Subindo o servidor
```  
docker-compose up
```

- Acesse a url pelo navegador
```  
http://127.0.0.1:3000
```

## Stack
 - Ruby on Rails
 - Postgres
 - Docker
 - Docker compose

## Authors

- [brandaoplaster](https://github.com/brandaoplaster)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
