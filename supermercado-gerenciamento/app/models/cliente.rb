
class Cliente < Pessoa

  belongs_to :funcionario
  belongs_to :endereco


  #Validates

  validates :limiteCredito, presence: { message: "nao pode ser em branco"},
            numericality: { only_integer: true ,message:"deve apenas numeros"}

#Lembrar de validar a data


end
