class Paciente < ActiveRecord::Base
  attr_accessible :ultima_consulta, :user_id, :user_attributes, :user
  belongs_to :user

def calcular_idade(data_nascimento)
  data_atual = Time.now.utc.to_date
  data_atual.year - data_nascimento.year - ((data_atual.month > data_nascimento.month || (data_atual.month == data_nascimento.month && data_atual.day >= data_nascimento.day)) ? 0 : 1)
end
end
