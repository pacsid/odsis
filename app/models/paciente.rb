class Paciente < ActiveRecord::Base
  attr_accessible :ultima_consulta, :user_id, :member_attributes
  belongs_to :user
end
