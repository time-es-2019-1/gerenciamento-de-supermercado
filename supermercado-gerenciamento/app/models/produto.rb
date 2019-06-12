class Produto < ApplicationRecord
  def to_s
    self.categoria + " " + self.marca + "\n" + self.descricao
  end

  validates :codigo, :marca, :categoria, :descricao, :preco_venda, :preco_compra,  presence: {message: "Não pode estar vazio"}
  validates :preco_venda, :preco_compra, numericality: {message: "Deve ser um número"}
end
