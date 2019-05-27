class Endereco < ApplicationRecord
  has_many :funcionarios
  has_many :clientes
end
