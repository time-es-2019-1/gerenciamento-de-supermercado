class Funcionario < ApplicationRecord
  #Validacoes
  validates :nome, presence: { message: "Nome em branco"},
            length: { in: 4..130, too_short: "Nome deve ter pelo menos 4 caracteres",
                      too_long: "Nome deve ter no maximo 130 caracteres"},
            format: { with: /\A[a-zA-Z\s]+\z/, message: "Nome nao pode conter caracteres especiais ou numeros" }
  validates :cpf, presence: { message: "Cpf em branco"},
            length: { is:11, message:"Cpf tem que ter 11 digitos"},
            numericality: { only_integer: true },
            uniqueness: true
  #format: { with: 0..9, message: "CPF nao pode conter caracteres ,apenas numeros" }

  validates :numTelefone, presence: { message: "Número de telefone em branco"},
            length: { is:11, message:"nome deve ter 11 digitos"},
            numericality: { only_integer: true }
  #format: { with: 0..9, message: "Número de telefone nao pode conter caracteres, apenas numeros" }

  validates :cargo, presence: { message: "É necessario escolher um cargo"}


  validates :dataNascimento, presence: { message: "Data de nascimento em branco"}
  validates :dataPagamento, presence: { message: "Data de pagamento em branco"}
  validates :dataAdimissao, presence: { message: "Data de Adimissão em branco"}


end
