class Venda < ApplicationRecord
  belongs_to :cliente
  belongs_to :funcionario
  has_many :item_vendas
end
