### CHEATSHEET

1. `docker-compose run web rails new . --force --no-deps --database=postgresql`
2. `docker-compose build`
3. `config/database.yml`

```yml
default: &default
  adapter: postgresql
  encoding: unicode
  host: db
  username: alex
  password:
  pool: 5

development:
  <<: *default
  database: myapp_development


test:
  <<: *default
  database: myapp_test
```

4. `docker-compose up`
5. `docker-compose run --rm web bash`
6. `docker-compose run web rake db:create`
7. hit `http://localhost:3000`
8. `docker-compose down`


`Heroku`
9. `git add -A`
10. `git push`
11. `git push heroku master`
12. `heroku run rake db:migrate `
13. `site: https://sheltered-oasis-01857.herokuapp.com/`
