class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  has_one :paciente
  accepts_nested_attributes_for :paciente
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    attr_accessible :email, :password, :remember_me, :password_confirmation, :paciente_attributes, :nome,
    :grupo, :cpf, :identidade_rg, :sexo, :data_nasc, :estado_civil, :cep, :rua, :bairro, :cidade, :uf, :complemento, :numero, :telefone, :celular
end
