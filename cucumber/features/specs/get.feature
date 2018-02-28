#language: pt

Funcionalidade: Usando o verbo GET

Eu, como estudante da camada de serviços
Desejo aprender como automatizar o verbo GET
Para que possa futuramente ser um QA melhor.

@executa_get_positivo
Cenario: Automatizando GET com sucesso

  Dado que eu faça um GET na api
  Entao o retorno da requisicao sera 200

@executa_get_negativo
Cenario: Automatizando GET sem sucesso

  Dado que eu faça um GET em uma api inexistente
  Entao o retorno da requisicao sera 404

@executa_get_pokemon_positivo
Cenario: Consultar um unico pokemon com sucesso

    Dado que eu tenha uma lista de pokemons
    Quando faco a consulta do servico "pokemon/charmeleon"
    Entao o codigo de resposta sera 200
        E o sistema retorna os dados desse pokemon

@executa_get_pokemon_negativo
Cenario: Consultar um pokemon invalido com sucesso

    Dado que eu tenha uma lista de pokemons
    Quando faco a consulta do servico "pokemon/concrete"
    Entao o codigo de resposta sera 404
