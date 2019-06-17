class Funcionario < Pessoa
  has_many :clientes
  #Validacoes


  validates :cargo, presence: { message: "É necessario escolher"}

  validates :salario, presence: { message: "nao pode ser em branco"},
            numericality: { only_integer: true ,message:"deve apenas numeros"}#validar para ser nuemros positivos
  #validar datas



end
