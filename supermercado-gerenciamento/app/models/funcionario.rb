class Funcionario < ApplicationRecord
  has_many :clientes
  has_many :vendas
  belongs_to :endereco

  validates :nome, presence: { message: "nao pode ser em branco ou conter acentuacao"},
            length: { in: 4..130, too_short: " deve ter pelo menos 4 caracteres",
                      too_long: " deve ter no maximo 130 caracteres"},
            format: { with: /\A[a-zA-Z\s]+\z/, message: "nao pode conter caracteres especiais,acentuações ou numeros" }
  validates :cpf, presence: { message: "nao pode ser em branco"},
            length: { is:11, message:"deve ter 11 digitos"},
            uniqueness: {message: "Deve ser único"},
            numericality: { only_integer:true,message:"deve ser apenas numeros" }
  validates :numTelefone, presence: { message: "nao pode ser em branco"},
            length: { is:11, message:"deve ter 11 digitos"},
            uniqueness: {message: "Deve ser único"},
            numericality: { only_integer:true,message:"deve ser apenas numeros" }
  validates :salario, presence: {message: "Não pode ser em branco"},
           numericality: {message: "Deve ser decimal"}
  validates :cargo, presence: { message: "É necessário escolher"}
  validates :endereco_id, presence: {message: "É necessário escolher"}
end
