class Article < ApplicationRecord

  #valida o titulo
  validates :title, presence: true
  #valida o body, tornando ele obrigatório e com no mínimo 10 caracteres
  validates :body, presence: true, length: { minimum: 10 }
end
