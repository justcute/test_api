module Api
  module V1
      class PostsController < ApplicationController
        def index
          @posts = Post.includes(:marks).order('AVG(marks.value DESC').first(params[:top].to_i)
     
          render json: @posts
        end

        def create
          @post = Post.new(post_params)
          if !user_params.empty?
            @post.user_id = User.find_or_create_by(login: user_params[:login]).id
          end
          if @post.save
            render json: @post, status: :created
          else
            render json: @post.errors, status: :unprocessable_entity
          end
        end

        private

        def post_params
          params.require(:post).permit(:title, :description, :ip)
        end

        def user_params
          params.require(:user).permit(:login)
        end
      end
  end
end
