class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :type
      t.string :name
      t.string :cpf
      t.string :phoneNumber
      t.string :email
      t.date :birthdayDate

      #employee attributes
      t.string :jobTitle
      t.float :salary
      t.date :admissionDate
      t.date :payday

      #client attributes
      t.float :creditLimit
      t.date :registrationDate

      t.timestamps
    end
  end
end
