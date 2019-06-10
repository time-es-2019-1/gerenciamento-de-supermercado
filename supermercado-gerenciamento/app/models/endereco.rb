class Endereco < ApplicationRecord
  def to_s
    self.cidade + ", " + self.bairro + ", " + self.rua + ", " + self.cep + ", " + self.numero.to_s
  end
end
