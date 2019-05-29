class Cliente < ApplicationRecord
  belongs_to :funcionario

  #Validacoes
  validates :nome,:nomeRua ,:nomeCidade,:bairro, presence: { message: "nao pode ser em branco ou conter acentuacao"},
            length: { in: 4..130, too_short: " deve ter pelo menos 4 caracteres",
                      too_long: " deve ter no maximo 130 caracteres"},
            format: { with: /\A[a-zA-Z\s]+\z/, message: "nao pode conter caracteres especiais ou numeros" }

  validates :cpf, presence: { message: "nao pode ser em branco"},
            length: { is:11, message:"deve ter 11 digitos"},
            numericality: { only_integer:true,message:"deve apenas numeros" },
            uniqueness:true


  validates :numTelefone, presence: { message: "nao pode ser em branco"},
            length: { is:11, message:"deve ter 11 digitos"},
            numericality: { only_integer:true,message:"deve apenas numeros" }

  validates :limiteCredito,:numResidencia, presence: { message: "nao pode ser em branco"},
            numericality: { only_integer: true ,message:"deve apenas numeros"}

  validates :cep, presence: { message: "nao pode ser em branco"},
            length: { is:8, message:"deve ter 8 digitos"},
            numericality: { only_integer:true,message:"deve apenas numeros" }



end
