class BoardCase
	attr_accessor :token , :id_case 
  
  def initialize (id_case, token)
  	@token = token
  	@id_case = id_case
  end
  
end

#TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
