class Funcionario < ApplicationRecord
  has_many :clientes
  #Validacoes
  validates :nome,:nomeRua ,:nomeCidade,:bairro, presence: { message: "nao pode ser em branco ou conter acentuacao"},
            length: { in: 4..130, too_short: " deve ter pelo menos 4 caracteres",
                      too_long: " deve ter no maximo 130 caracteres"},
            format: { with: /\A[a-zA-Z\s]+\z/, message: "nao pode conter caracteres especiais,acentuações ou numeros" }


  validates :cpf, presence: { message: "nao pode ser em branco"},
            length: { is:11, message:"deve ter 11 digitos"},
            numericality: { only_integer:true,message:"deve apenas numeros" },
            uniqueness:true


  validates :numTelefone, presence: { message: "nao pode ser em branco"},
            length: { is:11, message:"deve ter 11 digitos"},
            numericality: { only_integer:true,message:"deve apenas numeros" }

  validates :cargo, presence: { message: "É necessario escolher"}
  validates :numResidencia, presence: { message: "nao pode ser em branco"},
            numericality: { only_integer: true ,message:"deve apenas numeros"}


end
