Feature: Detalhe de produto com login

	Como um cliente autenticado
	Desejo acessar a tela de detalhe de um produto na Americanas.com.br
	Para que possa comprar um produto

	Background: 
		Given que esteja na tela de detalhe de produto
        And estou com o login efeituado com sucesso

    Scenario: Acessar produto salvo
        And foco no icone de coração no header
        And não salvei um produto
        When clico em 'Acessar meus favoritos'
        Then redireciona para a tela itens salvos
        And exibe a mensagem 'Você não possui produtos salvos'

    Scenario: Acessar carrinho de compra
        When clico no icone de cesta no header
        And não adicionei no carrinho nenhum produto
        Then lista os produtos adicionado no carrinho
        And exibe a mensagem 'sua cesta está vazia'

    Scenario: Favoritar produto
        When clico em 'favoritar'
        Then preenche o icone de coração na cor vermelho

    Scenario: Avalizar produto
        When clico em 'avaliar produto'
        Then redireciona para a tela de 'avalie o produto'
        When informo a estrela desejada
        Then exibe dois campos para 'escreva sua avaliação'
        When informo o titulo da avaliacao
        And uma descrição da minha avaliacao
        When clico em 'enviar avaliação' com no minimo 10 caracteres
        Then exibe a mensagem 'sua avaliação foi enviada :)'
        And aparece a opção 'ir para a página inicial'

    Scenario: Avaliar avaliações
        When clico no icone de joia na secao de avaliações
        Then preenche o icone joinha na cor vermelha e contabiliza em +1 avaliação

    Scenario: Perguntar uma duvida
        When clico em 'escrever perguntar'
        Then redireciona para a tela de 'tá com alguma dúvida sobre o produto?'
        When informo a minha pergunta no campo 'Digite aqui a sua pergunta.' com até 150 caracteres
        And seleciono 'aceito os termos e condições.'
        And clico em 'enviar pergunta'
        Then exibe a mensagem 'Agradecemos a sua pergunta!'

    Scenario: Avaliar resposta
        When clico no icone de joia na secao de duvidas
        Then preenche o icone joinha na cor vermelha e contabiliza em +1 avaliação

    Scenario: Denunciar produto
        When clico em 'denunciar anúncio'
        Then redireciona para a tela 'este espaço é exclusivo pra denunciar o anúncio.'
        When categorizo a minha denuncia nas opcoes listadas
        And informo mais detalhes no campo de descrição
        When clico em 'denunciar'
        Then exibe a mensagem 'Pronto, agora é só deixar com a gente!'

    Scenario: Comprar produto
        When clico em 'comprar'
        Then redireciona para a tela de garantia
        When escolho a garantia desejada
        And clico em 'ir para cesta'
        Then redireciona para a tela 'minha cesta'
        When clico em 'continuar'
        Then redireciona para a tela 'pagamento'
        When informo o endereço de entrega
        And seleciono a opção de frete
        When informo os dados de pagamento
        And clico em 'fechar pedido'
        Then redireciona para a tela 'obrigada' e exibe a mensagem 'pedido concluído :)'