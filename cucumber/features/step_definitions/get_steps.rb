# encode: UTF-8

Dado("que eu faça um GET na api") do
    @get_result = HTTParty.get 'https://pokeapi.co/'
end

Entao("o retorno da requisicao sera {int}") do |status_code|
    puts @get_result.code
    expect(@get_result.code).to eq status_code
end

Dado("que eu faça um GET em uma api inexistente") do
    @get_result = HTTParty.get 'https://pokeapi.co/2'
end


## Consulta pokemon
Dado("que eu tenha uma lista de pokemons") do
    @get_result = HTTParty.get 'http://pokeapi.co/api/v2/'
end

Quando("faco a consulta do servico {string}") do |name|
    @get_result = HTTParty.get("http://pokeapi.co/api/v2/#{name}")
end

Entao("o codigo de resposta sera {int}") do |status_code|
    expect(@get_result.code).to eq status_code
end
  
  Entao("o sistema retorna os dados desse pokemon") do
    puts "ID: #{@get_result["id"]}"
    puts "NOME: #{@get_result["name"]}"
end