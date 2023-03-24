Feature: login

	Como um cliente final
	Desejo realizar o login no site da Americanas.com.br
	Para que possa comprar um produto

	Background: 
		Given que esteja na tela de login do site da americanas

    @negativo
    Scenario: Não informar e-mail e senha
        When não informo e-mail e senha
        And clico em 'continuar'
        Then exibe o alerta no campo de e-mail 'É necessário informar um e-mail.'

    @negativo
    Scenario: Informar e-mail inválido
        When informo o e-mail 'ju@ju'
        And clico no campo senha
        Then exibe o alerta 'Email incompleto'

    @negativo
    Scenario: Informar senha inválida
        When informo e-mail válido e senha inválida
        And clico em 'continuar'
        Then exibe o alerta 'E-mail ou senha incorretos'

    @positivo
	Scenario: Esquecer senha
        When clico em 'esqueceu?'
        Then exibe um pop-up para trocar a senha
        When informo o e-mail cadastrado
        And clico em 'Enviar senha'
        Then exibe a mensagem que o e-mail de recuperação foi enviado

    @positivo
    Scenario: Alterar senha
        When informo uma nova senha
        And confirmo o valor dessa nova senha
        When clico em 'salvar'
        Then exibe a mensagem que 'Sua senha foi alterada com sucesso'


    @positivo
	Scenario: Fazer login
        When informo um e-mail válido e senha válida
        And clico em 'continuar'
        Then o login é realizado com sucesso e exibe a mensagem 'olá, Julianny'