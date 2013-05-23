class RegistroController < ApplicationController
  def index
  	if request.post?
  		@user = User.new(params[:user])
  		if @user.save
  			flash[:notice] = "El usuario se ah creado correctamente"
  			redirect_to home_url

		end
 	 end
	end
	def login
		if request.post?
			p_user = User.new(params[:user])
			user = User.find_by_nombre_and_password(p_user.nombre, p_user.password)
			if user
				session[:user_id] = user.id
				flash[:notice] = "se ha identificado correctamente"
				redirect_to admin_url
			else
				flash[:notice] = "usuario no valido"
				redirect_to login_url
			end

	end
end
end
