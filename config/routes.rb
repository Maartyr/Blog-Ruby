Rails.application.routes.draw do
  root "articles#index"

  #pega os artigos e mostra na view
  get "/articles", to: "articles#index"
  #pega o artigo pelo parâmetro ID e mostra na view
  get "/articles/:id", to: "articles#index"


end
