require 'bcrypt'

class User < ActiveRecord::Base
  ROLES = %i[admin moderator author banned]
  has_secure_password validations: false

# users.password_hash in the database is a :string
  include BCrypt


  def downcase_email
    self.email = self.email.downcase if self.email.present?
  end

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
end
