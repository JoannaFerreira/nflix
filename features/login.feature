# language: pt

Funcionalidade: Login
    Para que eu possa gerenciar os filmes do catágolo NinjaFlix
    Sendo um usuário previamente cadastrado
    Posso acessar o sistema com o meu email e senha

# BDD(desenvolvimento guiado por comportamento)
@login_happy 
Cenario: Acesso
    Quando eu faço o login com "tony@stark.com" e "pwd123"
    Então devo ser autenticado
    E devo ver "Tony Stark" na área logada

Esquema do Cenario: Login sem sucesso
    Quando eu faço o login com <email> e <senha>
    Então não devo ser autenticado
    E devo ver a mensagem de alerta <texto>

    @login_habless
    Exemplos:
        | email             | senha     | texto                          |
        | "tony@stark.com"  | "abc123"  | "Usuário e/ou senha inválidos" |
        | "404@yahoo.com"   | "abc123"  | "Usuário e/ou senha inválidos" |
        | ""                | "abcxpto" | "Opps. Cadê o email?"           |
        | "teste@gmail.com" | ""        | "Opps. Cadê a senha?"           |


@login_habless
Cenario: Senha inválida
    Quando eu faço o login com "tony@stark.com" e "abc123"
    Então não devo ser autenticado
    E devo ver a mensagem de alerta "Usuário e/ou senha inválidos"

@login_habless
Cenario: Usuário não existe
    Quando eu faço o login com "404@yahoo.com" e "abc123"
    Então não devo ser autenticado
    E devo ver a mensagem de alerta "Usuário e/ou senha inválidos"

@login_habless
Cenario: Email não informado
    Quando eu faço o login com "" e "abcxpto"
    Então não devo ser autenticado
    E devo ver a mensagem de alerta "Opps. Cadê o email?"

@login_habless
Cenario: Senha não informada
    Quando eu faço o login com "teste@gmail.com" e ""
    Então não devo ser autenticado
    E devo ver a mensagem de alerta "Opps. Cadê a senha?"



