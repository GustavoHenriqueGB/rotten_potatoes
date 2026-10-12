# Step para criar filmes em lote (usado no cenário declarativo)
Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

# Step para verificar se uma string/filme aparece antes de outra no HTML da página
Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  # capybara page.body pega todo o HTML renderizado
  regexp = /#{e1}.*#{e2}/m # /m permite casar quebras de linha
  assert page.body =~ regexp, "Esperava ver '#{e1}' antes de '#{e2}', mas não foi encontrado nessa ordem na página."
end