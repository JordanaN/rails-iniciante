class Person < ApplicationRecord
    #validação de atributos
    validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "Accepert only letters"}
end
