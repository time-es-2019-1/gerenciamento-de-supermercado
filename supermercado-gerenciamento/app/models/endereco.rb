class Endereco < ApplicationRecord
  def to_s
    self.cidade + ", " + self.bairro + ", " + self.rua + ", " + self.cep + ", " + self.numero.to_s
  end

  validates :bairro, :rua, :cep, :cidade, :numero, presence:{message: "Não pode ser vazio"}
  validates :numero, numericality: {only_integer: true, message: "Deve ser apenas números"}
end
