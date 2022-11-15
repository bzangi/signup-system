

class User < ApplicationRecord
  require_dependency '../validators/cpf_validator.rb'
  has_secure_password

  validates :name, presence: true

  validates :email, format: { with: /\S+@\S+/ },
            uniqueness: { case_sensitive: false }

  validates :password, length: { minimum: 8, allow_blank: true }

  validates :username, presence: true,
            format: { with: /\A[A-Z0-9]+\z/i },
            uniqueness: { case_sensitive: false }

  validates :estado, length: { is: 2 }
  validates :cpf, cpf: { message: 'CPF inválido' }
end
