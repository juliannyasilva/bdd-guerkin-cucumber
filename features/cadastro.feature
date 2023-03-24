Feature: login

	Como um cliente final
	Desejo realizar o cadastro no site da Americanas.com.br
	Para que possa comprar um produto

	Background: 
		Given que esteja na tela de cadastro do site da americanas

    @negativo
    Scenario: Não informar todos os dados obrigatórios
        When não informo nenhum dado
        And clico em 'criar seu cadastro'
        Then exibe o alerta no campo nome 'por favor, informe o nome e o sobrenome.'
    
    @negativo
    Scenario: Não informar o nome completo
        When informo todos os dados menos o nome completo
        And clico em 'criar seu cadastro'
        Then no campo 'nome completo' exibe o alerta 'por favor, informe o nome e o sobrenome.'

    @negativo
    Scenario: Informar parte do nome completo
        When informo somente parte do nome
        And clico em 'criar seu cadastro'
        Then no campo 'nome completo' exibe o alerta 'nome deve ser completo.'

    @negativo
    Scenario: Não informar o genero
        When informo todos os dados menos o gênero
        And clico em 'criar seu cadastro'
        Then no campo 'gênero' exibe o alerta 'é necessário informar o gênero.'

    @negativo
    Scenario: Não informar data de nascimento
        When informo todos os dados menos a data de nascimento
        And clico em 'criar seu cadastro'
        Then no campo 'data de nascimento' exibe o alerta 'é necessário informar a data de nascimento.'

    @negativo
    Scenario: Informar data de nascimento inválida
        When informo no campo 'data de nascimento' o valor '1207'
        And clico em 'criar seu cadastro'
        Then exibe o alerta no campo data de nascimento 'data de nascimento inválida.'

    @negativo
    Scenario: Não informar CPF
        When informo todos os dados menos o CPF
        And clico em 'criar seu cadastro'
        Then no campo 'CPF' exibe o alerta 'é necessário informar um CPF.'

    @negativo
    Scenario: Informar parte do CPF
        When informo no campo 'CPF' o valor '12322'
        And clico em 'criar seu cadastro'
        Then exibe o alerta no campo CPF 'o CPF precisa ter 11 dígitos, por exemplo: 123.456.789-10'

    @negativo
    Scenario: Não informar telefone
        When informo todos os dados menos o telefone
        And clico em 'criar seu cadastro'
        Then no campo 'telefone' exibe o alerta 'é necessário informar o número do telefone principal.'

    @negativo
    Scenario: Informar parte do telefone
        When informo no campo 'telefone' o valor '12322'
        And clico em 'criar seu cadastro'
        Then exibe o alerta no campo telefone 'número do telefone principal incompleto.'

    @negativo
    Scenario: Informar telefone inválido
        When informo no campo 'telefone' o valor '(65) 88544665'
        And clico em 'criar seu cadastro'
        Then exibe o alerta no campo data de nascimento 'data de nascimento inválida.'

    @negativo
    Scenario: Não informar e-mail
        When informo todos os dados menos o e-mail
        And clico em 'criar seu cadastro'
        Then no campo 'e-mail' exibe o alerta 'é necessário informar um e-mail.'

    @negativo
    Scenario: Informar parte do e-mail
        When informo no campo 'e-mail' o valor 'ju@ju'
        And clico em 'criar seu cadastro'
        Then exibe o alerta no campo e-mail 'email incompleto'

    @negativo
    Scenario: Não informar senha
        When informo todos os dados menos o senha
        And clico em 'criar seu cadastro'
        Then no campo 'senha' exibe o alerta 'senha precisa ter entre 6 a 20 caracteres.'

    @negativo
    Scenario: Informar CPF inválido
        When informo no campo 'CPF' o valor '991.632.241-44'
        And clico em 'criar seu cadastro'
        Then exibe o alerta no campo CPF 'CPF inválido.'

    @negativo
    Scenario: Informar e-mail inválido
        When informo no campo 'e-mail' o valor 'ju@ju.co'
        And clico em 'criar seu cadastro'
        Then exibe o alerta no campo e-mail 'o email fornecido é inválido.'

    @negativo
    Scenario: Informar senha inválida
        When informo no campo 'senha' o valor '111111'
        And clico em 'criar seu cadastro'
        Then exibe o alerta no campo senha 'senha inválida.'

    @positivo
    Scenario: Cadastrar usuário no sistema
        When informo valores nos campos 'nome completo', 'gênero', 'data de nascimento', 'CPF', 'telefone', 'e-mail' e 'senha'
        And clico em 'criar seu cadastro'
        Then exibe a mensagem 'cadastro efeutado com sucesso'

    Scenario: Visualizar politica de privacidade
        When clico em 'política de privacidade'
        Then redireciona para a tela de 'politica de privacidade'

    Scenario: Ir para tela de login
        When clico em 'entrar'
        Then redireciona para a tela de 'login do cliente'