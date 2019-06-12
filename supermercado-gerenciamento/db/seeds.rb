# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Endereco.create(bairro:"Zona rural", rua:"sitio cafofas", cidade:'capoeiras', cep:'55365', numero:'45')
Produto.create(codigo:'12345', marca:'ouro verde', categoria:'café', descricao:'200g', preco_venda:3.40, preco_compra:2.80)