module Api
  module V1
    class PostsController < BaseController
      def index
        @posts = Post.all
        render json: @posts.to_json(include: :author)
      end

      def show
        @post = Post.find(params[:id])
        render json: @post.to_json(include: :author)
      end

      def create
        post = Post.new(post_params)
        if post.save
          render json: {
            status: 'SUCCESS',
            message: 'Post Created',
            data: post
          }, status: :ok
        else
          render json: {
            status: 'ERROR',
            message: 'Post not saved',
            data: post.errors
          }, status: :unprocessable_entity
        end
      end

      def destroy
        post = Post.find(params[:id])
        post.destroy
        render json: {
          status: 'SUCCESS',
          message: 'Deleted post',
          data: post
        }, status: :ok
      end

      def update
        post = Post.find(params[:id])
        if post.update_attributes(post_params)
          render json: {
            status: 'SUCCESS',
            message: 'Updated post',
            data: post
          }, status: :ok
        else
          render json: {
            status: 'ERROR',
            message: 'Post not updated',
            data: post.errors
          }, status: :unprocessable_entity
        end
      end

      private

      def post_params
        params.permit(:title, :body, :tags, :image_url, :author_id)
      end
    end
  end
end
