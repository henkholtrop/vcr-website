require 'bcrypt'

class User < ActiveRecord::Base
  ROLES = %i[admin author teammanager]
  has_secure_password validations: false

  def roles=(roles)
    roles = [*roles].map { |r| r.to_sym }
    self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.inject(0, :+)
  end

  def roles
    ROLES.reject do |r|
      ((roles_mask.to_i || 0) & 2**ROLES.index(r)).zero?
    end
  end

  def has_role?(role)
    roles.include?(role)
  end

# users.password_hash in the database is a :string
  include BCrypt

  before_validation :downcase_email

  validates :name,
            length: {
              minimum: 2,
              maximum: 35,
              message: '* Je naam moet tussen de 2 en 35 karakters lang zijn.'
            }

  validates :email,
            uniqueness: {
              message: '* Dit e-mailadres is al in gebruik.'
            },
            format: {
              with: /[a-zA-Z0-9._%-]+@(?:[a-zA-Z0-9-]+\.)+(com|net|org|info|biz|me|edu|gov|nl|se)/,
              message: 'Voer een geldig e-mailadres in.'
            }

  validates :password,
            presence: false,
            allow_blank: false,
            length: {
              minimum: 5,
              message: '* Het wachtwoord moet minimaal 5 karakters zijn.'
            },
            confirmation: {
              message: '* De wachtwoorden komen niet overeen.'
            },
            if: :password

  def downcase_email
    self.email = email.downcase if email.present?
  end

  def has_role?(role)
    roles.include?(role)
  end
end
