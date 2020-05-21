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

9. `git add -A`
10. `git commit -m "message"`
11. `git push`
12. `git push heroku`
13. `heroku restart`
14. `heroku pg:reset DATABASE`
15. `heroku run rake db:migrate`
16. `heroku run rails db:seed`

17. `site: https://vast-meadow-91148.herokuapp.com/`
