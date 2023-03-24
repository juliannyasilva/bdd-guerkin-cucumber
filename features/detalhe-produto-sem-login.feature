Feature: Detalhe de produto sem login

	Como um cliente final
	Desejo acessar a tela de detalhe de um produto na Americanas.com.br
	Para que possa usufruir dos recursos do sistema.

	Background: 
		Given que esteja na tela de detalhe de produto
        And não realizei login

	Scenario: Fechar mensagem de cookies
		When clico no botão 'continuar e fechar'
		Then o pop-up de cookies é fechado

    Scenario: Visualizar politica de privacidade 
        When clico em 'Política de Privacidade'
        Then abre uma nova aba com descrição da politica de privacidade
    
    Scenario: Acessar tela inicial
        When clico na logo da americanas
        Then redireciona para a tela inicial 'https://www.americanas.com.br/'

    Scenario: Buscar produto
        And clico no campo de busca 'busque aqui seu produto'
        When informo a descrição do produto
        And clico no icone de busca
        Then redireciona para a tela de resultados da busca

    Scenario: Fazer login
        And foco em 'olá, faça seu login'
        When clico em 'entrar'
        Then redireciona para a tela de login

    Scenario: Acessar marketplace
        When clico no icone de loja no header
        Then redireciona para a tela de lojas maericadas em todo Brasil

    Scenario: Acessar produto salvo
        And foco no icone de coração no header
        When clico em 'Acessar meus favoritos'
        Then redireciona para a tela de login

    Scenario: Acessar carrinho de compra
        And foco no icone de cesta no header
        When lista os produtos adicionado no carrinho

    Scenario: Fazer cadastro
        And foco em 'cadastre-se'
        When clico em 'cadastrar'
        Then redireciona para a tela de cadastro

    Scenario: Traduzir em libras
        And clico em 'tradutor para Libras'
        Then Abre o botão flutuante de libras
        When clico no icone de libras
        Then exibe o tradutor
        
    Scenario: Acessar menu
        When quando foco em 'todos os departamentos'
        Then mostra todos os departamentos da loja

    Scenario: Favoritar produto
        When clico em 'favoritar'
        Then redireciona para a tela de login

    Scenario: Compartilhar produto
        When clico em 'compartilhar'
        And seleciono uma das redes de compartilhamento
        Then abre uma nova janela para a rede social escolhida

    Scenario: Visualizar forma de pagamento
        When clico em 'mais forma de pagamento'
        Then abre um pop-up com as opões e valores de pagamento

    Scenario: Visualizar produto similar
        When clico em 'outras ofertas deste mesmo produto'
        Then redireciona para a tela de mais ofertas deste produto

    Scenario: Visualizar vendedor
        When clico em 'Este produto é vendido por <vendedor>'
        Then redireciona para a tela do vendedor

    Scenario: Informar CEP
        When clico em 'informe seu CEP'
        Then abre um pop-up para informar o CEP

    Scenario: Informar CEP
        And clico em 'Digite seu CEP'
        And informo meu CEP
        When clico em 'ok'
        Then calcular o valor do frete e demonstra o mesmo e a previsão de entrega

    Scenario: Comprar produto
        When clico em 'comprar'
        Then redireciona para a tela de garantia

    Scenario: Visualizar politica de troca e devolucao
        When clico em 'política de troca e devolução'
        Then abre uma nova aba com a tela de trocas e devoluções

    Scenario: Visualizar ranking de produtos
        When visualizo a seção 'quem viu este produto viu também' e 'produtos mais vistos'
        Then posso clicar em um produto e ir para o detalhe do mesmo

    Scenario: Visualizar ranking de produto do departamento
        When visualizo a seção 'os queridinhos da categoria'
        Then posso clicar em um produto e ir para o detalhe do mesmo

    Scenario: Visualizar avaliações do produto
        When visualizo a seção 'avaliações'
        Then posso ver as avaliações mais relevantes que outros clientes fizeram sobre o produto
        When clico em 'ver mais comentários'
        Then carrega mais itens na lista de avaliações
        
    Scenario: Avalizar produto
        When clico em 'avaliar produto'
        Then redireciona para a tela de login

    Scenario: Filtrar avaliações
        When clico em '5 estrelas'
        Then exibe a lista de avaliações que deram cinco entrelas

    Scenario: Ordenar avaliações
        When clico em 'ordenar'
        Then exibe lista de <opcoes> de ordenações
        
        Examples:
		| opcoes |
		| "mais relevantes" |
		| "mais recentes" |
		| "mais antigas" |
        | "mais positivas" |
        | "mais negativas" |

    Scenario: Avaliar avaliações
        When clico no icone de joia na secao de avaliações
        Then redireciona para a tela de login

    Scenario: Visualizar duvidas do produto
        When visualizo a seção 'dúvidas sobre o produto'
        Then posso ver as duvidas mais uteis que foi respondida sobre o produto
        When clico em 'ver mais perguntas'
        Then carrega mais itens na lista de dúvidas

    Scenario: Perguntar uma duvida
        When clico em 'escrever perguntar'
        Then redireciona para a tela de login

    Scenario: Ordenar respostas
        When clico em 'ordenar por respostas mais úteis'
        Then exibe a lista de <opcoes> de ordenação

        Examples:
		| opcoes |
		| "ordenar por respostas mais úteis" |
		| "ordenar por mais recentes" |
		| "ordenar por mais antigos" |

    Scenario: Buscar pergunta
        When clico no campo de busca de pergunta
        And informo um texto com a duvida
        When clico no icone de Buscar
        Then lista resultado de perguntas que possui parte do texto que informei

    Scenario: Avaliar resposta
        When clico no icone de joia na secao de duvidas
        Then redireciona para a tela de login

    Scenario: Denunciar produto
        When clico em 'denunciar anúncio'
        Then redireciona para a tela de login

    Scenario: Visualizar ficha tecnica
        When clico em 'ficha técnica'
        Then abre a lista com a especificação do produto

    Scenario: Visualizar informações do produto
        When clico em 'mais informações do produto'
        Then direciona a tela para a secao informações do produto