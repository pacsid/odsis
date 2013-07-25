class Paciente < ActiveRecord::Base
  attr_accessible :ultima_consulta, :user_id, :user_attributes, :user
  belongs_to :user
end
