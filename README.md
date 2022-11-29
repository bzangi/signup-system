# README
- Instale o Ruby 2.7.5
- Instale o Rails 6.1.4.4
- Clone este repositório
- No repositório clonado, execute os seguintes comandos

```
gem install bundler
```
```
bundle install
```
```
rails server
```
```
rails db:migrate
```
```
rake db:seed
```
```
bundle exec rake webpacker:install
```
- Acesse `localhost:3000`

Caso apresente algum erro, finalize a aplicação com `Ctrl + C` no terminal que ela estiver rodando e inicie novamente com `rails server`

- Em `localhost:3000` pode ser encontrado a listagem de usuários, que só pode ser acessada caso o usuário esteja logado
- Em `http://localhost:3000/signup` pode ser feito o registro do usuário no sistema (o usuário é logado no momento do registro)
- Em `http://localhost:3000/signin` pode ser feito o login de um usuário já registrado no sistema. Após o login, você será redirecionado para o seu perfil.
- Clicando em `Sign out` é possível deslogar da conta.
- O usuário só pode ser registrado com um cpf válido, utilize um [gerador de cpf](https://www.geradordecpf.org/) para fins de teste
