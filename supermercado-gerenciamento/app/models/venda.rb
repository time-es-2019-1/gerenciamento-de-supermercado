class Venda < ApplicationRecord
  belongs_to :cliente
  belongs_to :funcionario
  has_many :item_vendas

  validates :cliente_id, :funcionario_id, presence:{message: "Deve ser escolhido"}
  validates :valor_total, :valor_pago, presence:{message: "Não deve ser vazio"},
            numericality: {message: "Deve ser número"}
end