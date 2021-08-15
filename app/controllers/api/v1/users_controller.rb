module Api
  module V1
      class UsersController < ApplicationController
        def index
          @users = Post.order('created_at DESC')
     
          render json: @users
        end  
      end
  end
end
