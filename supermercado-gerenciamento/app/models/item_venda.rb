class ItemVenda < ApplicationRecord
  belongs_to :produto
  belongs_to :venda

  validates :produto_id, :venda_id, presence: {message: "Deve ser escolhido"}
  validates :quantidade, presence: {message: "Não pode ser vazio"},
            numericality: {only_integer: true, greater_than: 0, message: "Deve ser número inteiro"}
end
