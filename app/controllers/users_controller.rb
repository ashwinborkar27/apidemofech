class UsersController < ApplicationController
    
     
    require 'rest-client'

    # def index
    #   #@users = User.all
    # end

    def new
        @user = User.new
    end

    #  def show
    #      user = User.find(params[:id])
    #     render json: user
    # end


    # POST /register
    def create
        # @user = User.new
        #raise @user.inspect
        #if @user.save
        #raise params.inspect
        #url = 'http://localhost:3000/api/auth/sign_in'
        response = RestClient::Request.execute(method: :post, url: url, payload: '{"email": "", "password": " "}', headers: {"Content-Type" => "application/json"})
        #response = RestClient::Request.execute(method: :post, url: url, payload: {email: "email", password: "password"}, headers: {"Content-Type" => "application/json"})

        #response = RestClient.post(url, headers:{"Content-Type" => "text" "email"::email})
        #render json: response
        response = { message: 'User created successfully'}
        render json: response, status: :created 
        #else
            #render json: @user.errors, status: :bad
        #end 
    end

 
    def edit

    end

  #   def destroy
  #   @user = User.find(params[:id])
  #   @user.destroy
  #   redirect_to @user
  # end


    private
    def user_params
      #params.require(:user).permit(:email, :password, :password_digest)
    end
end



        