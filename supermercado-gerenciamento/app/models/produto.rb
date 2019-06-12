class Produto < ApplicationRecord
  def to_s
    self.categoria + " " + self.marca + "\n" + self.descricao
  end

  validates :marca, :categoria, :descricao, :preco_venda, :preco_compra, :quantidade, presence: {message: "Não pode estar vazio"}
  validates :preco_venda, :preco_compra, numericality: {message: "Deve ser um número"}
  validates :quantidade, numericality: {only_integer: true, greater_than: 0, message: "Deve ser um inteiro"}
end
